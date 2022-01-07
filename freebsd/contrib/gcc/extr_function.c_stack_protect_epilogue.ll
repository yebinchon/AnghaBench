; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_stack_protect_epilogue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_stack_protect_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (...)*, i32 (...)* }
%struct.TYPE_4__ = type { i32 }

@targetm = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@HAVE_stack_protect_test = common dso_local global i64 0, align 8
@EQ = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@ptr_mode = common dso_local global i32 0, align 4
@PRED_NORETURN = common dso_local global i32 0, align 4
@TAKEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_protect_epilogue() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @targetm, i32 0, i32 1), align 8
  %7 = call i32 (...) %6()
  store i32 %7, i32* %1, align 4
  %8 = call i64 (...) @gen_label_rtx()
  store i64 %8, i64* %2, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @DECL_RTL(i32 %11)
  %13 = call i64 @validize_mem(i32 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @DECL_RTL(i32 %14)
  %16 = call i64 @validize_mem(i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* @HAVE_stack_protect_test, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %0
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @gen_stack_protect_test(i64 %20, i64 %21, i64 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @emit_insn(i64 %27)
  br label %38

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %0
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* @EQ, align 4
  %34 = load i32, i32* @NULL_RTX, align 4
  %35 = load i32, i32* @ptr_mode, align 4
  %36 = load i64, i64* %2, align 8
  %37 = call i32 @emit_cmp_and_jump_insns(i64 %31, i64 %32, i32 %33, i32 %34, i32 %35, i32 1, i64 %36)
  br label %38

38:                                               ; preds = %30, %26
  %39 = call i64 (...) @get_last_insn()
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @JUMP_P(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* @PRED_NORETURN, align 4
  %46 = load i32, i32* @TAKEN, align 4
  %47 = call i32 @predict_insn_def(i64 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @targetm, i32 0, i32 0), align 8
  %50 = call i32 (...) %49()
  %51 = call i32 @expand_expr_stmt(i32 %50)
  %52 = load i64, i64* %2, align 8
  %53 = call i32 @emit_label(i64 %52)
  ret void
}

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i64 @validize_mem(i32) #1

declare dso_local i32 @DECL_RTL(i32) #1

declare dso_local i64 @gen_stack_protect_test(i64, i64, i64) #1

declare dso_local i32 @emit_insn(i64) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i64, i64, i32, i32, i32, i32, i64) #1

declare dso_local i64 @get_last_insn(...) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i32 @predict_insn_def(i64, i32, i32) #1

declare dso_local i32 @expand_expr_stmt(i32) #1

declare dso_local i32 @emit_label(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
