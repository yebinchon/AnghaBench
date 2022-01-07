; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decimal32.c_decimal32ToNumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decimal32.c_decimal32ToNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i32, i64 }

@DECNEG = common dso_local global i32 0, align 4
@DECIMAL_Inf = common dso_local global i32 0, align 4
@DECINF = common dso_local global i32 0, align 4
@DECIMAL_NaN = common dso_local global i32 0, align 4
@DECNAN = common dso_local global i32 0, align 4
@DECSNAN = common dso_local global i32 0, align 4
@DECIMAL32_Bias = common dso_local global i64 0, align 8
@DECIMAL32_Pmax = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @decimal32ToNumber(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 127
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = call i32 @decNumberZero(%struct.TYPE_11__* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = call i64 @decimal32Sign(%struct.TYPE_10__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @DECNEG, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 120
  br i1 %29, label %30, label %62

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 124
  %33 = load i32, i32* @DECIMAL_Inf, align 4
  %34 = and i32 %33, 124
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* @DECINF, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %61

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 126
  %45 = load i32, i32* @DECIMAL_NaN, align 4
  %46 = and i32 %45, 126
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32, i32* @DECNAN, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %60

54:                                               ; preds = %42
  %55 = load i32, i32* @DECSNAN, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %48
  br label %61

61:                                               ; preds = %60, %36
  store i32 0, i32* %5, align 4
  br label %90

62:                                               ; preds = %27
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 2
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %65, 24
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 1
  %70 = add nsw i32 8, %69
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 6
  %73 = shl i32 %72, 5
  store i32 %73, i32* %9, align 4
  br label %80

74:                                               ; preds = %62
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 7
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 24
  %79 = shl i32 %78, 3
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %74, %67
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = call i64 @decimal32ExpCon(%struct.TYPE_10__* %83)
  %85 = add nsw i64 %82, %84
  %86 = load i64, i64* @DECIMAL32_Bias, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %80, %61
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @DECINF, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %131, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @DECIMAL32_Pmax, align 4
  %99 = sdiv i32 %98, 3
  store i32 %99, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %97
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = bitcast %struct.TYPE_10__* %6 to i8*
  %105 = bitcast %struct.TYPE_10__* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 8, i1 false)
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 0, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 15
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %5, align 4
  %115 = shl i32 %114, 4
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %115
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %3, align 8
  br label %123

123:                                              ; preds = %102, %97
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @decDenseUnpackCoeff(i32* %126, i32 8, %struct.TYPE_11__* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %123, %90
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %132
}

declare dso_local i32 @decNumberZero(%struct.TYPE_11__*) #1

declare dso_local i64 @decimal32Sign(%struct.TYPE_10__*) #1

declare dso_local i64 @decimal32ExpCon(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @decDenseUnpackCoeff(i32*, i32, %struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
