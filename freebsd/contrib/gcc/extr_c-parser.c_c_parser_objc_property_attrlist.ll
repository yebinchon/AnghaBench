; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_property_attrlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_property_attrlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@CPP_EOF = common dso_local global i32 0, align 4
@CPP_COMMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"property attributes must be separated by a comma\00", align 1
@CPP_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_objc_property_attrlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_objc_property_attrlist(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  br label %3

3:                                                ; preds = %47, %1
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %6 = call i64 @c_parser_next_token_is_not(i32* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @CPP_EOF, align 4
  %11 = call i64 @c_parser_next_token_is_not(i32* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i1 [ false, %3 ], [ %12, %8 ]
  br i1 %14, label %15, label %48

15:                                               ; preds = %13
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @c_parser_objc_property_attribute(i32* %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @CPP_COMMA, align 4
  %20 = call i64 @c_parser_next_token_is_not(i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %25 = call i64 @c_parser_next_token_is_not(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @CPP_EOF, align 4
  %30 = call i64 @c_parser_next_token_is_not(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @warning(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %27, %22, %15
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @CPP_COMMA, align 4
  %37 = call i64 @c_parser_next_token_is(i32* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @CPP_NAME, align 4
  %42 = call i64 @c_parser_next_token_is(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %34
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @c_parser_consume_token(i32* %45)
  br label %47

47:                                               ; preds = %44, %39
  br label %3

48:                                               ; preds = %13
  ret void
}

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

declare dso_local i32 @c_parser_objc_property_attribute(i32*) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
