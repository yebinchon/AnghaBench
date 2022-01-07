; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-live.c_tpa_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-live.c_tpa_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@TDF_SLIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" : (\00", align 1
@TPA_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpa_dump(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %59

10:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %53, %10
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = call i32 @tpa_num_trees(%struct.TYPE_8__* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %11
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @tpa_tree(%struct.TYPE_8__* %18, i32 %19)
  %21 = load i32, i32* @TDF_SLIM, align 4
  %22 = call i32 @print_generic_expr(i32* %17, i32 %20, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @tpa_first_partition(%struct.TYPE_8__* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %46, %16
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @TPA_NONE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @partition_to_var(i32 %39, i32 %40)
  %42 = load i32, i32* @TDF_SLIM, align 4
  %43 = call i32 @print_generic_expr(i32* %36, i32 %41, i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %32
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @tpa_next_partition(%struct.TYPE_8__* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %28

50:                                               ; preds = %28
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %11

56:                                               ; preds = %11
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @fflush(i32* %57)
  br label %59

59:                                               ; preds = %56, %9
  ret void
}

declare dso_local i32 @tpa_num_trees(%struct.TYPE_8__*) #1

declare dso_local i32 @print_generic_expr(i32*, i32, i32) #1

declare dso_local i32 @tpa_tree(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @tpa_first_partition(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @partition_to_var(i32, i32) #1

declare dso_local i32 @tpa_next_partition(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
