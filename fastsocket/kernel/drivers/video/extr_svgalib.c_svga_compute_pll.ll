; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_compute_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_svgalib.c_svga_compute_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svga_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"fb%d: ideal frequency: %d kHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"fb%d: found frequency: %d kHz (VCO %d kHz)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"fb%d: m = %d n = %d r = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svga_compute_pll(%struct.svga_pll* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.svga_pll*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.svga_pll* %0, %struct.svga_pll** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.svga_pll*, %struct.svga_pll** %8, align 8
  %25 = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %16, align 4
  %29 = shl i32 %27, %28
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* %16, align 4
  %32 = ashr i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %153

38:                                               ; preds = %6
  br label %39

39:                                               ; preds = %53, %38
  %40 = load i32, i32* %16, align 4
  %41 = load %struct.svga_pll*, %struct.svga_pll** %8, align 8
  %42 = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* %17, align 4
  %47 = load %struct.svga_pll*, %struct.svga_pll** %8, align 8
  %48 = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %46, %49
  br label %51

51:                                               ; preds = %45, %39
  %52 = phi i1 [ false, %39 ], [ %50, %45 ]
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = ashr i32 %56, 1
  store i32 %57, i32* %17, align 4
  br label %39

58:                                               ; preds = %51
  %59 = load i32, i32* %17, align 4
  %60 = load %struct.svga_pll*, %struct.svga_pll** %8, align 8
  %61 = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %17, align 4
  %66 = load %struct.svga_pll*, %struct.svga_pll** %8, align 8
  %67 = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64, %58
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %153

73:                                               ; preds = %64
  store i32 -1, i32* %20, align 4
  %74 = load i32*, i32** %10, align 8
  store i32 0, i32* %74, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 0, i32* %75, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32*, i32** %12, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.svga_pll*, %struct.svga_pll** %8, align 8
  %79 = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %14, align 4
  %81 = load %struct.svga_pll*, %struct.svga_pll** %8, align 8
  %82 = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %128, %73
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.svga_pll*, %struct.svga_pll** %8, align 8
  %87 = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = icmp sle i32 %85, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.svga_pll*, %struct.svga_pll** %8, align 8
  %93 = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = icmp sle i32 %91, %94
  br label %96

96:                                               ; preds = %90, %84
  %97 = phi i1 [ false, %84 ], [ %95, %90 ]
  br i1 %97, label %98, label %129

98:                                               ; preds = %96
  %99 = load %struct.svga_pll*, %struct.svga_pll** %8, align 8
  %100 = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %14, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* %15, align 4
  %105 = sdiv i32 %103, %104
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @abs_diff(i32 %106, i32 %107)
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %20, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %98
  %113 = load i32, i32* %19, align 4
  store i32 %113, i32* %20, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32*, i32** %10, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32*, i32** %11, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %112, %98
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  br label %128

125:                                              ; preds = %118
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %125, %122
  br label %84

129:                                              ; preds = %96
  %130 = load %struct.svga_pll*, %struct.svga_pll** %8, align 8
  %131 = getelementptr inbounds %struct.svga_pll, %struct.svga_pll* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %132, %134
  %136 = load i32*, i32** %11, align 8
  %137 = load i32, i32* %136, align 4
  %138 = sdiv i32 %135, %137
  store i32 %138, i32* %18, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %16, align 4
  %142 = ashr i32 %140, %141
  %143 = load i32, i32* %18, align 4
  %144 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %142, i32 %143)
  %145 = load i32, i32* %13, align 4
  %146 = load i32*, i32** %10, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %12, align 8
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %145, i32 %147, i32 %149, i32 %151)
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %129, %70, %35
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @abs_diff(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
