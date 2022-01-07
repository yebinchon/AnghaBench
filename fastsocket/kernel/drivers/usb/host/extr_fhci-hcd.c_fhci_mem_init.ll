; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_mem_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_fhci-hcd.c_fhci_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.fhci_hcd = type { i64, %struct.TYPE_4__*, i32, i32, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.td = type { i32 }
%struct.ed = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@fhci_tasklet = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAX_TDS = common dso_local global i32 0, align 4
@MAX_EDS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fhci_hcd*)* @fhci_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fhci_mem_init(%struct.fhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.td*, align 8
  %6 = alloca %struct.ed*, align 8
  store %struct.fhci_hcd* %0, %struct.fhci_hcd** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 20, i32 %7)
  %9 = bitcast i8* %8 to %struct.TYPE_3__*
  %10 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %10, i32 0, i32 5
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %11, align 8
  %12 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %12, i32 0, i32 5
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %103

17:                                               ; preds = %1
  %18 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %19 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %18, i32 0, i32 5
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %24 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %23, i32 0, i32 5
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %29 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %28, i32 0, i32 5
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %33, i32 0, i32 5
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %39 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %38, i32 0, i32 5
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kzalloc(i32 1, i32 %43)
  %45 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %46 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %48 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %17
  br label %103

52:                                               ; preds = %17
  %53 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %54 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %53, i32 0, i32 3
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %57 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %56, i32 0, i32 2
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %60 = ptrtoint %struct.fhci_hcd* %59 to i64
  store i64 %60, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fhci_tasklet, i32 0, i32 0), align 8
  %61 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %62 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %61, i32 0, i32 1
  store %struct.TYPE_4__* @fhci_tasklet, %struct.TYPE_4__** %62, align 8
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %78, %52
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @MAX_TDS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @kmalloc(i32 4, i32 %68)
  %70 = bitcast i8* %69 to %struct.td*
  store %struct.td* %70, %struct.td** %5, align 8
  %71 = load %struct.td*, %struct.td** %5, align 8
  %72 = icmp ne %struct.td* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  br label %103

74:                                               ; preds = %67
  %75 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %76 = load %struct.td*, %struct.td** %5, align 8
  %77 = call i32 @fhci_recycle_empty_td(%struct.fhci_hcd* %75, %struct.td* %76)
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %63

81:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %97, %81
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @MAX_EDS, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i8* @kmalloc(i32 4, i32 %87)
  %89 = bitcast i8* %88 to %struct.ed*
  store %struct.ed* %89, %struct.ed** %6, align 8
  %90 = load %struct.ed*, %struct.ed** %6, align 8
  %91 = icmp ne %struct.ed* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  br label %103

93:                                               ; preds = %86
  %94 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %95 = load %struct.ed*, %struct.ed** %6, align 8
  %96 = call i32 @fhci_recycle_empty_ed(%struct.fhci_hcd* %94, %struct.ed* %95)
  br label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %82

100:                                              ; preds = %82
  %101 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %102 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  store i32 0, i32* %2, align 4
  br label %108

103:                                              ; preds = %92, %73, %51, %16
  %104 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %105 = call i32 @fhci_mem_free(%struct.fhci_hcd* %104)
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %103, %100
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @fhci_recycle_empty_td(%struct.fhci_hcd*, %struct.td*) #1

declare dso_local i32 @fhci_recycle_empty_ed(%struct.fhci_hcd*, %struct.ed*) #1

declare dso_local i32 @fhci_mem_free(%struct.fhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
