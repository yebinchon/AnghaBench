; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_selector_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_selector_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@CPP_COLON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<:%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @c_parser_objc_selector_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @c_parser_objc_selector_arg(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @c_parser_objc_selector(i32* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* @NULL_TREE, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @CPP_COLON, align 4
  %14 = call i64 @c_parser_next_token_is_not(i32* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* %2, align 8
  br label %45

18:                                               ; preds = %11, %1
  br label %19

19:                                               ; preds = %18, %42
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @CPP_COLON, align 4
  %22 = call i32 @c_parser_require(i32* %20, i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* %2, align 8
  br label %45

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @NULL_TREE, align 8
  %30 = call i32 @build_tree_list(i64 %28, i64 %29)
  %31 = call i64 @chainon(i64 %27, i32 %30)
  store i64 %31, i64* %5, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @c_parser_objc_selector(i32* %32)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %26
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @CPP_COLON, align 4
  %39 = call i64 @c_parser_next_token_is_not(i32* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %43

42:                                               ; preds = %36, %26
  br label %19

43:                                               ; preds = %41
  %44 = load i64, i64* %5, align 8
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %43, %24, %16
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

declare dso_local i64 @c_parser_objc_selector(i32*) #1

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

declare dso_local i32 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i64 @chainon(i64, i32) #1

declare dso_local i32 @build_tree_list(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
