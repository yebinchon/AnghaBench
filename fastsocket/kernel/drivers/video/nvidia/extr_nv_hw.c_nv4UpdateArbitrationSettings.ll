; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_hw.c_nv4UpdateArbitrationSettings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_hw.c_nv4UpdateArbitrationSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i8, i32, i8, i32, i8, i32, i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, %struct.nvidia_par*)* @nv4UpdateArbitrationSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv4UpdateArbitrationSettings(i32 %0, i32 %1, i32* %2, i32* %3, %struct.nvidia_par* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nvidia_par*, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.nvidia_par* %4, %struct.nvidia_par** %10, align 8
  %17 = load %struct.nvidia_par*, %struct.nvidia_par** %10, align 8
  %18 = call i32 @nvGetClocks(%struct.nvidia_par* %17, i32* %13, i32* %14)
  %19 = load %struct.nvidia_par*, %struct.nvidia_par** %10, align 8
  %20 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @NV_RD32(i32 %21, i32 516)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %7, align 4
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i8 %24, i8* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 10
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 9
  store i64 0, i64* %27, align 8
  %28 = load %struct.nvidia_par*, %struct.nvidia_par** %10, align 8
  %29 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @NV_RD32(i32 %30, i32 0)
  %32 = and i32 %31, 16
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 128, i32 64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %15, align 4
  %38 = trunc i32 %37 to i8
  %39 = sext i8 %38 to i32
  %40 = and i32 %39, 15
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i8 %41, i8* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* %15, align 4
  %45 = lshr i32 %44, 4
  %46 = and i32 %45, 15
  %47 = load i32, i32* %15, align 4
  %48 = lshr i32 %47, 31
  %49 = and i32 %48, 1
  %50 = add i32 %46, %49
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  store i8 %51, i8* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 8
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 6
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* %14, align 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 7
  store i32 %58, i32* %59, align 4
  %60 = call i32 @nv4CalcArbitration(%struct.TYPE_6__* %11, %struct.TYPE_5__* %12)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %5
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = ashr i32 %66, 4
  store i32 %67, i32* %16, align 4
  %68 = load i32*, i32** %8, align 8
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %73, %64
  %70 = load i32, i32* %16, align 4
  %71 = ashr i32 %70, 1
  store i32 %71, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %69

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 3
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %5
  ret void
}

declare dso_local i32 @nvGetClocks(%struct.nvidia_par*, i32*, i32*) #1

declare dso_local i32 @NV_RD32(i32, i32) #1

declare dso_local i32 @nv4CalcArbitration(%struct.TYPE_6__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
