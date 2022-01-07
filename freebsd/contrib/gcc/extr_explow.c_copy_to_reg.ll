; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_copy_to_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_copy_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @copy_to_reg(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @GET_MODE(i64 %4)
  %6 = call i64 @gen_reg_rtx(i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i32, i32* @VOIDmode, align 4
  %9 = call i32 @general_operand(i64 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @force_operand(i64 %12, i64 %13)
  store i64 %14, i64* %2, align 8
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @emit_move_insn(i64 %20, i64 %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i64, i64* %3, align 8
  ret i64 %24
}

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @general_operand(i64, i32) #1

declare dso_local i64 @force_operand(i64, i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
