; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_exception_specification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_exception_specification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @pp_cxx_exception_specification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_exception_specification(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32* @TYPE_RAISES_EXCEPTIONS(i32* %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @TYPE_NOTHROW_P(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %47

15:                                               ; preds = %11, %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @pp_cxx_identifier(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @pp_cxx_left_paren(i32* %18)
  br label %20

20:                                               ; preds = %41, %15
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = call i64 @TREE_VALUE(i32* %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i1 [ false, %20 ], [ %26, %23 ]
  br i1 %28, label %29, label %44

29:                                               ; preds = %27
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @TREE_VALUE(i32* %31)
  %33 = call i32 @pp_cxx_type_id(i32* %30, i64 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32* @TREE_CHAIN(i32* %34)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @pp_cxx_separate_with(i32* %38, i8 signext 44)
  br label %40

40:                                               ; preds = %37, %29
  br label %41

41:                                               ; preds = %40
  %42 = load i32*, i32** %5, align 8
  %43 = call i32* @TREE_CHAIN(i32* %42)
  store i32* %43, i32** %5, align 8
  br label %20

44:                                               ; preds = %27
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @pp_cxx_right_paren(i32* %45)
  br label %47

47:                                               ; preds = %44, %14
  ret void
}

declare dso_local i32* @TYPE_RAISES_EXCEPTIONS(i32*) #1

declare dso_local i32 @TYPE_NOTHROW_P(i32*) #1

declare dso_local i32 @pp_cxx_identifier(i32*, i8*) #1

declare dso_local i32 @pp_cxx_left_paren(i32*) #1

declare dso_local i64 @TREE_VALUE(i32*) #1

declare dso_local i32 @pp_cxx_type_id(i32*, i64) #1

declare dso_local i32* @TREE_CHAIN(i32*) #1

declare dso_local i32 @pp_cxx_separate_with(i32*, i8 signext) #1

declare dso_local i32 @pp_cxx_right_paren(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
