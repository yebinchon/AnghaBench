; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_args_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_args_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TFF_CLASS_KEY_OR_ENUM = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@null_node = common dso_local global i64 0, align 8
@cxx_pp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32)* @args_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @args_to_string(i64 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @TFF_CLASS_KEY_OR_ENUM, align 4
  %11 = load i32, i32* %6, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @NULL_TREE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %60

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @TREE_VALUE(i64 %19)
  %21 = call i64 @TYPE_P(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i8* @type_as_string(i64 %24, i32 %25)
  store i8* %26, i8** %3, align 8
  br label %60

27:                                               ; preds = %18
  %28 = call i32 (...) @reinit_cxx_pp()
  br label %29

29:                                               ; preds = %54, %27
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @TREE_VALUE(i64 %33)
  %35 = load i64, i64* @null_node, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @cxx_pp, align 4
  %39 = call i32 @pp_cxx_identifier(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %46

40:                                               ; preds = %32
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @TREE_VALUE(i64 %41)
  %43 = call i32 @error_type(i64 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dump_type(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @TREE_CHAIN(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @cxx_pp, align 4
  %52 = call i32 @pp_separate_with_comma(i32 %51)
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @TREE_CHAIN(i64 %55)
  store i64 %56, i64* %4, align 8
  br label %29

57:                                               ; preds = %29
  %58 = load i32, i32* @cxx_pp, align 4
  %59 = call i8* @pp_formatted_text(i32 %58)
  store i8* %59, i8** %3, align 8
  br label %60

60:                                               ; preds = %57, %23, %17
  %61 = load i8*, i8** %3, align 8
  ret i8* %61
}

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i8* @type_as_string(i64, i32) #1

declare dso_local i32 @reinit_cxx_pp(...) #1

declare dso_local i32 @pp_cxx_identifier(i32, i8*) #1

declare dso_local i32 @dump_type(i32, i32) #1

declare dso_local i32 @error_type(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @pp_separate_with_comma(i32) #1

declare dso_local i8* @pp_formatted_text(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
