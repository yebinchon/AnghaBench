; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_dump_subscript.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_dump_subscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subscript = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"\0A (subscript \0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"  iterations_that_access_an_element_twice_in_A: \00", align 1
@chrec_known = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"    (no dependence)\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"    (don't know)\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"  last_conflict: \00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"  iterations_that_access_an_element_twice_in_B: \00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"  (Subscript distance: \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"  )\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" )\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_subscript(i32* %0, %struct.subscript* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.subscript*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.subscript* %1, %struct.subscript** %4, align 8
  %8 = load %struct.subscript*, %struct.subscript** %4, align 8
  %9 = call i64 @SUB_CONFLICTS_IN_A(%struct.subscript* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @fprintf(i32* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @fprintf(i32* %12, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @print_generic_stmt(i32* %14, i64 %15, i32 0)
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @chrec_known, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @fprintf(i32* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %39

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @chrec_contains_undetermined(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @fprintf(i32* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %38

30:                                               ; preds = %23
  %31 = load %struct.subscript*, %struct.subscript** %4, align 8
  %32 = call i64 @SUB_LAST_CONFLICT(%struct.subscript* %31)
  store i64 %32, i64* %6, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @fprintf(i32* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i32*, i32** %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @print_generic_stmt(i32* %35, i64 %36, i32 0)
  br label %38

38:                                               ; preds = %30, %27
  br label %39

39:                                               ; preds = %38, %20
  %40 = load %struct.subscript*, %struct.subscript** %4, align 8
  %41 = call i64 @SUB_CONFLICTS_IN_B(%struct.subscript* %40)
  store i64 %41, i64* %5, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @fprintf(i32* %42, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %44 = load i32*, i32** %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @print_generic_stmt(i32* %44, i64 %45, i32 0)
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @chrec_known, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @fprintf(i32* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %69

53:                                               ; preds = %39
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @chrec_contains_undetermined(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @fprintf(i32* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %68

60:                                               ; preds = %53
  %61 = load %struct.subscript*, %struct.subscript** %4, align 8
  %62 = call i64 @SUB_LAST_CONFLICT(%struct.subscript* %61)
  store i64 %62, i64* %7, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @fprintf(i32* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32*, i32** %3, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @print_generic_stmt(i32* %65, i64 %66, i32 0)
  br label %68

68:                                               ; preds = %60, %57
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @fprintf(i32* %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.subscript*, %struct.subscript** %4, align 8
  %74 = call i64 @SUB_DISTANCE(%struct.subscript* %73)
  %75 = call i32 @print_generic_stmt(i32* %72, i64 %74, i32 0)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @fprintf(i32* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @fprintf(i32* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i64 @SUB_CONFLICTS_IN_A(%struct.subscript*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @print_generic_stmt(i32*, i64, i32) #1

declare dso_local i64 @chrec_contains_undetermined(i64) #1

declare dso_local i64 @SUB_LAST_CONFLICT(%struct.subscript*) #1

declare dso_local i64 @SUB_CONFLICTS_IN_B(%struct.subscript*) #1

declare dso_local i64 @SUB_DISTANCE(%struct.subscript*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
