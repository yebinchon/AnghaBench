; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_message_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_message_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@CPP_COLON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<:%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @c_parser_objc_message_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @c_parser_objc_message_args(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @c_parser_objc_selector(i32* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* @NULL_TREE, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @CPP_COLON, align 4
  %15 = call i64 @c_parser_next_token_is_not(i32* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %2, align 8
  br label %48

19:                                               ; preds = %12, %1
  br label %20

20:                                               ; preds = %19, %45
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @CPP_COLON, align 4
  %23 = call i32 @c_parser_require(i32* %21, i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* %2, align 8
  br label %48

27:                                               ; preds = %20
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @c_parser_objc_keywordexpr(i32* %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @build_tree_list(i64 %31, i64 %32)
  %34 = call i64 @chainon(i64 %30, i32 %33)
  store i64 %34, i64* %5, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @c_parser_objc_selector(i32* %35)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %27
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @CPP_COLON, align 4
  %42 = call i64 @c_parser_next_token_is_not(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %46

45:                                               ; preds = %39, %27
  br label %20

46:                                               ; preds = %44
  %47 = load i64, i64* %5, align 8
  store i64 %47, i64* %2, align 8
  br label %48

48:                                               ; preds = %46, %25, %17
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i64 @c_parser_objc_selector(i32*) #1

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

declare dso_local i32 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i64 @c_parser_objc_keywordexpr(i32*) #1

declare dso_local i64 @chainon(i64, i32) #1

declare dso_local i32 @build_tree_list(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
