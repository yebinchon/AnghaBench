; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_usb.c_match_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_usb.c_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.usb_device**, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"check for vendor %04x, product %04x ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"matched this device!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_device* (%struct.usb_device*, i32, i32)* @match_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_device* @match_device(%struct.usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.usb_device* null, %struct.usb_device** %7, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 2
  %11 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  %16 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  %21 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = icmp eq i32 %22, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = icmp eq i32 %30, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 2
  %40 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %42 = call %struct.usb_device* @usb_get_dev(%struct.usb_device* %41)
  store %struct.usb_device* %42, %struct.usb_device** %7, align 8
  br label %95

43:                                               ; preds = %29, %3
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %91, %43
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %44
  %51 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %52 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %51, i32 0, i32 1
  %53 = load %struct.usb_device**, %struct.usb_device*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %53, i64 %55
  %57 = load %struct.usb_device*, %struct.usb_device** %56, align 8
  %58 = icmp ne %struct.usb_device* %57, null
  br i1 %58, label %59, label %90

59:                                               ; preds = %50
  %60 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %61 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %60, i32 0, i32 1
  %62 = load %struct.usb_device**, %struct.usb_device*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %62, i64 %64
  %66 = load %struct.usb_device*, %struct.usb_device** %65, align 8
  %67 = call i32 @usb_lock_device(%struct.usb_device* %66)
  %68 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %69 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %68, i32 0, i32 1
  %70 = load %struct.usb_device**, %struct.usb_device*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %70, i64 %72
  %74 = load %struct.usb_device*, %struct.usb_device** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call %struct.usb_device* @match_device(%struct.usb_device* %74, i32 %75, i32 %76)
  store %struct.usb_device* %77, %struct.usb_device** %7, align 8
  %78 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %79 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %78, i32 0, i32 1
  %80 = load %struct.usb_device**, %struct.usb_device*** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %80, i64 %82
  %84 = load %struct.usb_device*, %struct.usb_device** %83, align 8
  %85 = call i32 @usb_unlock_device(%struct.usb_device* %84)
  %86 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %87 = icmp ne %struct.usb_device* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %59
  br label %95

89:                                               ; preds = %59
  br label %90

90:                                               ; preds = %89, %50
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %44

94:                                               ; preds = %44
  br label %95

95:                                               ; preds = %94, %88, %37
  %96 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  ret %struct.usb_device* %96
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.usb_device* @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_lock_device(%struct.usb_device*) #1

declare dso_local i32 @usb_unlock_device(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
