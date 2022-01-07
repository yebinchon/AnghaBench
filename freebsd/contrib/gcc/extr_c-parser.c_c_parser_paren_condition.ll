; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_paren_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_paren_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CPP_OPEN_PAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"expected %<(%>\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@CPP_CLOSE_PAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @c_parser_paren_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_parser_paren_condition(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @CPP_OPEN_PAREN, align 4
  %9 = call i32 @c_parser_require(i32* %7, i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @error_mark_node, align 4
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.TYPE_3__* @c_parser_peek_token(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @c_parser_expression_conv(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @c_objc_common_truthvalue_conversion(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @EXPR_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %13
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @SET_EXPR_LOCATION(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %13
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @CPP_CLOSE_PAREN, align 4
  %34 = call i32 @c_parser_skip_until_found(i32* %32, i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @c_parser_require(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_3__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @c_objc_common_truthvalue_conversion(i32) #1

declare dso_local i32 @c_parser_expression_conv(i32*) #1

declare dso_local i64 @EXPR_P(i32) #1

declare dso_local i32 @SET_EXPR_LOCATION(i32, i32) #1

declare dso_local i32 @c_parser_skip_until_found(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
