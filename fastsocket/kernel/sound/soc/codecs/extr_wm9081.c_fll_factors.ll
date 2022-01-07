; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9081.c_fll_factors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9081.c_fll_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct._fll_div = type { i32, i32, i32, i32, i32 }

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
  br label %15

15:                                               ; preds = %30, %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %13, align 4
  %18 = udiv i32 %16, %17
  %19 = icmp ugt i32 %18, 13500000
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i32, i32* %13, align 4
  %22 = mul i32 %21, 2
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ugt i32 %23, 8
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %168

30:                                               ; preds = %20
  br label %15

31:                                               ; preds = %15
  %32 = load i32, i32* %13, align 4
  %33 = udiv i32 %32, 2
  %34 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %35 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = udiv i32 %40, %39
  store i32 %41, i32* %6, align 4
  store i32 0, i32* %13, align 4
  %42 = load i32, i32* %7, align 4
  %43 = mul i32 %42, 2
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %59, %31
  %45 = load i32, i32* %12, align 4
  %46 = icmp ult i32 %45, 90000000
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %12, align 4
  %51 = mul i32 %50, 2
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ugt i32 %52, 7
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %168

59:                                               ; preds = %47
  br label %44

60:                                               ; preds = %44
  %61 = load i32, i32* %13, align 4
  %62 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %63 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %107, %60
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %110

71:                                               ; preds = %66
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ule i32 %77, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %71
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ule i32 %81, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %80
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %97 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %12, align 4
  %105 = udiv i32 %104, %103
  store i32 %105, i32* %12, align 4
  br label %110

106:                                              ; preds = %80, %71
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %66

110:                                              ; preds = %89, %66
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fll_fratios, align 8
  %113 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %112)
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %168

120:                                              ; preds = %110
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %6, align 4
  %123 = udiv i32 %121, %122
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %126 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %6, align 4
  %129 = urem i32 %127, %128
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  %132 = load i64, i64* @FIXED_FLL_SIZE, align 8
  %133 = load i32, i32* %11, align 4
  %134 = zext i32 %133 to i64
  %135 = mul nsw i64 %132, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @do_div(i32 %137, i32 %138)
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = urem i32 %141, 10
  %143 = icmp uge i32 %142, 5
  br i1 %143, label %144, label %147

144:                                              ; preds = %120
  %145 = load i32, i32* %9, align 4
  %146 = add i32 %145, 5
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %144, %120
  %148 = load i32, i32* %9, align 4
  %149 = udiv i32 %148, 10
  %150 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %151 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  %152 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %153 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %156 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %159 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %162 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct._fll_div*, %struct._fll_div** %5, align 8
  %165 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %154, i32 %157, i32 %160, i32 %163, i32 %166)
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %147, %115, %54, %25
  %169 = load i32, i32* %4, align 4
  ret i32 %169
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
