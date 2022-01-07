; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_net2280.c_usb_reinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_net2280.c_usb_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2280 = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.net2280_ep*, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.net2280_ep = type { i32, i32, i64, %struct.TYPE_4__, i32*, i32*, %struct.net2280* }

@use_dma = common dso_local global i32 0, align 4
@ep_name = common dso_local global i32* null, align 8
@EP_DONTUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2280*)* @usb_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_reinit(%struct.net2280* %0) #0 {
  %2 = alloca %struct.net2280*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.net2280_ep*, align 8
  store %struct.net2280* %0, %struct.net2280** %2, align 8
  %6 = load i32, i32* @use_dma, align 4
  store i32 %6, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %69, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 7
  br i1 %9, label %10, label %72

10:                                               ; preds = %7
  %11 = load %struct.net2280*, %struct.net2280** %2, align 8
  %12 = getelementptr inbounds %struct.net2280, %struct.net2280* %11, i32 0, i32 2
  %13 = load %struct.net2280_ep*, %struct.net2280_ep** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %13, i64 %15
  store %struct.net2280_ep* %16, %struct.net2280_ep** %5, align 8
  %17 = load i32*, i32** @ep_name, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net2280_ep*, %struct.net2280_ep** %5, align 8
  %23 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load %struct.net2280*, %struct.net2280** %2, align 8
  %26 = load %struct.net2280_ep*, %struct.net2280_ep** %5, align 8
  %27 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %26, i32 0, i32 6
  store %struct.net2280* %25, %struct.net2280** %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.net2280_ep*, %struct.net2280_ep** %5, align 8
  %30 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %10
  %34 = load i32, i32* %3, align 4
  %35 = icmp sle i32 %34, 4
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load %struct.net2280_ep*, %struct.net2280_ep** %5, align 8
  %38 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %37, i32 0, i32 1
  store i32 1024, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.net2280*, %struct.net2280** %2, align 8
  %43 = getelementptr inbounds %struct.net2280, %struct.net2280* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load %struct.net2280_ep*, %struct.net2280_ep** %5, align 8
  %50 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %49, i32 0, i32 5
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %41, %36
  br label %55

52:                                               ; preds = %33, %10
  %53 = load %struct.net2280_ep*, %struct.net2280_ep** %5, align 8
  %54 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %53, i32 0, i32 1
  store i32 64, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %51
  %56 = load %struct.net2280*, %struct.net2280** %2, align 8
  %57 = getelementptr inbounds %struct.net2280, %struct.net2280* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load %struct.net2280_ep*, %struct.net2280_ep** %5, align 8
  %63 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %62, i32 0, i32 4
  store i32* %61, i32** %63, align 8
  %64 = load %struct.net2280*, %struct.net2280** %2, align 8
  %65 = getelementptr inbounds %struct.net2280, %struct.net2280* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.net2280_ep*, %struct.net2280_ep** %5, align 8
  %68 = call i32 @ep_reset(i32 %66, %struct.net2280_ep* %67)
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %7

72:                                               ; preds = %7
  %73 = load %struct.net2280*, %struct.net2280** %2, align 8
  %74 = getelementptr inbounds %struct.net2280, %struct.net2280* %73, i32 0, i32 2
  %75 = load %struct.net2280_ep*, %struct.net2280_ep** %74, align 8
  %76 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %75, i64 0
  %77 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 64, i32* %78, align 8
  %79 = load %struct.net2280*, %struct.net2280** %2, align 8
  %80 = getelementptr inbounds %struct.net2280, %struct.net2280* %79, i32 0, i32 2
  %81 = load %struct.net2280_ep*, %struct.net2280_ep** %80, align 8
  %82 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %81, i64 5
  %83 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 64, i32* %84, align 8
  %85 = load %struct.net2280*, %struct.net2280** %2, align 8
  %86 = getelementptr inbounds %struct.net2280, %struct.net2280* %85, i32 0, i32 2
  %87 = load %struct.net2280_ep*, %struct.net2280_ep** %86, align 8
  %88 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %87, i64 6
  %89 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 64, i32* %90, align 8
  %91 = load %struct.net2280*, %struct.net2280** %2, align 8
  %92 = getelementptr inbounds %struct.net2280, %struct.net2280* %91, i32 0, i32 2
  %93 = load %struct.net2280_ep*, %struct.net2280_ep** %92, align 8
  %94 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %93, i64 0
  %95 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %94, i32 0, i32 3
  %96 = load %struct.net2280*, %struct.net2280** %2, align 8
  %97 = getelementptr inbounds %struct.net2280, %struct.net2280* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %98, align 8
  %99 = load %struct.net2280*, %struct.net2280** %2, align 8
  %100 = getelementptr inbounds %struct.net2280, %struct.net2280* %99, i32 0, i32 2
  %101 = load %struct.net2280_ep*, %struct.net2280_ep** %100, align 8
  %102 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %101, i64 0
  %103 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %struct.net2280*, %struct.net2280** %2, align 8
  %105 = getelementptr inbounds %struct.net2280, %struct.net2280* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = call i32 @INIT_LIST_HEAD(i32* %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %123, %72
  %111 = load i32, i32* %3, align 4
  %112 = icmp slt i32 %111, 5
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load i32, i32* @EP_DONTUSE, align 4
  %115 = load %struct.net2280*, %struct.net2280** %2, align 8
  %116 = getelementptr inbounds %struct.net2280, %struct.net2280* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = call i32 @writel(i32 %114, i32* %121)
  br label %123

123:                                              ; preds = %113
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %110

126:                                              ; preds = %110
  ret void
}

declare dso_local i32 @ep_reset(i32, %struct.net2280_ep*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
