; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_copy_to_mode_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_copy_to_mode_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @copy_to_mode_reg(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @gen_reg_rtx(i32 %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @VOIDmode, align 8
  %10 = call i32 @general_operand(i64 %8, i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @force_operand(i64 %13, i64 %14)
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @GET_MODE(i64 %17)
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @GET_MODE(i64 %23)
  %25 = load i64, i64* @VOIDmode, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi i1 [ true, %16 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @gcc_assert(i32 %29)
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @emit_move_insn(i64 %35, i64 %36)
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @general_operand(i64, i64) #1

declare dso_local i64 @force_operand(i64, i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
