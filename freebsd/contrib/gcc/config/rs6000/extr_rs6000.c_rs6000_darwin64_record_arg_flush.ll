; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_darwin64_record_arg_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_darwin64_record_arg_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@BITS_PER_WORD = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4
@GP_ARG_NUM_REG = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@GP_ARG_MIN_REG = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32*, i32*)* @rs6000_darwin64_record_arg_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs6000_darwin64_record_arg_flush(%struct.TYPE_3__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %131

22:                                               ; preds = %4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @BITS_PER_WORD, align 4
  %30 = srem i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %22
  %33 = load i32, i32* @BITS_PER_WORD, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @BITS_PER_WORD, align 4
  %36 = srem i32 %34, %35
  %37 = sub nsw i32 %33, %36
  %38 = load i32, i32* @MODE_INT, align 4
  %39 = call i32 @mode_for_size(i32 %37, i32 %38, i32 0)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @BLKmode, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @BITS_PER_WORD, align 4
  %46 = sub nsw i32 0, %45
  %47 = and i32 %44, %46
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* @word_mode, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %43, %32
  br label %52

50:                                               ; preds = %22
  %51 = load i32, i32* @word_mode, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %50, %49
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @BITS_PER_WORD, align 4
  %55 = sub nsw i32 0, %54
  %56 = and i32 %53, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @BITS_PER_WORD, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* @BITS_PER_WORD, align 4
  %62 = sub nsw i32 0, %61
  %63 = and i32 %60, %62
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sub i32 %64, %65
  %67 = load i32, i32* @BITS_PER_WORD, align 4
  %68 = udiv i32 %66, %67
  store i32 %68, i32* %14, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* @BITS_PER_WORD, align 4
  %74 = sdiv i32 %72, %73
  %75 = add nsw i32 %71, %74
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %52
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %80, %81
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %78, %52
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @GP_ARG_NUM_REG, align 4
  %90 = load i32, i32* %13, align 4
  %91 = sub nsw i32 %89, %90
  %92 = call i32 @MIN(i32 %88, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %131

96:                                               ; preds = %87
  %97 = load i32, i32* @BITS_PER_UNIT, align 4
  %98 = load i32, i32* %15, align 4
  %99 = sdiv i32 %98, %97
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %128, %96
  %101 = load i32, i32* @GP_ARG_MIN_REG, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %101, %102
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @gen_rtx_REG(i32 %104, i32 %105)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* @VOIDmode, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @GEN_INT(i32 %109)
  %111 = call i32 @gen_rtx_EXPR_LIST(i32 %107, i32 %108, i32 %110)
  %112 = load i32*, i32** %7, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  store i32 %111, i32* %117, align 4
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* @UNITS_PER_WORD, align 4
  %122 = sub nsw i32 %121, 1
  %123 = or i32 %120, %122
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* @word_mode, align 4
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %14, align 4
  %127 = sub nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %100
  %129 = load i32, i32* %14, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %100, label %131

131:                                              ; preds = %21, %95, %128
  ret void
}

declare dso_local i32 @mode_for_size(i32, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @gen_rtx_EXPR_LIST(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
