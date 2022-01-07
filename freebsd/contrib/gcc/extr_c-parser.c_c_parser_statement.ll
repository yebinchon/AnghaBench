; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@RID_CASE = common dso_local global i32 0, align 4
@RID_DEFAULT = common dso_local global i32 0, align 4
@CPP_NAME = common dso_local global i32 0, align 4
@CPP_COLON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_statement(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  br label %3

3:                                                ; preds = %29, %1
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @RID_CASE, align 4
  %6 = call i64 @c_parser_next_token_is_keyword(i32* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @RID_DEFAULT, align 4
  %11 = call i64 @c_parser_next_token_is_keyword(i32* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %8
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @CPP_NAME, align 4
  %16 = call i64 @c_parser_next_token_is(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i32*, i32** %2, align 8
  %20 = call %struct.TYPE_2__* @c_parser_peek_2nd_token(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CPP_COLON, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %18, %13
  %26 = phi i1 [ false, %13 ], [ %24, %18 ]
  br label %27

27:                                               ; preds = %25, %8, %3
  %28 = phi i1 [ true, %8 ], [ true, %3 ], [ %26, %25 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @c_parser_label(i32* %30)
  br label %3

32:                                               ; preds = %27
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @c_parser_statement_after_labels(i32* %33)
  ret void
}

declare dso_local i64 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @c_parser_peek_2nd_token(i32*) #1

declare dso_local i32 @c_parser_label(i32*) #1

declare dso_local i32 @c_parser_statement_after_labels(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
