; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_disable_r8a66597_pipe_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_disable_r8a66597_pipe_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32, i32* }
%struct.r8a66597_device = type { i32, i32, i64* }

@R8A66597_MAX_NUM_PIPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"disable_pipe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_device*)* @disable_r8a66597_pipe_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_r8a66597_pipe_all(%struct.r8a66597* %0, %struct.r8a66597_device* %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.r8a66597_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store %struct.r8a66597_device* %1, %struct.r8a66597_device** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %8 = icmp ne %struct.r8a66597_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %75

10:                                               ; preds = %2
  store i64 1, i64* %6, align 8
  br label %11

11:                                               ; preds = %60, %10
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @R8A66597_MAX_NUM_PIPE, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %11
  %16 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %17 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %60

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  %28 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %29 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %30 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @force_dequeue(%struct.r8a66597* %28, i64 0, i32 %31)
  br label %33

33:                                               ; preds = %27, %24
  %34 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %35 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %41 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %46, %39
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %50 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 0, i64* %53, align 8
  %54 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %57 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @force_dequeue(%struct.r8a66597* %54, i64 %55, i32 %58)
  br label %60

60:                                               ; preds = %33, %23
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %11

63:                                               ; preds = %11
  %64 = call i32 @dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %66 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = xor i32 %67, -1
  %69 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %70 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.r8a66597_device*, %struct.r8a66597_device** %4, align 8
  %74 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %63, %9
  ret void
}

declare dso_local i32 @force_dequeue(%struct.r8a66597*, i64, i32) #1

declare dso_local i32 @dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
