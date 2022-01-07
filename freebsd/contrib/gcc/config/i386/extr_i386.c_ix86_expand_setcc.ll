; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_setcc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_setcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ix86_compare_op0 = common dso_local global i64 0, align 8
@TARGET_64BIT = common dso_local global i64 0, align 8
@TImode = common dso_local global i64 0, align 8
@DImode = common dso_local global i64 0, align 8
@QImode = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@ix86_compare_op1 = common dso_local global i64 0, align 8
@REG_EQUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_expand_setcc(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %15 = load i64, i64* @ix86_compare_op0, align 8
  %16 = call i64 @GET_MODE(i64 %15)
  %17 = load i64, i64* @TARGET_64BIT, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @TImode, align 8
  br label %23

21:                                               ; preds = %2
  %22 = load i64, i64* @DImode, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  %25 = icmp eq i64 %16, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %112

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @GET_MODE(i64 %28)
  %30 = load i64, i64* @QImode, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @gcc_assert(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @ix86_expand_compare(i32 %34, i64* %10, i64* %11)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @QImode, align 8
  %38 = call i32 @PUT_MODE(i64 %36, i64 %37)
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %8, align 8
  %41 = load i32, i32* @VOIDmode, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @gen_rtx_SET(i32 %41, i64 %42, i64 %43)
  %45 = call i32 @emit_insn(i32 %44)
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %27
  %49 = load i64, i64* %10, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %93

51:                                               ; preds = %48, %27
  %52 = load i64, i64* %10, align 8
  store i64 %52, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %53 = load i64, i64* @QImode, align 8
  %54 = call i64 @gen_reg_rtx(i64 %53)
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @gcc_assert(i32 %61)
  %63 = load i64, i64* %11, align 8
  store i64 %63, i64* %12, align 8
  store i32 1, i32* %13, align 4
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @GET_CODE(i64 %65)
  %67 = call i32 @reverse_condition_maybe_unordered(i32 %66)
  %68 = call i32 @PUT_CODE(i64 %64, i32 %67)
  br label %69

69:                                               ; preds = %57, %51
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* @QImode, align 8
  %72 = call i32 @PUT_MODE(i64 %70, i64 %71)
  %73 = load i32, i32* @VOIDmode, align 4
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @gen_rtx_SET(i32 %73, i64 %74, i64 %75)
  %77 = call i32 @emit_insn(i32 %76)
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %69
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @gen_andqi3(i64 %81, i64 %82, i64 %83)
  %85 = call i32 @emit_insn(i32 %84)
  br label %92

86:                                               ; preds = %69
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %14, align 8
  %90 = call i32 @gen_iorqi3(i64 %87, i64 %88, i64 %89)
  %91 = call i32 @emit_insn(i32 %90)
  br label %92

92:                                               ; preds = %86, %80
  br label %93

93:                                               ; preds = %92, %48
  %94 = load i64, i64* @ix86_compare_op0, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load i64, i64* @ix86_compare_op1, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load i32, i32* %4, align 4
  %101 = load i64, i64* @QImode, align 8
  %102 = load i64, i64* @ix86_compare_op0, align 8
  %103 = call i64 @GET_MODE(i64 %102)
  %104 = load i64, i64* @ix86_compare_op0, align 8
  %105 = load i64, i64* @ix86_compare_op1, align 8
  %106 = call i64 @simplify_gen_relational(i32 %100, i64 %101, i64 %103, i64 %104, i64 %105)
  store i64 %106, i64* %9, align 8
  %107 = call i32 (...) @get_last_insn()
  %108 = load i32, i32* @REG_EQUAL, align 4
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @set_unique_reg_note(i32 %107, i32 %108, i64 %109)
  br label %111

111:                                              ; preds = %99, %96, %93
  store i32 1, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %26
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @ix86_expand_compare(i32, i64*, i64*) #1

declare dso_local i32 @PUT_MODE(i64, i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i64 @gen_reg_rtx(i64) #1

declare dso_local i32 @PUT_CODE(i64, i32) #1

declare dso_local i32 @reverse_condition_maybe_unordered(i32) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @gen_andqi3(i64, i64, i64) #1

declare dso_local i32 @gen_iorqi3(i64, i64, i64) #1

declare dso_local i64 @simplify_gen_relational(i32, i64, i64, i64, i64) #1

declare dso_local i32 @set_unique_reg_note(i32, i32, i64) #1

declare dso_local i32 @get_last_insn(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
