; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_synchronized_statement.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_synchronized_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@RID_AT_SYNCHRONIZED = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<(%>\00", align 1
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_objc_synchronized_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_objc_synchronized_statement(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @RID_AT_SYNCHRONIZED, align 4
  %9 = call i32 @c_parser_next_token_is_keyword(i32* %7, i32 %8)
  %10 = call i32 @gcc_assert(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @c_parser_consume_token(i32* %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %19 = call i64 @c_parser_require(i32* %17, i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @c_parser_expression(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %29 = call i32 @c_parser_skip_until_found(i32* %27, i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @error_mark_node, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %21
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @c_parser_objc_synch_compound_statement(i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @objc_build_synchronized(i32 %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @c_parser_next_token_is_keyword(i32*, i32) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local %struct.TYPE_3__* @c_parser_peek_token(i32*) #1

declare dso_local i64 @c_parser_require(i32*, i32, i8*) #1

declare dso_local i32 @c_parser_expression(i32*) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

declare dso_local i32 @c_parser_objc_synch_compound_statement(i32*) #1

declare dso_local i32 @objc_build_synchronized(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
