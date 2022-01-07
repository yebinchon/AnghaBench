; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_fll_factors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_fll_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct._fll_div = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Can't scale %dMHz input down to <=13.5MHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Fref=%u Fout=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Unable to find FLL_OUTDIV for Fout=%uHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Fvco=%dHz\0A\00", align 1
@fll_fratios = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"Unable to find FLL_FRATIO for Fref=%uHz\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Nmod=%d\0A\00", align 1
@FIXED_FLL_SIZE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [58 x i8] c"N=%x K=%x FLL_FRATIO=%x FLL_OUTDIV=%x FLL_CLK_REF_DIV=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._fll_div*, i32, i32)* @fll_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fll_factors(%struct._fll_div* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._fll_div*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._fll_div* %0, %struct._fll_div** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %13, align 4
  %15 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %16 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %36, %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %13, align 4
  %20 = udiv i32 %18, %19
  %21 = icmp ugt i32 %20, 13500000
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load i32, i32* %13, align 4
  %24 = mul i32 %23, 2
  store i32 %24, i32* %13, align 4
  %25 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %26 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load i32, i32* %13, align 4
  %30 = icmp ugt i32 %29, 8
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %170

36:                                               ; preds = %22
  br label %17

37:                                               ; preds = %17
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %6, align 4
  %43 = udiv i32 %42, %41
  store i32 %43, i32* %6, align 4
  store i32 0, i32* %13, align 4
  %44 = load i32, i32* %7, align 4
  %45 = mul i32 %44, 2
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %61, %37
  %47 = load i32, i32* %12, align 4
  %48 = icmp ult i32 %47, 90000000
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = mul i32 %52, 2
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ugt i32 %54, 7
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %170

61:                                               ; preds = %49
  br label %46

62:                                               ; preds = %46
  %63 = load i32, i32* %13, align 4
  %64 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %65 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %109, %62
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %71 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %70)
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %112

73:                                               ; preds = %68
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ule i32 %79, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %73
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ule i32 %83, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %82
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %99 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %12, align 4
  %107 = udiv i32 %106, %105
  store i32 %107, i32* %12, align 4
  br label %112

108:                                              ; preds = %82, %73
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %68

112:                                              ; preds = %91, %68
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %115 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %114)
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %170

122:                                              ; preds = %112
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %6, align 4
  %125 = udiv i32 %123, %124
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %128 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %6, align 4
  %131 = urem i32 %129, %130
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  %134 = load i64, i64* @FIXED_FLL_SIZE, align 8
  %135 = load i32, i32* %11, align 4
  %136 = zext i32 %135 to i64
  %137 = mul nsw i64 %134, %136
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @do_div(i32 %139, i32 %140)
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = urem i32 %143, 10
  %145 = icmp uge i32 %144, 5
  br i1 %145, label %146, label %149

146:                                              ; preds = %122
  %147 = load i32, i32* %9, align 4
  %148 = add i32 %147, 5
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %146, %122
  %150 = load i32, i32* %9, align 4
  %151 = udiv i32 %150, 10
  %152 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %153 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %155 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %158 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %161 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %164 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %167 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %156, i32 %159, i32 %162, i32 %165, i64 %168)
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %149, %117, %56, %31
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
