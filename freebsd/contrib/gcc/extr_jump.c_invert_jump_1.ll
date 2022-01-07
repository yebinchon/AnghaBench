; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_invert_jump_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_invert_jump_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @invert_jump_1(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @pc_set(i64 %9)
  store i64 %10, i64* %6, align 8
  %11 = call i32 (...) @num_validated_changes()
  store i32 %11, i32* %7, align 4
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @SET_SRC(i64 %15)
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @invert_exp_1(i32 %16, i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @gcc_assert(i32 %19)
  %21 = call i32 (...) @num_validated_changes()
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @JUMP_LABEL(i64 %27)
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @redirect_jump_1(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ true, %25 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @pc_set(i64) #1

declare dso_local i32 @num_validated_changes(...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @invert_exp_1(i32, i64) #1

declare dso_local i32 @SET_SRC(i64) #1

declare dso_local i64 @JUMP_LABEL(i64) #1

declare dso_local i64 @redirect_jump_1(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
