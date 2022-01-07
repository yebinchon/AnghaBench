; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stor-layout.c_variable_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stor-layout.c_variable_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (...)* }
%struct.TYPE_6__ = type { i64 }

@lang_hooks = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@cfun = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"type size can%'t be explicitly evaluated\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"variable-size type declared outside of any function\00", align 1
@size_one_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @variable_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @TREE_CONSTANT(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %10 = call i64 (...) %9()
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @CONTAINS_PLACEHOLDER_P(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %8, %1
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @save_expr(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @skip_simple_arithmetic(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %2, align 4
  br label %50

32:                                               ; preds = %25, %18
  %33 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %34 = call i64 (...) %33()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @TREE_CONSTANT(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %44

42:                                               ; preds = %36
  %43 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* @size_one_node, align 4
  store i32 %45, i32* %2, align 4
  br label %50

46:                                               ; preds = %32
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @put_pending_size(i32 %47)
  %49 = load i32, i32* %3, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %44, %30, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @TREE_CONSTANT(i32) #1

declare dso_local i64 @CONTAINS_PLACEHOLDER_P(i32) #1

declare dso_local i32 @save_expr(i32) #1

declare dso_local i32 @skip_simple_arithmetic(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @put_pending_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
