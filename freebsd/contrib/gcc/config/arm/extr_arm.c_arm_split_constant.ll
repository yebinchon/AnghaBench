; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_split_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_split_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COND_EXEC = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@SET = common dso_local global i32 0, align 4
@REG = common dso_local global i64 0, align 8
@after_arm_reorg = common dso_local global i32 0, align 4
@arm_constant_limit = common dso_local global i32 0, align 4
@MINUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_split_constant(i32 %0, i32 %1, i64 %2, i32 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %7
  %21 = load i64, i64* %11, align 8
  %22 = call i64 @PATTERN(i64 %21)
  %23 = call i64 @GET_CODE(i64 %22)
  %24 = load i64, i64* @COND_EXEC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @PATTERN(i64 %27)
  %29 = call i64 @COND_EXEC_TEST(i64 %28)
  store i64 %29, i64* %16, align 8
  br label %32

30:                                               ; preds = %20, %7
  %31 = load i64, i64* @NULL_RTX, align 8
  store i64 %31, i64* %16, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @SET, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %13, align 8
  %41 = call i64 @GET_CODE(i64 %40)
  %42 = load i64, i64* @REG, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %119

44:                                               ; preds = %39
  %45 = load i64, i64* %14, align 8
  %46 = call i64 @GET_CODE(i64 %45)
  %47 = load i64, i64* @REG, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %119

49:                                               ; preds = %44
  %50 = load i64, i64* %13, align 8
  %51 = call i64 @REGNO(i64 %50)
  %52 = load i64, i64* %14, align 8
  %53 = call i64 @REGNO(i64 %52)
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %55, label %119

55:                                               ; preds = %49, %35, %32
  %56 = load i32, i32* @after_arm_reorg, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %118, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %16, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %118, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i64, i64* @NULL_RTX, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %14, align 8
  %68 = call i32 @arm_gen_constant(i32 %62, i32 %63, i64 %64, i32 %65, i64 %66, i64 %67, i32 1, i32 0)
  %69 = load i32, i32* @arm_constant_limit, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @SET, align 4
  %72 = icmp ne i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = add nsw i32 %69, %73
  %75 = icmp sgt i32 %68, %74
  br i1 %75, label %76, label %118

76:                                               ; preds = %61
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SET, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i64, i64* %13, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @GEN_INT(i32 %82)
  %84 = call i32 @emit_set_insn(i64 %81, i32 %83)
  store i32 1, i32* %8, align 4
  br label %128

85:                                               ; preds = %76
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @gen_reg_rtx(i32 %89)
  br label %93

91:                                               ; preds = %85
  %92 = load i64, i64* %13, align 8
  br label %93

93:                                               ; preds = %91, %88
  %94 = phi i64 [ %90, %88 ], [ %92, %91 ]
  store i64 %94, i64* %17, align 8
  %95 = load i64, i64* %17, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @GEN_INT(i32 %96)
  %98 = call i32 @emit_set_insn(i64 %95, i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @MINUS, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %93
  %103 = load i64, i64* %13, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i64, i64* %17, align 8
  %106 = load i64, i64* %14, align 8
  %107 = call i32 @gen_rtx_MINUS(i32 %104, i64 %105, i64 %106)
  %108 = call i32 @emit_set_insn(i64 %103, i32 %107)
  br label %117

109:                                              ; preds = %93
  %110 = load i64, i64* %13, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* %17, align 8
  %115 = call i32 @gen_rtx_fmt_ee(i32 %111, i32 %112, i64 %113, i64 %114)
  %116 = call i32 @emit_set_insn(i64 %110, i32 %115)
  br label %117

117:                                              ; preds = %109, %102
  store i32 2, i32* %8, align 4
  br label %128

118:                                              ; preds = %61, %58, %55
  br label %119

119:                                              ; preds = %118, %49, %44, %39
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i64, i64* %16, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* %14, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @arm_gen_constant(i32 %120, i32 %121, i64 %122, i32 %123, i64 %124, i64 %125, i32 %126, i32 1)
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %119, %117, %80
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @COND_EXEC_TEST(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i32 @arm_gen_constant(i32, i32, i64, i32, i64, i64, i32, i32) #1

declare dso_local i32 @emit_set_insn(i64, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @gen_rtx_MINUS(i32, i64, i64) #1

declare dso_local i32 @gen_rtx_fmt_ee(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
