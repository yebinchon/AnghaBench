; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_qh_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_qh_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_qh = type { i32*, i32, i32, %struct.oxu_hcd*, i32 }
%struct.oxu_hcd = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@QHEAD_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"no dummy td\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ehci_qh* (%struct.oxu_hcd*)* @oxu_qh_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ehci_qh* @oxu_qh_alloc(%struct.oxu_hcd* %0) #0 {
  %2 = alloca %struct.ehci_qh*, align 8
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehci_qh*, align 8
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  store %struct.ehci_qh* null, %struct.ehci_qh** %5, align 8
  %6 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %7 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @QHEAD_NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %15 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %27

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %9

27:                                               ; preds = %22, %9
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @QHEAD_NUM, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %80

31:                                               ; preds = %27
  %32 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %33 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = bitcast i32* %39 to %struct.ehci_qh*
  store %struct.ehci_qh* %40, %struct.ehci_qh** %5, align 8
  %41 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %42 = call i32 @memset(%struct.ehci_qh* %41, i32 0, i32 32)
  %43 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %44 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %43, i32 0, i32 4
  %45 = call i32 @kref_init(i32* %44)
  %46 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %47 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %48 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %47, i32 0, i32 3
  store %struct.oxu_hcd* %46, %struct.oxu_hcd** %48, align 8
  %49 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %50 = call i32 @virt_to_phys(%struct.ehci_qh* %49)
  %51 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %52 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %54 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %53, i32 0, i32 1
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %57 = call i32* @ehci_qtd_alloc(%struct.oxu_hcd* %56)
  %58 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %59 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  %61 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %31
  %65 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %66 = call i32 @oxu_dbg(%struct.oxu_hcd* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %68 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 0, i32* %72, align 4
  store %struct.ehci_qh* null, %struct.ehci_qh** %2, align 8
  br label %85

73:                                               ; preds = %31
  %74 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %75 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %73, %27
  %81 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %82 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %81, i32 0, i32 1
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load %struct.ehci_qh*, %struct.ehci_qh** %5, align 8
  store %struct.ehci_qh* %84, %struct.ehci_qh** %2, align 8
  br label %85

85:                                               ; preds = %80, %64
  %86 = load %struct.ehci_qh*, %struct.ehci_qh** %2, align 8
  ret %struct.ehci_qh* %86
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.ehci_qh*, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @virt_to_phys(%struct.ehci_qh*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @ehci_qtd_alloc(%struct.oxu_hcd*) #1

declare dso_local i32 @oxu_dbg(%struct.oxu_hcd*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
