; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_zero_extend_to_Pmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_zero_extend_to_Pmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i64 0, align 8
@Pmode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_zero_extend_to_Pmode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @GET_MODE(i32 %5)
  %7 = load i64, i64* @VOIDmode, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i64, i64* @Pmode, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @force_reg(i64 %10, i32 %11)
  store i32 %12, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @GET_MODE(i32 %14)
  %16 = load i64, i64* @Pmode, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i64, i64* @Pmode, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @copy_to_mode_reg(i64 %19, i32 %20)
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %13
  %23 = load i64, i64* @Pmode, align 8
  %24 = call i32 @gen_reg_rtx(i64 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @gen_zero_extendsidi2(i32 %25, i32 %26)
  %28 = call i32 @emit_insn(i32 %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %22, %18, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @force_reg(i64, i32) #1

declare dso_local i32 @copy_to_mode_reg(i64, i32) #1

declare dso_local i32 @gen_reg_rtx(i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_zero_extendsidi2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
