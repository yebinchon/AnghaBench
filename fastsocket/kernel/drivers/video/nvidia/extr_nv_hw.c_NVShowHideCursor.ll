; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_hw.c_NVShowHideCursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_hw.c_NVShowHideCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@NV_ARCH_40 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NVShowHideCursor(%struct.nvidia_par* %0, i32 %1) #0 {
  %3 = alloca %struct.nvidia_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvidia_par* %0, %struct.nvidia_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %7 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %12 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 254
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 1
  %19 = or i32 %16, %18
  %20 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %21 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %25 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @VGA_WR08(i32 %26, i32 980, i32 49)
  %28 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %29 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %32 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @VGA_WR08(i32 %30, i32 981, i32 %35)
  %37 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %38 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NV_ARCH_40, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %2
  %43 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %44 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %47 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @NV_RD32(i32 %48, i32 768)
  %50 = call i32 @NV_WR32(i32 %45, i32 768, i32 %49)
  br label %51

51:                                               ; preds = %42, %2
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 1
  ret i32 %53
}

declare dso_local i32 @VGA_WR08(i32, i32, i32) #1

declare dso_local i32 @NV_WR32(i32, i32, i32) #1

declare dso_local i32 @NV_RD32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
