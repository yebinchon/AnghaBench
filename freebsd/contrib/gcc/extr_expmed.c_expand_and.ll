; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_expand_and.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expmed.c_expand_and.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i64 0, align 8
@AND = common dso_local global i32 0, align 4
@and_optab = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @expand_and(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @GET_MODE(i64 %10)
  %12 = load i64, i64* @VOIDmode, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @GET_MODE(i64 %15)
  %17 = load i64, i64* @VOIDmode, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* @AND, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @simplify_binary_operation(i32 %20, i32 %21, i64 %22, i64 %23)
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %19, %14, %4
  %26 = load i64, i64* %9, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @and_optab, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %35 = call i64 @expand_binop(i32 %29, i32 %30, i64 %31, i64 %32, i64 %33, i32 0, i32 %34)
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %28, %25
  %37 = load i64, i64* %8, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %8, align 8
  br label %50

41:                                               ; preds = %36
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @emit_move_insn(i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %39
  %51 = load i64, i64* %8, align 8
  ret i64 %51
}

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @simplify_binary_operation(i32, i32, i64, i64) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
