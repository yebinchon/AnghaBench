; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fonts.c_get_default_font.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fonts.c_get_default_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.font_desc = type { i32, i64, i32, i32 }

@num_fonts = common dso_local global i32 0, align 4
@fonts = common dso_local global %struct.font_desc** null, align 8
@MACH_IS_AMIGA = common dso_local global i64 0, align 8
@MACH_IS_MAC = common dso_local global i64 0, align 8
@PEARL8x8_IDX = common dso_local global i64 0, align 8
@VGA6x11_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.font_desc* @get_default_font(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.font_desc*, align 8
  %13 = alloca %struct.font_desc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.font_desc* null, %struct.font_desc** %13, align 8
  store i32 -10000, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %68, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @num_fonts, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %14
  %19 = load %struct.font_desc**, %struct.font_desc*** @fonts, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.font_desc*, %struct.font_desc** %19, i64 %21
  %23 = load %struct.font_desc*, %struct.font_desc** %22, align 8
  store %struct.font_desc* %23, %struct.font_desc** %12, align 8
  %24 = load %struct.font_desc*, %struct.font_desc** %12, align 8
  %25 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 400
  %29 = zext i1 %28 to i32
  %30 = load %struct.font_desc*, %struct.font_desc** %12, align 8
  %31 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp sle i32 %32, 8
  %34 = zext i1 %33 to i32
  %35 = icmp eq i32 %29, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1000
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %36, %18
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.font_desc*, %struct.font_desc** %12, align 8
  %42 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = shl i32 1, %44
  %46 = and i32 %40, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.font_desc*, %struct.font_desc** %12, align 8
  %51 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  %54 = shl i32 1, %53
  %55 = and i32 %49, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1000
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %48, %39
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %11, align 4
  %66 = load %struct.font_desc*, %struct.font_desc** %12, align 8
  store %struct.font_desc* %66, %struct.font_desc** %13, align 8
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %14

71:                                               ; preds = %14
  %72 = load %struct.font_desc*, %struct.font_desc** %13, align 8
  ret %struct.font_desc* %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
