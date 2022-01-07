; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_lookup_destructor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_lookup_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"qualified type %qT does not match destructor name ~%qT\00", align 1
@error_mark_node = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"the type being destroyed is %qT, but the destructor refers to %qT\00", align 1
@complete_dtor_identifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @lookup_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lookup_destructor(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @TREE_TYPE(i8* %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i8* @TREE_OPERAND(i8* %13, i32 0)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @check_dtor_name(i8* %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  %26 = load i8*, i8** @error_mark_node, align 8
  store i8* %26, i8** %4, align 8
  br label %48

27:                                               ; preds = %17, %3
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i8* @TYPE_MAIN_VARIANT(i8* %29)
  %31 = call i32 @DERIVED_FROM_P(i8* %28, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @TYPE_MAIN_VARIANT(i8* %34)
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i8*, i8** @error_mark_node, align 8
  store i8* %38, i8** %4, align 8
  br label %48

39:                                               ; preds = %27
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @complete_dtor_identifier, align 4
  %42 = call i8* @lookup_member(i8* %40, i32 %41, i32 1, i32 0)
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i8* @adjust_result_of_qualified_name_lookup(i8* %43, i8* %44, i8* %45)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  store i8* %47, i8** %4, align 8
  br label %48

48:                                               ; preds = %39, %33, %22
  %49 = load i8*, i8** %4, align 8
  ret i8* %49
}

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i8* @TREE_OPERAND(i8*, i32) #1

declare dso_local i32 @check_dtor_name(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i32 @DERIVED_FROM_P(i8*, i8*) #1

declare dso_local i8* @TYPE_MAIN_VARIANT(i8*) #1

declare dso_local i8* @lookup_member(i8*, i32, i32, i32) #1

declare dso_local i8* @adjust_result_of_qualified_name_lookup(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
