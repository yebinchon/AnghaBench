; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8400.c_fll_factors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8400.c_fll_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8400_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fll_factors = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Unsupported FLL output frequency %uHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to calculate FRATIO\0A\00", align 1
@FIXED_FLL_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"FLL: Fref=%u Fout=%u N=%x K=%x, FRATIO=%x OUTDIV=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8400_priv*, %struct.fll_factors*, i32, i32)* @fll_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fll_factors(%struct.wm8400_priv* %0, %struct.fll_factors* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8400_priv*, align 8
  %7 = alloca %struct.fll_factors*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wm8400_priv* %0, %struct.wm8400_priv** %6, align 8
  store %struct.fll_factors* %1, %struct.fll_factors** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %15 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %14, i32 0, i32 0
  store i32 2, i32* %15, align 4
  br label %16

16:                                               ; preds = %51, %4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %19 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul i32 %17, %20
  %22 = icmp ult i32 %21, 90000000
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %26 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul i32 %24, %27
  %29 = icmp ugt i32 %28, 100000000
  br label %30

30:                                               ; preds = %23, %16
  %31 = phi i1 [ true, %16 ], [ %29, %23 ]
  br i1 %31, label %32, label %52

32:                                               ; preds = %30
  %33 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %34 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 2
  store i32 %36, i32* %34, align 4
  %37 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %38 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 32
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load %struct.wm8400_priv*, %struct.wm8400_priv** %6, align 8
  %43 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %179

51:                                               ; preds = %32
  br label %16

52:                                               ; preds = %30
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %55 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul i32 %53, %56
  store i32 %57, i32* %13, align 4
  %58 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %59 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 2
  %62 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %63 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ult i32 %64, 48000
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %68 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %72

69:                                               ; preds = %52
  %70 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %71 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %8, align 4
  %74 = icmp ult i32 %73, 1000000
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %77 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %76, i32 0, i32 2
  store i32 9, i32* %77, align 4
  br label %81

78:                                               ; preds = %72
  %79 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %80 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %79, i32 0, i32 2
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %131, %81
  %83 = load i32, i32* %8, align 4
  %84 = icmp ult i32 %83, 1000000
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %87 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %87, align 4
  br label %95

90:                                               ; preds = %82
  %91 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %92 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %97 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %102 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 8
  br i1 %104, label %105, label %114

105:                                              ; preds = %100, %95
  %106 = load %struct.wm8400_priv*, %struct.wm8400_priv** %6, align 8
  %107 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, i8*, ...) @dev_err(i32 %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %179

114:                                              ; preds = %100
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %118 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = mul i32 %116, %119
  %121 = udiv i32 %115, %120
  %122 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %123 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %127 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = mul i32 %125, %128
  %130 = urem i32 %124, %129
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %114
  %132 = load i32, i32* %12, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %82, label %134

134:                                              ; preds = %131
  %135 = load i64, i64* @FIXED_FLL_SIZE, align 8
  %136 = load i32, i32* %12, align 4
  %137 = zext i32 %136 to i64
  %138 = mul nsw i64 %135, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %143 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = mul i32 %141, %144
  %146 = call i32 @do_div(i32 %140, i32 %145)
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = urem i32 %148, 10
  %150 = icmp uge i32 %149, 5
  br i1 %150, label %151, label %154

151:                                              ; preds = %134
  %152 = load i32, i32* %11, align 4
  %153 = add i32 %152, 5
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %151, %134
  %155 = load i32, i32* %11, align 4
  %156 = udiv i32 %155, 10
  %157 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %158 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 4
  %159 = load %struct.wm8400_priv*, %struct.wm8400_priv** %6, align 8
  %160 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %159, i32 0, i32 0
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %167 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %170 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %173 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.fll_factors*, %struct.fll_factors** %7, align 8
  %176 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @dev_dbg(i32 %163, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %164, i32 %165, i32 %168, i32 %171, i32 %174, i32 %177)
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %154, %105, %41
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
