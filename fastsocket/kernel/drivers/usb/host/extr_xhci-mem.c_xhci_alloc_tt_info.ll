; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_alloc_tt_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_alloc_tt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.xhci_virt_device = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_tt = type { i64 }
%struct.xhci_tt_bw_info = type { i32, %struct.xhci_interval_bw_table, i32, i32 }
%struct.xhci_interval_bw_table = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@XHCI_MAX_INTERVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_alloc_tt_info(%struct.xhci_hcd* %0, %struct.xhci_virt_device* %1, %struct.usb_device* %2, %struct.usb_tt* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca %struct.xhci_virt_device*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usb_tt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xhci_tt_bw_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.xhci_interval_bw_table*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %7, align 8
  store %struct.xhci_virt_device* %1, %struct.xhci_virt_device** %8, align 8
  store %struct.usb_device* %2, %struct.usb_device** %9, align 8
  store %struct.usb_tt* %3, %struct.usb_tt** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.usb_tt*, %struct.usb_tt** %10, align 8
  %18 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 1, i32* %13, align 4
  br label %26

22:                                               ; preds = %5
  %23 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %22, %21
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %90, %26
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %95

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  %33 = call %struct.xhci_tt_bw_info* @kzalloc(i32 24, i32 %32)
  store %struct.xhci_tt_bw_info* %33, %struct.xhci_tt_bw_info** %12, align 8
  %34 = load %struct.xhci_tt_bw_info*, %struct.xhci_tt_bw_info** %12, align 8
  %35 = icmp ne %struct.xhci_tt_bw_info* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %96

37:                                               ; preds = %31
  %38 = load %struct.xhci_tt_bw_info*, %struct.xhci_tt_bw_info** %12, align 8
  %39 = getelementptr inbounds %struct.xhci_tt_bw_info, %struct.xhci_tt_bw_info* %38, i32 0, i32 3
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.xhci_tt_bw_info*, %struct.xhci_tt_bw_info** %12, align 8
  %42 = getelementptr inbounds %struct.xhci_tt_bw_info, %struct.xhci_tt_bw_info* %41, i32 0, i32 3
  %43 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %44 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %47 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @list_add(i32* %42, i32* %52)
  %54 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %55 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.xhci_tt_bw_info*, %struct.xhci_tt_bw_info** %12, align 8
  %60 = getelementptr inbounds %struct.xhci_tt_bw_info, %struct.xhci_tt_bw_info* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.usb_tt*, %struct.usb_tt** %10, align 8
  %62 = getelementptr inbounds %struct.usb_tt, %struct.usb_tt* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %37
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.xhci_tt_bw_info*, %struct.xhci_tt_bw_info** %12, align 8
  %69 = getelementptr inbounds %struct.xhci_tt_bw_info, %struct.xhci_tt_bw_info* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %65, %37
  %71 = load %struct.xhci_tt_bw_info*, %struct.xhci_tt_bw_info** %12, align 8
  %72 = getelementptr inbounds %struct.xhci_tt_bw_info, %struct.xhci_tt_bw_info* %71, i32 0, i32 1
  store %struct.xhci_interval_bw_table* %72, %struct.xhci_interval_bw_table** %16, align 8
  store i32 0, i32* %15, align 4
  br label %73

73:                                               ; preds = %86, %70
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @XHCI_MAX_INTERVAL, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load %struct.xhci_interval_bw_table*, %struct.xhci_interval_bw_table** %16, align 8
  %79 = getelementptr inbounds %struct.xhci_interval_bw_table, %struct.xhci_interval_bw_table* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  br label %73

89:                                               ; preds = %73
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  %93 = load %struct.xhci_tt_bw_info*, %struct.xhci_tt_bw_info** %12, align 8
  %94 = getelementptr inbounds %struct.xhci_tt_bw_info, %struct.xhci_tt_bw_info* %93, i32 1
  store %struct.xhci_tt_bw_info* %94, %struct.xhci_tt_bw_info** %12, align 8
  br label %27

95:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %107

96:                                               ; preds = %36
  %97 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %98 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %99 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %8, align 8
  %100 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @xhci_free_tt_info(%struct.xhci_hcd* %97, %struct.xhci_virt_device* %98, i32 %103)
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %96, %95
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local %struct.xhci_tt_bw_info* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @xhci_free_tt_info(%struct.xhci_hcd*, %struct.xhci_virt_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
