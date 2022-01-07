; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_exception_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_exception_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cxx_pp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @dump_exception_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_exception_spec(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %2
  %8 = load i32, i32* @cxx_pp, align 4
  %9 = call i32 @pp_cxx_identifier(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @cxx_pp, align 4
  %11 = call i32 @pp_cxx_whitespace(i32 %10)
  %12 = load i32, i32* @cxx_pp, align 4
  %13 = call i32 @pp_cxx_left_paren(i32 %12)
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @TREE_VALUE(i64 %14)
  %16 = load i64, i64* @NULL_TREE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %7
  br label %19

19:                                               ; preds = %18, %29
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @TREE_VALUE(i64 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dump_type(i64 %21, i32 %22)
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @TREE_CHAIN(i64 %24)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @cxx_pp, align 4
  %31 = call i32 @pp_separate_with_comma(i32 %30)
  br label %19

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %7
  %34 = load i32, i32* @cxx_pp, align 4
  %35 = call i32 @pp_cxx_right_paren(i32 %34)
  br label %36

36:                                               ; preds = %33, %2
  ret void
}

declare dso_local i32 @pp_cxx_identifier(i32, i8*) #1

declare dso_local i32 @pp_cxx_whitespace(i32) #1

declare dso_local i32 @pp_cxx_left_paren(i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @dump_type(i64, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @pp_separate_with_comma(i32) #1

declare dso_local i32 @pp_cxx_right_paren(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
