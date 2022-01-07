; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_blade_copy_rect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tridentfb.c_blade_copy_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i32 }

@ROP = common dso_local global i32 0, align 4
@ROP_S = common dso_local global i64 0, align 8
@CMD = common dso_local global i32 0, align 4
@SRC1 = common dso_local global i32 0, align 4
@SRC2 = common dso_local global i32 0, align 4
@DST1 = common dso_local global i32 0, align 4
@DST2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*, i64, i64, i64, i64, i64, i64)* @blade_copy_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blade_copy_rect(%struct.tridentfb_par* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.tridentfb_par*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  store i32 2, i32* %15, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @point(i64 %20, i64 %21)
  store i64 %22, i64* %16, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %13, align 8
  %25 = add nsw i64 %23, %24
  %26 = sub nsw i64 %25, 1
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %14, align 8
  %29 = add nsw i64 %27, %28
  %30 = sub nsw i64 %29, 1
  %31 = call i64 @point(i64 %26, i64 %30)
  store i64 %31, i64* %17, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i64 @point(i64 %32, i64 %33)
  store i64 %34, i64* %18, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %13, align 8
  %37 = add nsw i64 %35, %36
  %38 = sub nsw i64 %37, 1
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %14, align 8
  %41 = add nsw i64 %39, %40
  %42 = sub nsw i64 %41, 1
  %43 = call i64 @point(i64 %38, i64 %42)
  store i64 %43, i64* %19, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %7
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %7
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %55, %51, %47
  %57 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %58 = load i32, i32* @ROP, align 4
  %59 = load i64, i64* @ROP_S, align 8
  %60 = call i32 @writemmr(%struct.tridentfb_par* %57, i32 %58, i64 %59)
  %61 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %62 = load i32, i32* @CMD, align 4
  %63 = load i32, i32* %15, align 4
  %64 = or i32 -536346604, %63
  %65 = zext i32 %64 to i64
  %66 = call i32 @writemmr(%struct.tridentfb_par* %61, i32 %62, i64 %65)
  %67 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %68 = load i32, i32* @SRC1, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = load i64, i64* %17, align 8
  br label %75

73:                                               ; preds = %56
  %74 = load i64, i64* %16, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i64 [ %72, %71 ], [ %74, %73 ]
  %77 = call i32 @writemmr(%struct.tridentfb_par* %67, i32 %68, i64 %76)
  %78 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %79 = load i32, i32* @SRC2, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i64, i64* %16, align 8
  br label %86

84:                                               ; preds = %75
  %85 = load i64, i64* %17, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i64 [ %83, %82 ], [ %85, %84 ]
  %88 = call i32 @writemmr(%struct.tridentfb_par* %78, i32 %79, i64 %87)
  %89 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %90 = load i32, i32* @DST1, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i64, i64* %19, align 8
  br label %97

95:                                               ; preds = %86
  %96 = load i64, i64* %18, align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i64 [ %94, %93 ], [ %96, %95 ]
  %99 = call i32 @writemmr(%struct.tridentfb_par* %89, i32 %90, i64 %98)
  %100 = load %struct.tridentfb_par*, %struct.tridentfb_par** %8, align 8
  %101 = load i32, i32* @DST2, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i64, i64* %18, align 8
  br label %108

106:                                              ; preds = %97
  %107 = load i64, i64* %19, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i64 [ %105, %104 ], [ %107, %106 ]
  %110 = call i32 @writemmr(%struct.tridentfb_par* %100, i32 %101, i64 %109)
  ret void
}

declare dso_local i64 @point(i64, i64) #1

declare dso_local i32 @writemmr(%struct.tridentfb_par*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
