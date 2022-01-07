; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_record_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_record_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* (i32**, i32*, i8*)* }

@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@flag_unit_at_a_time = common dso_local global i32 0, align 4
@FUNCTION_DECL = common dso_local global i32 0, align 4
@LAST_AND_UNUSED_TREE_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i8*)* @record_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @record_reference(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32**, i32*** %5, align 8
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @TREE_CODE(i32* %12)
  switch i32 %13, label %53 [
    i32 128, label %14
    i32 129, label %36
    i32 130, label %36
  ]

14:                                               ; preds = %3
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @TREE_STATIC(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @DECL_EXTERNAL(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %18, %14
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @cgraph_varpool_node(i32* %23)
  %25 = call i32 @cgraph_varpool_mark_needed_node(i32 %24)
  %26 = load i32* (i32**, i32*, i8*)*, i32* (i32**, i32*, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %27 = icmp ne i32* (i32**, i32*, i8*)* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32* (i32**, i32*, i8*)*, i32* (i32**, i32*, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %30 = load i32**, i32*** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32* %29(i32** %30, i32* %31, i8* %32)
  store i32* %33, i32** %4, align 8
  br label %73

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %18
  br label %72

36:                                               ; preds = %3, %3
  %37 = load i32, i32* @flag_unit_at_a_time, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i32**, i32*** %5, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i32* @TREE_OPERAND(i32* %41, i32 0)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @TREE_CODE(i32* %43)
  %45 = load i32, i32* @FUNCTION_DECL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @cgraph_node(i32* %48)
  %50 = call i32 @cgraph_mark_needed_node(i32 %49)
  br label %51

51:                                               ; preds = %47, %39
  br label %52

52:                                               ; preds = %51, %36
  br label %72

53:                                               ; preds = %3
  %54 = load i32**, i32*** %5, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @IS_TYPE_OR_DECL_P(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32*, i32** %6, align 8
  store i32 0, i32* %59, align 4
  br label %72

60:                                               ; preds = %53
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @TREE_CODE(i32* %61)
  %63 = load i32, i32* @LAST_AND_UNUSED_TREE_CODE, align 4
  %64 = icmp uge i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32* (i32**, i32*, i8*)*, i32* (i32**, i32*, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %67 = load i32**, i32*** %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32* %66(i32** %67, i32* %68, i8* %69)
  store i32* %70, i32** %4, align 8
  br label %73

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %58, %52, %35
  store i32* null, i32** %4, align 8
  br label %73

73:                                               ; preds = %72, %65, %28
  %74 = load i32*, i32** %4, align 8
  ret i32* %74
}

declare dso_local i32 @TREE_CODE(i32*) #1

declare dso_local i32 @TREE_STATIC(i32*) #1

declare dso_local i32 @DECL_EXTERNAL(i32*) #1

declare dso_local i32 @cgraph_varpool_mark_needed_node(i32) #1

declare dso_local i32 @cgraph_varpool_node(i32*) #1

declare dso_local i32* @TREE_OPERAND(i32*, i32) #1

declare dso_local i32 @cgraph_mark_needed_node(i32) #1

declare dso_local i32 @cgraph_node(i32*) #1

declare dso_local i32 @IS_TYPE_OR_DECL_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
