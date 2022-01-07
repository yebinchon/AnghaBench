; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_likely_spilled_retval_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_likely_spilled_retval_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.likely_spilled_retval_info = type { i32, i32, i32 }

@this_basic_block = common dso_local global i32 0, align 4
@USE = common dso_local global i64 0, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8
@likely_spilled_retval_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @likely_spilled_retval_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @likely_spilled_retval_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.likely_spilled_retval_info, align 4
  store i64 %0, i64* %3, align 8
  %11 = load i32, i32* @this_basic_block, align 4
  %12 = call i64 @BB_END(i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @NONJUMP_INSN_P(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @PATTERN(i64 %17)
  %19 = call i64 @GET_CODE(i32 %18)
  %20 = load i64, i64* @USE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %16, %1
  store i32 0, i32* %2, align 4
  br label %111

27:                                               ; preds = %22
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @PATTERN(i64 %28)
  %30 = call i64 @XEXP(i32 %29, i32 0)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @REG_P(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @REGNO(i64 %35)
  %37 = call i32 @FUNCTION_VALUE_REGNO_P(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %27
  store i32 0, i32* %2, align 4
  br label %111

40:                                               ; preds = %34
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @REGNO(i64 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32**, i32*** @hard_regno_nregs, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @GET_MODE(i64 %48)
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %111

55:                                               ; preds = %40
  %56 = load i32, i32* %8, align 4
  %57 = sub i32 %56, 1
  %58 = shl i32 2, %57
  %59 = sub i32 %58, 1
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = getelementptr inbounds %struct.likely_spilled_retval_info, %struct.likely_spilled_retval_info* %10, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = getelementptr inbounds %struct.likely_spilled_retval_info, %struct.likely_spilled_retval_info* %10, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = getelementptr inbounds %struct.likely_spilled_retval_info, %struct.likely_spilled_retval_info* %10, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = load i64, i64* %4, align 8
  %67 = call i64 @PREV_INSN(i64 %66)
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %83, %55
  %69 = getelementptr inbounds %struct.likely_spilled_retval_info, %struct.likely_spilled_retval_info* %10, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %3, align 8
  %75 = icmp ne i64 %73, %74
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i1 [ false, %68 ], [ %75, %72 ]
  br i1 %77, label %78, label %86

78:                                               ; preds = %76
  %79 = load i64, i64* %3, align 8
  %80 = call i32 @PATTERN(i64 %79)
  %81 = load i32, i32* @likely_spilled_retval_1, align 4
  %82 = call i32 @note_stores(i32 %80, i32 %81, %struct.likely_spilled_retval_info* %10)
  br label %83

83:                                               ; preds = %78
  %84 = load i64, i64* %6, align 8
  %85 = call i64 @PREV_INSN(i64 %84)
  store i64 %85, i64* %6, align 8
  br label %68

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.likely_spilled_retval_info, %struct.likely_spilled_retval_info* %10, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, -1
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %106, %86
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %8, align 4
  %94 = shl i32 1, %93
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %98, %99
  %101 = call i32 @REGNO_REG_CLASS(i32 %100)
  %102 = call i64 @CLASS_LIKELY_SPILLED_P(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i32 1, i32* %2, align 4
  br label %111

105:                                              ; preds = %97, %91
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add i32 %107, -1
  store i32 %108, i32* %8, align 4
  %109 = icmp ne i32 %107, 0
  br i1 %109, label %91, label %110

110:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %104, %54, %39, %26
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i64 @BB_END(i32) #1

declare dso_local i32 @NONJUMP_INSN_P(i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @XEXP(i32, i32) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i32 @FUNCTION_VALUE_REGNO_P(i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i32 @note_stores(i32, i32, %struct.likely_spilled_retval_info*) #1

declare dso_local i64 @CLASS_LIKELY_SPILLED_P(i32) #1

declare dso_local i32 @REGNO_REG_CLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
