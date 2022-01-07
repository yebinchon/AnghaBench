; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_big_immediate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_big_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@GE_OPT_PREFIX_BIG = common dso_local global i32 0, align 4
@O_constant = common dso_local global i64 0, align 8
@inst = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@O_big = common dso_local global i64 0, align 8
@LITTLENUM_NUMBER_OF_BITS = common dso_local global i32 0, align 4
@generic_bignum = common dso_local global i32* null, align 8
@FAIL = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @parse_big_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_big_immediate(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* @GE_OPT_PREFIX_BIG, align 4
  %14 = call i32 @my_get_expression(%struct.TYPE_6__* %6, i8** %7, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @O_constant, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inst, i32 0, i32 0), align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %21, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, -4294967296
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = ashr i32 %34, 16
  %36 = ashr i32 %35, 16
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inst, i32 0, i32 0), align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %36, i32* %41, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inst, i32 0, i32 0), align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %32, %19
  br label %144

48:                                               ; preds = %2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @O_big, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %141

53:                                               ; preds = %48
  %54 = load i32, i32* @LITTLENUM_NUMBER_OF_BITS, align 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %54, %56
  %58 = icmp sgt i32 %57, 32
  br i1 %58, label %59, label %141

59:                                               ; preds = %53
  %60 = load i32, i32* @LITTLENUM_NUMBER_OF_BITS, align 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %60, %62
  %64 = icmp sle i32 %63, 64
  br i1 %64, label %65, label %141

65:                                               ; preds = %59
  %66 = load i32, i32* @LITTLENUM_NUMBER_OF_BITS, align 4
  %67 = sdiv i32 32, %66
  store i32 %67, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inst, i32 0, i32 0), align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 4
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %98, %65
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %77
  %82 = load i32*, i32** @generic_bignum, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @LITTLENUM_NUMBER_OF_BITS, align 4
  %88 = load i32, i32* %9, align 4
  %89 = mul i32 %87, %88
  %90 = shl i32 %86, %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inst, i32 0, i32 0), align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %90
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %81
  %99 = load i32, i32* %9, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %77

103:                                              ; preds = %77
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inst, i32 0, i32 0), align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %130, %103
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %109
  %114 = load i32*, i32** @generic_bignum, align 8
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @LITTLENUM_NUMBER_OF_BITS, align 4
  %120 = load i32, i32* %9, align 4
  %121 = mul i32 %119, %120
  %122 = shl i32 %118, %121
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inst, i32 0, i32 0), align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %122
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %113
  %131 = load i32, i32* %9, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %109

135:                                              ; preds = %109
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @inst, i32 0, i32 0), align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  store i32 1, i32* %140, align 4
  br label %143

141:                                              ; preds = %59, %53, %48
  %142 = load i32, i32* @FAIL, align 4
  store i32 %142, i32* %3, align 4
  br label %148

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %47
  %145 = load i8*, i8** %7, align 8
  %146 = load i8**, i8*** %4, align 8
  store i8* %145, i8** %146, align 8
  %147 = load i32, i32* @SUCCESS, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %141
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @my_get_expression(%struct.TYPE_6__*, i8**, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
