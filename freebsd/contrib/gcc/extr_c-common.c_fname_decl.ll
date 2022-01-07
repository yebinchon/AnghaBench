; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_fname_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_fname_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64*, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@fname_vars = common dso_local global %struct.TYPE_2__* null, align 8
@input_location = common dso_local global i32 0, align 4
@input_line = common dso_local global i64 0, align 8
@saved_function_name_decls = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%qD is not defined outside of function scope\00", align 1
@UNKNOWN_LOCATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fname_decl(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* @NULL_TREE, align 8
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fname_vars, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %10
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fname_vars, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %10

32:                                               ; preds = %27, %10
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fname_vars, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %72, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @input_location, align 4
  store i32 %43, i32* %8, align 4
  store i64 0, i64* @input_line, align 8
  %44 = call i64 (...) @push_stmt_list()
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fname_vars, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @make_fname_decl(i64 %45, i32 %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @pop_stmt_list(i64 %53)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @IS_EMPTY_STMT(i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %42
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* @saved_function_name_decls, align 4
  %62 = call i32 @tree_cons(i64 %59, i64 %60, i32 %61)
  store i32 %62, i32* @saved_function_name_decls, align 4
  br label %63

63:                                               ; preds = %58, %42
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fname_vars, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  store i64 %64, i64* %70, align 8
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* @input_location, align 4
  br label %72

72:                                               ; preds = %63, %32
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @current_function_decl, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @pedwarn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %78, %75, %72
  %82 = load i64, i64* %6, align 8
  ret i64 %82
}

declare dso_local i64 @push_stmt_list(...) #1

declare dso_local i64 @make_fname_decl(i64, i32) #1

declare dso_local i64 @pop_stmt_list(i64) #1

declare dso_local i32 @IS_EMPTY_STMT(i64) #1

declare dso_local i32 @tree_cons(i64, i64, i32) #1

declare dso_local i32 @pedwarn(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
