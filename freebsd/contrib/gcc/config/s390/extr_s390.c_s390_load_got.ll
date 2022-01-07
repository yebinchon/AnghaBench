; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_load_got.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_load_got.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@got_symbol = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"_GLOBAL_OFFSET_TABLE_\00", align 1
@SYMBOL_FLAG_LOCAL = common dso_local global i32 0, align 4
@TARGET_CPU_ZARCH = common dso_local global i64 0, align 8
@pic_offset_table_rtx = common dso_local global i32 0, align 4
@UNSPEC_LTREL_OFFSET = common dso_local global i32 0, align 4
@UNSPEC_LTREL_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @s390_load_got() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i64, i64* @got_symbol, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @Pmode, align 4
  %8 = call i64 @gen_rtx_SYMBOL_REF(i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 %8, i64* @got_symbol, align 8
  %9 = load i32, i32* @SYMBOL_FLAG_LOCAL, align 4
  store i32 %9, i32* %2, align 4
  br label %10

10:                                               ; preds = %6, %0
  %11 = call i32 (...) @start_sequence()
  %12 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @pic_offset_table_rtx, align 4
  %16 = load i64, i64* @got_symbol, align 8
  %17 = call i32 @emit_move_insn(i32 %15, i64 %16)
  br label %46

18:                                               ; preds = %10
  %19 = load i32, i32* @Pmode, align 4
  %20 = load i64, i64* @got_symbol, align 8
  %21 = call i32 @gen_rtvec(i32 1, i64 %20)
  %22 = load i32, i32* @UNSPEC_LTREL_OFFSET, align 4
  %23 = call i64 @gen_rtx_UNSPEC(i32 %19, i32 %21, i32 %22)
  store i64 %23, i64* %3, align 8
  %24 = load i32, i32* @Pmode, align 4
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @gen_rtx_CONST(i32 %24, i64 %25)
  store i64 %26, i64* %3, align 8
  %27 = load i32, i32* @Pmode, align 4
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @force_const_mem(i32 %27, i64 %28)
  store i64 %29, i64* %3, align 8
  %30 = load i32, i32* @pic_offset_table_rtx, align 4
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @emit_move_insn(i32 %30, i64 %31)
  %33 = load i32, i32* @Pmode, align 4
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @XEXP(i64 %34, i32 0)
  %36 = call i32 @gen_rtvec(i32 1, i64 %35)
  %37 = load i32, i32* @UNSPEC_LTREL_BASE, align 4
  %38 = call i64 @gen_rtx_UNSPEC(i32 %33, i32 %36, i32 %37)
  store i64 %38, i64* %3, align 8
  %39 = load i32, i32* @Pmode, align 4
  %40 = load i32, i32* @pic_offset_table_rtx, align 4
  %41 = load i64, i64* %3, align 8
  %42 = call i64 @gen_rtx_PLUS(i32 %39, i32 %40, i64 %41)
  store i64 %42, i64* %3, align 8
  %43 = load i32, i32* @pic_offset_table_rtx, align 4
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @emit_move_insn(i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %18, %14
  %47 = call i64 (...) @get_insns()
  store i64 %47, i64* %1, align 8
  %48 = call i32 (...) @end_sequence()
  %49 = load i64, i64* %1, align 8
  ret i64 %49
}

declare dso_local i64 @gen_rtx_SYMBOL_REF(i32, i8*) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @emit_move_insn(i32, i64) #1

declare dso_local i64 @gen_rtx_UNSPEC(i32, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i64) #1

declare dso_local i64 @gen_rtx_CONST(i32, i64) #1

declare dso_local i64 @force_const_mem(i32, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i32, i64) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
