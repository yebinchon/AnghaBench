; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_submit_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_submit_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32 }
%struct.urb = type { i32 }
%struct.uhci_qh = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_PHASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhci_hcd*, %struct.urb*, %struct.uhci_qh*)* @uhci_submit_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_submit_interrupt(%struct.uhci_hcd* %0, %struct.urb* %1, %struct.uhci_qh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhci_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.uhci_qh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store %struct.uhci_qh* %2, %struct.uhci_qh** %7, align 8
  %10 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %11 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %73, label %14

14:                                               ; preds = %3
  store i32 7, i32* %9, align 4
  br label %15

15:                                               ; preds = %27, %14
  %16 = load i32, i32* %9, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = shl i32 1, %19
  %21 = load %struct.urb*, %struct.urb** %6, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %30

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %9, align 4
  br label %15

30:                                               ; preds = %25, %15
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %109

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %65, %36
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 1, %38
  %40 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %41 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @SKEL_INDEX(i32 %42)
  %44 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %45 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %47 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 2
  %50 = load i32, i32* @MAX_PHASE, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %49, %51
  %53 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %54 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %56 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %57 = call i32 @uhci_check_bandwidth(%struct.uhci_hcd* %55, %struct.uhci_qh* %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %37
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %9, align 4
  %64 = icmp sge i32 %63, 0
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i1 [ false, %58 ], [ %64, %61 ]
  br i1 %66, label %37, label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %109

72:                                               ; preds = %67
  br label %85

73:                                               ; preds = %3
  %74 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %75 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.urb*, %struct.urb** %6, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %109

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %72
  %86 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %87 = load %struct.urb*, %struct.urb** %6, align 8
  %88 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %89 = call i32 @uhci_submit_common(%struct.uhci_hcd* %86, %struct.urb* %87, %struct.uhci_qh* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %85
  %93 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %94 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.urb*, %struct.urb** %6, align 8
  %97 = getelementptr inbounds %struct.urb, %struct.urb* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %99 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %92
  %103 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %104 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %105 = call i32 @uhci_reserve_bandwidth(%struct.uhci_hcd* %103, %struct.uhci_qh* %104)
  br label %106

106:                                              ; preds = %102, %92
  br label %107

107:                                              ; preds = %106, %85
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %81, %70, %33
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @SKEL_INDEX(i32) #1

declare dso_local i32 @uhci_check_bandwidth(%struct.uhci_hcd*, %struct.uhci_qh*) #1

declare dso_local i32 @uhci_submit_common(%struct.uhci_hcd*, %struct.urb*, %struct.uhci_qh*) #1

declare dso_local i32 @uhci_reserve_bandwidth(%struct.uhci_hcd*, %struct.uhci_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
