; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nvidia.c_nvidiafb_load_cursor_image.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nvidia.c_nvidiafb_load_cursor_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32* }

@MAX_CURS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvidia_par*, i32*, i32, i32, i32, i32)* @nvidiafb_load_cursor_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvidiafb_load_cursor_image(%struct.nvidia_par* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nvidia_par*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nvidia_par* %0, %struct.nvidia_par** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i32*, i32** %8, align 8
  store i32* %19, i32** %13, align 8
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %20, 1
  %22 = and i32 %21, -2
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %83, %6
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %86

27:                                               ; preds = %23
  %28 = load i32*, i32** %13, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %13, align 8
  %30 = load i32, i32* %28, align 4
  store i32 %30, i32* %17, align 4
  %31 = call i32 @reverse_order(i32* %17)
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %73, %27
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sdiv i32 %34, 2
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %32
  store i32 0, i32* %18, align 4
  %38 = load i32, i32* %17, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %17, align 4
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  %54 = shl i32 %53, 16
  br label %58

55:                                               ; preds = %45
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %56, 16
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i32 [ %54, %52 ], [ %57, %55 ]
  %60 = load i32, i32* %18, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %17, align 4
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %17, align 4
  %64 = load %struct.nvidia_par*, %struct.nvidia_par** %7, align 8
  %65 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %18, align 4
  %72 = call i32 @NV_WR32(i32* %70, i32 0, i32 %71)
  br label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %32

76:                                               ; preds = %32
  %77 = load i32, i32* @MAX_CURS, align 4
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %77, %78
  %80 = sdiv i32 %79, 2
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %23

86:                                               ; preds = %23
  ret void
}

declare dso_local i32 @reverse_order(i32*) #1

declare dso_local i32 @NV_WR32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
