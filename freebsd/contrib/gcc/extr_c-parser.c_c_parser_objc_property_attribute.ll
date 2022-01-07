; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_property_attribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_objc_property_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@CPP_KEYWORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"expected a property attribute\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4
@CPP_COLON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_objc_property_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_objc_property_attribute(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CPP_KEYWORD, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @c_parser_error(i32* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @c_parser_consume_token(i32* %13)
  br label %65

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call %struct.TYPE_2__* @c_parser_peek_token(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %60 [
    i32 129, label %20
    i32 131, label %25
    i32 128, label %36
    i32 130, label %55
  ]

20:                                               ; preds = %15
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @c_parser_consume_token(i32* %21)
  %23 = load i32, i32* @NULL_TREE, align 4
  %24 = call i32 @objc_set_property_attr(i32 1, i32 %23)
  br label %65

25:                                               ; preds = %15
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @c_parser_consume_token(i32* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @c_parser_objc_eq_identifier(i32* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @objc_set_property_attr(i32 2, i32 %33)
  br label %35

35:                                               ; preds = %32, %25
  br label %65

36:                                               ; preds = %15
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @c_parser_consume_token(i32* %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @c_parser_objc_eq_identifier(i32* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @objc_set_property_attr(i32 3, i32 %44)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @CPP_COLON, align 4
  %49 = call i32 @c_parser_next_token_is(i32* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @c_parser_consume_token(i32* %52)
  br label %54

54:                                               ; preds = %51, %46
  br label %65

55:                                               ; preds = %15
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @c_parser_consume_token(i32* %56)
  %58 = load i32, i32* @NULL_TREE, align 4
  %59 = call i32 @objc_set_property_attr(i32 13, i32 %58)
  br label %65

60:                                               ; preds = %15
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @c_parser_error(i32* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @c_parser_consume_token(i32* %63)
  br label %65

65:                                               ; preds = %10, %60, %55, %54, %35, %20
  ret void
}

declare dso_local %struct.TYPE_2__* @c_parser_peek_token(i32*) #1

declare dso_local i32 @c_parser_error(i32*, i8*) #1

declare dso_local i32 @c_parser_consume_token(i32*) #1

declare dso_local i32 @objc_set_property_attr(i32, i32) #1

declare dso_local i32 @c_parser_objc_eq_identifier(i32*) #1

declare dso_local i32 @c_parser_next_token_is(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
