; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_emit_store_flag_force.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_emit_store_flag_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@const1_rtx = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @emit_store_flag_force(i64 %0, i32 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i64, i64* %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = call i64 @emit_store_flag(i64 %18, i32 %19, i64 %20, i64 %21, i32 %22, i32 %23, i32 %24)
  store i64 %25, i64* %16, align 8
  %26 = load i64, i64* %16, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i64, i64* %16, align 8
  store i64 %29, i64* %8, align 8
  br label %72

30:                                               ; preds = %7
  %31 = load i32, i32* %15, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %15, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @REG_P(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @reg_mentioned_p(i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i64 @reg_mentioned_p(i64 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43, %38, %34
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @GET_MODE(i64 %49)
  %51 = call i64 @gen_reg_rtx(i32 %50)
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* @const1_rtx, align 4
  %55 = call i32 @emit_move_insn(i64 %53, i32 %54)
  %56 = call i64 (...) @gen_label_rtx()
  store i64 %56, i64* %17, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @NULL_RTX, align 4
  %63 = load i32, i32* @NULL_RTX, align 4
  %64 = load i64, i64* %17, align 8
  %65 = call i32 @do_compare_rtx_and_jump(i64 %57, i64 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i64 %64)
  %66 = load i64, i64* %9, align 8
  %67 = load i32, i32* @const0_rtx, align 4
  %68 = call i32 @emit_move_insn(i64 %66, i32 %67)
  %69 = load i64, i64* %17, align 8
  %70 = call i32 @emit_label(i64 %69)
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %52, %28
  %73 = load i64, i64* %8, align 8
  ret i64 %73
}

declare dso_local i64 @emit_store_flag(i64, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @reg_mentioned_p(i64, i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @emit_move_insn(i64, i32) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i32 @do_compare_rtx_and_jump(i64, i64, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @emit_label(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
