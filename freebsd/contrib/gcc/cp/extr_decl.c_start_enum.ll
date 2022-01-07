; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_start_enum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_start_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDENTIFIER_NODE = common dso_local global i64 0, align 8
@enum_type = common dso_local global i32 0, align 4
@ts_current = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"multiple definition of %q#T\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%Jprevious definition here\00", align 1
@error_mark_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @start_enum(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @TREE_CODE(i64 %5)
  %7 = load i64, i64* @IDENTIFIER_NODE, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @gcc_assert(i32 %9)
  %11 = load i32, i32* @enum_type, align 4
  %12 = load i64, i64* %2, align 8
  %13 = load i32, i32* @ts_current, align 4
  %14 = call i64 @lookup_and_check_tag(i32 %11, i64 %12, i32 %13, i32 0)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @NULL_TREE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @ENUMERAL_TYPE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @TYPE_MAIN_DECL(i64 %26)
  %28 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* @NULL_TREE, align 8
  store i64 %29, i64* %4, align 8
  br label %43

30:                                               ; preds = %18, %1
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @error_mark_node, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i64 (...) @make_anon_name()
  store i64 %35, i64* %2, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i64, i64* @ENUMERAL_TYPE, align 8
  %38 = call i64 @make_node(i64 %37)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %2, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i32, i32* @ts_current, align 4
  %42 = call i64 @pushtag(i64 %39, i64 %40, i32 %41)
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %36, %23
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @lookup_and_check_tag(i32, i64, i32, i32) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i64 @TYPE_MAIN_DECL(i64) #1

declare dso_local i64 @make_anon_name(...) #1

declare dso_local i64 @make_node(i64) #1

declare dso_local i64 @pushtag(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
