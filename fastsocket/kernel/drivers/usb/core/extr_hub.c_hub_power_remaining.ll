; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_power_remaining.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_power_remaining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, i32, %struct.TYPE_5__*, i32, %struct.usb_device* }
%struct.TYPE_5__ = type { i32 }
%struct.usb_device = type { i32, i32, i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.usb_device** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"%dmA is over %umA budget for port %d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%dmA over power budget!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hub*)* @hub_power_remaining to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_power_remaining(%struct.usb_hub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hub*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %3, align 8
  %9 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %10 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %9, i32 0, i32 4
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %4, align 8
  %12 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %13 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %109

17:                                               ; preds = %1
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %22 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %20, %25
  store i32 %26, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %27

27:                                               ; preds = %94, %17
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sle i32 %28, %31
  br i1 %32, label %33, label %97

33:                                               ; preds = %27
  %34 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 6
  %36 = load %struct.usb_device**, %struct.usb_device*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %36, i64 %39
  %41 = load %struct.usb_device*, %struct.usb_device** %40, align 8
  store %struct.usb_device* %41, %struct.usb_device** %7, align 8
  %42 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %43 = icmp ne %struct.usb_device* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %94

45:                                               ; preds = %33
  %46 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 5
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %52 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %51, i32 0, i32 5
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 2
  store i32 %57, i32* %8, align 4
  br label %74

58:                                               ; preds = %45
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %61 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %60, i32 0, i32 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %59, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %68 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %58
  store i32 100, i32* %8, align 4
  br label %73

72:                                               ; preds = %66
  store i32 8, i32* %8, align 4
  br label %73

73:                                               ; preds = %72, %71
  br label %74

74:                                               ; preds = %73, %50
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %77 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %75, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %82 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %81, i32 0, i32 2
  %83 = ptrtoint i32* %82 to i32
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %86 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %80, %74
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %5, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %44
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %27

97:                                               ; preds = %27
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %102 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = sub nsw i32 0, %104
  %106 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %100, %97
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %16
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @dev_warn(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
