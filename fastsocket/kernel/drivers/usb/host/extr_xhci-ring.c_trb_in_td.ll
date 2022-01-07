; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_trb_in_td.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_trb_in_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_segment = type { i64, %union.xhci_trb*, %struct.xhci_segment* }
%union.xhci_trb = type { i32 }

@TRBS_PER_SEGMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xhci_segment* @trb_in_td(%struct.xhci_segment* %0, %union.xhci_trb* %1, %union.xhci_trb* %2, i64 %3) #0 {
  %5 = alloca %struct.xhci_segment*, align 8
  %6 = alloca %struct.xhci_segment*, align 8
  %7 = alloca %union.xhci_trb*, align 8
  %8 = alloca %union.xhci_trb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.xhci_segment*, align 8
  store %struct.xhci_segment* %0, %struct.xhci_segment** %6, align 8
  store %union.xhci_trb* %1, %union.xhci_trb** %7, align 8
  store %union.xhci_trb* %2, %union.xhci_trb** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  %15 = load %union.xhci_trb*, %union.xhci_trb** %7, align 8
  %16 = call i64 @xhci_trb_virt_to_dma(%struct.xhci_segment* %14, %union.xhci_trb* %15)
  store i64 %16, i64* %10, align 8
  %17 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  store %struct.xhci_segment* %17, %struct.xhci_segment** %13, align 8
  br label %18

18:                                               ; preds = %95, %4
  %19 = load i64, i64* %10, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store %struct.xhci_segment* null, %struct.xhci_segment** %5, align 8
  br label %100

22:                                               ; preds = %18
  %23 = load %struct.xhci_segment*, %struct.xhci_segment** %13, align 8
  %24 = load %struct.xhci_segment*, %struct.xhci_segment** %13, align 8
  %25 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %24, i32 0, i32 1
  %26 = load %union.xhci_trb*, %union.xhci_trb** %25, align 8
  %27 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %union.xhci_trb, %union.xhci_trb* %26, i64 %29
  %31 = call i64 @xhci_trb_virt_to_dma(%struct.xhci_segment* %23, %union.xhci_trb* %30)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.xhci_segment*, %struct.xhci_segment** %13, align 8
  %33 = load %union.xhci_trb*, %union.xhci_trb** %8, align 8
  %34 = call i64 @xhci_trb_virt_to_dma(%struct.xhci_segment* %32, %union.xhci_trb* %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %22
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load %struct.xhci_segment*, %struct.xhci_segment** %13, align 8
  store %struct.xhci_segment* %50, %struct.xhci_segment** %5, align 8
  br label %100

51:                                               ; preds = %45, %41
  br label %73

52:                                               ; preds = %37
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp sle i64 %57, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %56, %52
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.xhci_segment*, %struct.xhci_segment** %13, align 8
  %63 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %12, align 8
  %69 = icmp sle i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %56
  %71 = load %struct.xhci_segment*, %struct.xhci_segment** %13, align 8
  store %struct.xhci_segment* %71, %struct.xhci_segment** %5, align 8
  br label %100

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72, %51
  store %struct.xhci_segment* null, %struct.xhci_segment** %5, align 8
  br label %100

74:                                               ; preds = %22
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp sle i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load %struct.xhci_segment*, %struct.xhci_segment** %13, align 8
  store %struct.xhci_segment* %83, %struct.xhci_segment** %5, align 8
  br label %100

84:                                               ; preds = %78, %74
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.xhci_segment*, %struct.xhci_segment** %13, align 8
  %87 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %86, i32 0, i32 2
  %88 = load %struct.xhci_segment*, %struct.xhci_segment** %87, align 8
  store %struct.xhci_segment* %88, %struct.xhci_segment** %13, align 8
  %89 = load %struct.xhci_segment*, %struct.xhci_segment** %13, align 8
  %90 = load %struct.xhci_segment*, %struct.xhci_segment** %13, align 8
  %91 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %90, i32 0, i32 1
  %92 = load %union.xhci_trb*, %union.xhci_trb** %91, align 8
  %93 = getelementptr inbounds %union.xhci_trb, %union.xhci_trb* %92, i64 0
  %94 = call i64 @xhci_trb_virt_to_dma(%struct.xhci_segment* %89, %union.xhci_trb* %93)
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %85
  %96 = load %struct.xhci_segment*, %struct.xhci_segment** %13, align 8
  %97 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  %98 = icmp ne %struct.xhci_segment* %96, %97
  br i1 %98, label %18, label %99

99:                                               ; preds = %95
  store %struct.xhci_segment* null, %struct.xhci_segment** %5, align 8
  br label %100

100:                                              ; preds = %99, %82, %73, %70, %49, %21
  %101 = load %struct.xhci_segment*, %struct.xhci_segment** %5, align 8
  ret %struct.xhci_segment* %101
}

declare dso_local i64 @xhci_trb_virt_to_dma(%struct.xhci_segment*, %union.xhci_trb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
