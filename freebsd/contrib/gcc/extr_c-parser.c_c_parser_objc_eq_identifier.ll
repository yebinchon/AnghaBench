; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_eq_identifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_eq_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CPP_EQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<=%>\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4
@CPP_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"expected identifier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @c_parser_objc_eq_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_parser_objc_eq_identifier(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @CPP_EQ, align 4
  %7 = call i64 @c_parser_next_token_is_not(i32* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @c_parser_error(i32* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @NULL_TREE, align 4
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @c_parser_consume_token(i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @CPP_NAME, align 4
  %18 = call i64 @c_parser_next_token_is_not(i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @c_parser_error(i32* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @NULL_TREE, align 4
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %13
  %25 = load i32*, i32** %3, align 8
  %26 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @c_parser_consume_token(i32* %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %20, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
