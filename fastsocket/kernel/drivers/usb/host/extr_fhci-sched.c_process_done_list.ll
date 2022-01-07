; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-sched.c_process_done_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-sched.c_process_done_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.urb_priv* }
%struct.urb_priv = type { i64, i64, i64 }
%struct.ed = type { i64 }
%struct.td = type { %struct.ed*, %struct.urb* }
%struct.fhci_hcd = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@URB_DEL = common dso_local global i64 0, align 8
@FHCI_ED_SKIP = common dso_local global i64 0, align 8
@FHCI_ED_OPER = common dso_local global i8* null, align 8
@FHCI_ED_HALTED = common dso_local global i64 0, align 8
@FHCI_ED_URB_DEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @process_done_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_done_list(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.ed*, align 8
  %5 = alloca %struct.td*, align 8
  %6 = alloca %struct.urb_priv*, align 8
  %7 = alloca %struct.fhci_hcd*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.fhci_hcd*
  store %struct.fhci_hcd* %9, %struct.fhci_hcd** %7, align 8
  %10 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %11 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @disable_irq(i32 %14)
  %16 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %17 = call %struct.TYPE_4__* @fhci_to_hcd(%struct.fhci_hcd* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @disable_irq(i32 %19)
  %21 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %22 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %25 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.td* @fhci_remove_td_from_done_list(i32 %26)
  store %struct.td* %27, %struct.td** %5, align 8
  br label %28

28:                                               ; preds = %101, %1
  %29 = load %struct.td*, %struct.td** %5, align 8
  %30 = icmp ne %struct.td* %29, null
  br i1 %30, label %31, label %106

31:                                               ; preds = %28
  %32 = load %struct.td*, %struct.td** %5, align 8
  %33 = getelementptr inbounds %struct.td, %struct.td* %32, i32 0, i32 1
  %34 = load %struct.urb*, %struct.urb** %33, align 8
  store %struct.urb* %34, %struct.urb** %3, align 8
  %35 = load %struct.urb*, %struct.urb** %3, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 0
  %37 = load %struct.urb_priv*, %struct.urb_priv** %36, align 8
  store %struct.urb_priv* %37, %struct.urb_priv** %6, align 8
  %38 = load %struct.td*, %struct.td** %5, align 8
  %39 = getelementptr inbounds %struct.td, %struct.td* %38, i32 0, i32 0
  %40 = load %struct.ed*, %struct.ed** %39, align 8
  store %struct.ed* %40, %struct.ed** %4, align 8
  %41 = load %struct.urb*, %struct.urb** %3, align 8
  %42 = load %struct.td*, %struct.td** %5, align 8
  %43 = call i32 @fhci_done_td(%struct.urb* %41, %struct.td* %42)
  %44 = load %struct.urb_priv*, %struct.urb_priv** %6, align 8
  %45 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.urb_priv*, %struct.urb_priv** %6, align 8
  %49 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.urb_priv*, %struct.urb_priv** %6, align 8
  %52 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %31
  %56 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %57 = load %struct.urb*, %struct.urb** %3, align 8
  %58 = call i32 @fhci_urb_complete_free(%struct.fhci_hcd* %56, %struct.urb* %57)
  br label %101

59:                                               ; preds = %31
  %60 = load %struct.urb_priv*, %struct.urb_priv** %6, align 8
  %61 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @URB_DEL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.ed*, %struct.ed** %4, align 8
  %67 = getelementptr inbounds %struct.ed, %struct.ed* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FHCI_ED_SKIP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %73 = load %struct.ed*, %struct.ed** %4, align 8
  %74 = call i32 @fhci_del_ed_list(%struct.fhci_hcd* %72, %struct.ed* %73)
  %75 = load i8*, i8** @FHCI_ED_OPER, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.ed*, %struct.ed** %4, align 8
  %78 = getelementptr inbounds %struct.ed, %struct.ed* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %100

79:                                               ; preds = %65, %59
  %80 = load %struct.ed*, %struct.ed** %4, align 8
  %81 = getelementptr inbounds %struct.ed, %struct.ed* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @FHCI_ED_HALTED, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = load i64, i64* @URB_DEL, align 8
  %87 = load %struct.urb_priv*, %struct.urb_priv** %6, align 8
  %88 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* @FHCI_ED_URB_DEL, align 8
  %90 = load %struct.ed*, %struct.ed** %4, align 8
  %91 = getelementptr inbounds %struct.ed, %struct.ed* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %93 = load %struct.ed*, %struct.ed** %4, align 8
  %94 = call i32 @fhci_del_ed_list(%struct.fhci_hcd* %92, %struct.ed* %93)
  %95 = load i8*, i8** @FHCI_ED_OPER, align 8
  %96 = ptrtoint i8* %95 to i64
  %97 = load %struct.ed*, %struct.ed** %4, align 8
  %98 = getelementptr inbounds %struct.ed, %struct.ed* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %85, %79
  br label %100

100:                                              ; preds = %99, %71
  br label %101

101:                                              ; preds = %100, %55
  %102 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %103 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.td* @fhci_remove_td_from_done_list(i32 %104)
  store %struct.td* %105, %struct.td** %5, align 8
  br label %28

106:                                              ; preds = %28
  %107 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %108 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %107, i32 0, i32 1
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %111 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @enable_irq(i32 %114)
  %116 = load %struct.fhci_hcd*, %struct.fhci_hcd** %7, align 8
  %117 = call %struct.TYPE_4__* @fhci_to_hcd(%struct.fhci_hcd* %116)
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @enable_irq(i32 %119)
  ret void
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local %struct.TYPE_4__* @fhci_to_hcd(%struct.fhci_hcd*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.td* @fhci_remove_td_from_done_list(i32) #1

declare dso_local i32 @fhci_done_td(%struct.urb*, %struct.td*) #1

declare dso_local i32 @fhci_urb_complete_free(%struct.fhci_hcd*, %struct.urb*) #1

declare dso_local i32 @fhci_del_ed_list(%struct.fhci_hcd*, %struct.ed*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
