; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_langhooks.c_lhd_print_error_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_langhooks.c_lhd_print_error_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (i32*, i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }

@current_function_decl = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"At top level:\00", align 1
@METHOD_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"In member function %qs:\00", align 1
@lang_hooks = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"In function %qs:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lhd_print_error_function(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = call i64 @diagnostic_last_function_changed(%struct.TYPE_9__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %76

10:                                               ; preds = %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @file_name_as_prefix(i8* %19)
  br label %22

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i8* [ %20, %18 ], [ null, %21 ]
  store i8* %23, i8** %6, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @pp_set_prefix(%struct.TYPE_10__* %26, i8* %27)
  %29 = load i32*, i32** @current_function_decl, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 (%struct.TYPE_10__*, i32, ...) @pp_printf(%struct.TYPE_10__* %34, i32 %35)
  br label %62

37:                                               ; preds = %22
  %38 = load i32*, i32** @current_function_decl, align 8
  %39 = call i32 @TREE_TYPE(i32* %38)
  %40 = call i64 @TREE_CODE(i32 %39)
  %41 = load i64, i64* @METHOD_TYPE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @lang_hooks, i32 0, i32 0), align 8
  %49 = load i32*, i32** @current_function_decl, align 8
  %50 = call i32 %48(i32* %49, i32 2)
  %51 = call i32 (%struct.TYPE_10__*, i32, ...) @pp_printf(%struct.TYPE_10__* %46, i32 %47, i32 %50)
  br label %61

52:                                               ; preds = %37
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32 (i32*, i32)*, i32 (i32*, i32)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @lang_hooks, i32 0, i32 0), align 8
  %58 = load i32*, i32** @current_function_decl, align 8
  %59 = call i32 %57(i32* %58, i32 2)
  %60 = call i32 (%struct.TYPE_10__*, i32, ...) @pp_printf(%struct.TYPE_10__* %55, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %52, %43
  br label %62

62:                                               ; preds = %61, %31
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = call i32 @diagnostic_set_last_function(%struct.TYPE_9__* %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = call i32 @pp_flush(%struct.TYPE_10__* %67)
  %69 = load i8*, i8** %5, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i8* %69, i8** %73, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @free(i8* %74)
  br label %76

76:                                               ; preds = %62, %2
  ret void
}

declare dso_local i64 @diagnostic_last_function_changed(%struct.TYPE_9__*) #1

declare dso_local i8* @file_name_as_prefix(i8*) #1

declare dso_local i32 @pp_set_prefix(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @pp_printf(%struct.TYPE_10__*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32*) #1

declare dso_local i32 @diagnostic_set_last_function(%struct.TYPE_9__*) #1

declare dso_local i32 @pp_flush(%struct.TYPE_10__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
