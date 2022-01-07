; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_output.c_video_output_store_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_output.c_video_output_store_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.output_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.output_device*)* }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @video_output_store_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @video_output_store_state(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.output_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.output_device* @to_output_device(%struct.device* %14)
  store %struct.output_device* %15, %struct.output_device** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @simple_strtoul(i8* %16, i8** %10, i32 0)
  store i32 %17, i32* %12, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  store i64 %22, i64* %13, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isspace(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i64, i64* %13, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %13, align 8
  br label %30

30:                                               ; preds = %27, %4
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %55

37:                                               ; preds = %30
  %38 = load %struct.output_device*, %struct.output_device** %11, align 8
  %39 = getelementptr inbounds %struct.output_device, %struct.output_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.output_device*, %struct.output_device** %11, align 8
  %45 = getelementptr inbounds %struct.output_device, %struct.output_device* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.output_device*, %struct.output_device** %11, align 8
  %47 = getelementptr inbounds %struct.output_device, %struct.output_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.output_device*)*, i32 (%struct.output_device*)** %49, align 8
  %51 = load %struct.output_device*, %struct.output_device** %11, align 8
  %52 = call i32 %50(%struct.output_device* %51)
  br label %53

53:                                               ; preds = %42, %37
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %34
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local %struct.output_device* @to_output_device(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
