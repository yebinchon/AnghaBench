; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_arg_partial_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_arg_partial_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }

@DEFAULT_ABI = common dso_local global i64 0, align 8
@ABI_V4 = common dso_local global i64 0, align 8
@rs6000_darwin64_abi = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@RECORD_TYPE = common dso_local global i64 0, align 8
@ABI_AIX = common dso_local global i64 0, align 8
@TARGET_XL_COMPAT = common dso_local global i64 0, align 8
@GP_ARG_NUM_REG = common dso_local global i32 0, align 4
@FP_ARG_MAX_REG = common dso_local global i64 0, align 8
@TARGET_32BIT = common dso_local global i64 0, align 8
@TARGET_DEBUG_ARG = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"rs6000_arg_partial_bytes: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i64, i32)* @rs6000_arg_partial_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_arg_partial_bytes(%struct.TYPE_5__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* @DEFAULT_ABI, align 8
  %13 = load i64, i64* @ABI_V4, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %142

16:                                               ; preds = %4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @USE_ALTIVEC_FOR_ARG_P(%struct.TYPE_5__* %17, i32 %18, i64 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %142

29:                                               ; preds = %23, %16
  %30 = load i64, i64* @rs6000_darwin64_abi, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @BLKmode, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @TREE_CODE(i64 %37)
  %39 = load i64, i64* @RECORD_TYPE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @int_size_in_bytes(i64 %42)
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %142

46:                                               ; preds = %41, %36, %32, %29
  %47 = load i32, i32* %7, align 4
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @rs6000_parm_start(i32 %47, i64 %48, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @USE_FP_FOR_ARG_P(%struct.TYPE_5__* %53, i32 %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %109

58:                                               ; preds = %46
  %59 = load i64, i64* %8, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %61
  %67 = load i64, i64* @DEFAULT_ABI, align 8
  %68 = load i64, i64* @ABI_AIX, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i64, i64* @TARGET_XL_COMPAT, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %61
  store i32 0, i32* %5, align 4
  br label %142

78:                                               ; preds = %73, %70, %66, %58
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @GET_MODE_SIZE(i32 %82)
  %84 = add nsw i32 %83, 7
  %85 = ashr i32 %84, 3
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %81, %86
  %88 = load i64, i64* @FP_ARG_MAX_REG, align 8
  %89 = add nsw i64 %88, 1
  %90 = icmp sgt i64 %87, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %78
  %92 = load i64, i64* @FP_ARG_MAX_REG, align 8
  %93 = add nsw i64 %92, 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %93, %96
  %98 = mul nsw i64 %97, 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %10, align 4
  br label %107

100:                                              ; preds = %78
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sge i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %142

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %91
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %46
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @rs6000_arg_size(i32 %116, i64 %117)
  %119 = add nsw i32 %115, %118
  %120 = icmp slt i32 %114, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %113
  %122 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %123 = load i32, i32* %11, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load i64, i64* @TARGET_32BIT, align 8
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 4, i32 8
  %129 = mul nsw i32 %124, %128
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %121, %113, %109
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load i64, i64* @TARGET_DEBUG_ARG, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32, i32* @stderr, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @fprintf(i32 %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %136, %133, %130
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %105, %77, %45, %28, %15
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i64 @USE_ALTIVEC_FOR_ARG_P(%struct.TYPE_5__*, i32, i64, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @int_size_in_bytes(i64) #1

declare dso_local i32 @rs6000_parm_start(i32, i64, i32) #1

declare dso_local i64 @USE_FP_FOR_ARG_P(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @rs6000_arg_size(i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
