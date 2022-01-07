; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_namespace_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_namespace_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@none_type = common dso_local global i32 0, align 4
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"%qD is not a namespace-name\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"expected namespace-name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @cp_parser_namespace_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_namespace_name(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @cp_parser_identifier(i32* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @error_mark_node, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* @error_mark_node, align 8
  store i64 %12, i64* %2, align 8
  br label %39

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* @none_type, align 4
  %17 = call i64 @cp_parser_lookup_name(i32* %14, i64 %15, i32 %16, i32 0, i32 1, i32 1, i32* null)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @error_mark_node, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %13
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @TREE_CODE(i64 %22)
  %24 = load i64, i64* @NAMESPACE_DECL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %21, %13
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @cp_parser_uncommitted_to_tentative_parse_p(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @cp_parser_error(i32* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* @error_mark_node, align 8
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %33, %21
  %38 = load i64, i64* %5, align 8
  store i64 %38, i64* %2, align 8
  br label %39

39:                                               ; preds = %37, %11
  %40 = load i64, i64* %2, align 8
  ret i64 %40
}

declare dso_local i64 @cp_parser_identifier(i32*) #1

declare dso_local i64 @cp_parser_lookup_name(i32*, i64, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @cp_parser_uncommitted_to_tentative_parse_p(i32*) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32 @cp_parser_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
