; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_load_call_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_load_call_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_EXPLICIT_RELOCS = common dso_local global i64 0, align 8
@TARGET_NEWABI = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@pic_offset_table_rtx = common dso_local global i32 0, align 4
@SYMBOL_GOTOFF_CALL = common dso_local global i32 0, align 4
@Pmode = common dso_local global i64 0, align 8
@SImode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @mips_load_call_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_load_call_address(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @TARGET_EXPLICIT_RELOCS, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i64, i64* @TARGET_NEWABI, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @VOIDmode, align 4
  %20 = call i64 @global_got_operand(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @pic_offset_table_rtx, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SYMBOL_GOTOFF_CALL, align 4
  %27 = call i32 @mips_unspec_offset_high(i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SYMBOL_GOTOFF_CALL, align 4
  %30 = call i32 @mips_unspec_address(i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i64, i64* @Pmode, align 8
  %32 = load i64, i64* @SImode, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %22
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @gen_load_callsi(i32 %35, i32 %36, i32 %37)
  %39 = call i32 @emit_insn(i32 %38)
  br label %46

40:                                               ; preds = %22
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @gen_load_calldi(i32 %41, i32 %42, i32 %43)
  %45 = call i32 @emit_insn(i32 %44)
  br label %46

46:                                               ; preds = %40, %34
  br label %51

47:                                               ; preds = %17, %14, %3
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @emit_move_insn(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %46
  ret void
}

declare dso_local i64 @global_got_operand(i32, i32) #1

declare dso_local i32 @mips_unspec_offset_high(i32, i32, i32, i32) #1

declare dso_local i32 @mips_unspec_address(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_load_callsi(i32, i32, i32) #1

declare dso_local i32 @gen_load_calldi(i32, i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
