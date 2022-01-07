; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ix86_compare_op0 = common dso_local global i8* null, align 8
@ix86_compare_op1 = common dso_local global i8* null, align 8
@NULL_RTX = common dso_local global i8* null, align 8
@ix86_compare_emitted = common dso_local global i8* null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ix86_expand_compare(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = load i8*, i8** @ix86_compare_op0, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** @ix86_compare_op1, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** @NULL_RTX, align 8
  %16 = load i8**, i8*** %5, align 8
  store i8* %15, i8** %16, align 8
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i8**, i8*** %6, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** @NULL_RTX, align 8
  %22 = load i8**, i8*** %6, align 8
  store i8* %21, i8** %22, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i8*, i8** @ix86_compare_emitted, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @VOIDmode, align 4
  %29 = load i8*, i8** @ix86_compare_emitted, align 8
  %30 = load i32, i32* @const0_rtx, align 4
  %31 = call i8* @gen_rtx_fmt_ee(i32 %27, i32 %28, i8* %29, i32 %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** @NULL_RTX, align 8
  store i8* %32, i8** @ix86_compare_emitted, align 8
  br label %52

33:                                               ; preds = %23
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @GET_MODE(i8* %34)
  %36 = call i64 @SCALAR_FLOAT_MODE_P(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** @NULL_RTX, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = call i8* @ix86_expand_fp_compare(i32 %39, i8* %40, i8* %41, i8* %42, i8** %43, i8** %44)
  store i8* %45, i8** %9, align 8
  br label %51

46:                                               ; preds = %33
  %47 = load i32, i32* %4, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i8* @ix86_expand_int_compare(i32 %47, i8* %48, i8* %49)
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %46, %38
  br label %52

52:                                               ; preds = %51, %26
  %53 = load i8*, i8** %9, align 8
  ret i8* %53
}

declare dso_local i8* @gen_rtx_fmt_ee(i32, i32, i8*, i32) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i32 @GET_MODE(i8*) #1

declare dso_local i8* @ix86_expand_fp_compare(i32, i8*, i8*, i8*, i8**, i8**) #1

declare dso_local i8* @ix86_expand_int_compare(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
