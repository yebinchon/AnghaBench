; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_attributes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"__attribute__\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_c_attributes(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NULL_TREE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %49

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @pp_c_identifier(i32* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @pp_c_left_paren(i32* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @pp_c_left_paren(i32* %14)
  br label %16

16:                                               ; preds = %41, %9
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @NULL_TREE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @TREE_PURPOSE(i64 %22)
  %24 = call i32 @pp_tree_identifier(i32* %21, i32 %23)
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @TREE_VALUE(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i32*, i32** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @TREE_VALUE(i64 %30)
  %32 = call i32 @pp_c_call_argument_list(i32* %29, i64 %31)
  br label %33

33:                                               ; preds = %28, %20
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @TREE_CHAIN(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @pp_separate_with(i32* %38, i8 signext 44)
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @TREE_CHAIN(i64 %42)
  store i64 %43, i64* %4, align 8
  br label %16

44:                                               ; preds = %16
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @pp_c_right_paren(i32* %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @pp_c_right_paren(i32* %47)
  br label %49

49:                                               ; preds = %44, %8
  ret void
}

declare dso_local i32 @pp_c_identifier(i32*, i8*) #1

declare dso_local i32 @pp_c_left_paren(i32*) #1

declare dso_local i32 @pp_tree_identifier(i32*, i32) #1

declare dso_local i32 @TREE_PURPOSE(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @pp_c_call_argument_list(i32*, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @pp_separate_with(i32*, i8 signext) #1

declare dso_local i32 @pp_c_right_paren(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
