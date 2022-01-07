; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_set_lpm_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_usb_set_lpm_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32, i32, %struct.TYPE_10__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.usb_hub = type { i32 }

@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @usb_set_lpm_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_set_lpm_parameters(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.usb_hub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @USB_SPEED_SUPER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %1
  br label %127

20:                                               ; preds = %13
  %21 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 3
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = call %struct.usb_hub* @hdev_to_hub(%struct.TYPE_10__* %23)
  store %struct.usb_hub* %24, %struct.usb_hub** %3, align 8
  %25 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %26 = icmp ne %struct.usb_hub* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %127

28:                                               ; preds = %20
  %29 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 3
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %7, align 4
  %52 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %53 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %52, i32 0, i32 3
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  %61 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %62 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %63 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %62, i32 0, i32 2
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %66 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %67 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %66, i32 0, i32 3
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @usb_set_lpm_mel(%struct.usb_device* %61, i32* %63, i32 %64, %struct.usb_hub* %65, i32* %69, i32 %70)
  %72 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %73 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %74 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %73, i32 0, i32 1
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %77 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %78 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %77, i32 0, i32 3
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @usb_set_lpm_mel(%struct.usb_device* %72, i32* %74, i32 %75, %struct.usb_hub* %76, i32* %80, i32 %81)
  store i32 1, i32* %4, align 4
  %83 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %84 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %85 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %84, i32 0, i32 2
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %88 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %89 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %88, i32 0, i32 3
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @usb_set_lpm_pel(%struct.usb_device* %83, i32* %85, i32 %86, %struct.usb_hub* %87, i32* %91, i32 %92, i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %28
  %99 = load i32, i32* %8, align 4
  %100 = add i32 1, %99
  %101 = load i32, i32* %7, align 4
  %102 = sub i32 %100, %101
  store i32 %102, i32* %4, align 4
  br label %106

103:                                              ; preds = %28
  %104 = load i32, i32* %7, align 4
  %105 = add i32 1, %104
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %103, %98
  %107 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %108 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %109 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %108, i32 0, i32 1
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %112 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %113 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %112, i32 0, i32 3
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @usb_set_lpm_pel(%struct.usb_device* %107, i32* %109, i32 %110, %struct.usb_hub* %111, i32* %115, i32 %116, i32 %117)
  %119 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %120 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %121 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %120, i32 0, i32 2
  %122 = call i32 @usb_set_lpm_sel(%struct.usb_device* %119, i32* %121)
  %123 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %124 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %125 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %124, i32 0, i32 1
  %126 = call i32 @usb_set_lpm_sel(%struct.usb_device* %123, i32* %125)
  br label %127

127:                                              ; preds = %106, %27, %19
  ret void
}

declare dso_local %struct.usb_hub* @hdev_to_hub(%struct.TYPE_10__*) #1

declare dso_local i32 @usb_set_lpm_mel(%struct.usb_device*, i32*, i32, %struct.usb_hub*, i32*, i32) #1

declare dso_local i32 @usb_set_lpm_pel(%struct.usb_device*, i32*, i32, %struct.usb_hub*, i32*, i32, i32) #1

declare dso_local i32 @usb_set_lpm_sel(%struct.usb_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
