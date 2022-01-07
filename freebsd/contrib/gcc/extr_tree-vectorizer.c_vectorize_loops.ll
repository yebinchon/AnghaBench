; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_vectorize_loops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_vectorize_loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32, %struct.loop** }
%struct.loop = type { i32* }

@vect_vnames_to_rename = common dso_local global i32 0, align 4
@vect_loops_num = common dso_local global i32 0, align 4
@vect_loop_location = common dso_local global i32 0, align 4
@UNKNOWN_LOC = common dso_local global i32 0, align 4
@REPORT_VECTORIZED_LOOPS = common dso_local global i32 0, align 4
@vect_dump = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"vectorized %u loops in function.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vectorize_loops(%struct.loops* %0) #0 {
  %2 = alloca %struct.loops*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.loop*, align 8
  %7 = alloca %struct.loop*, align 8
  %8 = alloca i32*, align 8
  store %struct.loops* %0, %struct.loops** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = call i32 (...) @vect_set_dump_settings()
  %10 = call i32 @BITMAP_ALLOC(i32* null)
  store i32 %10, i32* @vect_vnames_to_rename, align 4
  %11 = load %struct.loops*, %struct.loops** %2, align 8
  %12 = getelementptr inbounds %struct.loops, %struct.loops* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* @vect_loops_num, align 4
  store i32 1, i32* %3, align 4
  br label %14

14:                                               ; preds = %50, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @vect_loops_num, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %14
  %19 = load %struct.loops*, %struct.loops** %2, align 8
  %20 = getelementptr inbounds %struct.loops, %struct.loops* %19, i32 0, i32 1
  %21 = load %struct.loop**, %struct.loop*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.loop*, %struct.loop** %21, i64 %23
  %25 = load %struct.loop*, %struct.loop** %24, align 8
  store %struct.loop* %25, %struct.loop** %6, align 8
  %26 = load %struct.loop*, %struct.loop** %6, align 8
  %27 = icmp ne %struct.loop* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %50

29:                                               ; preds = %18
  %30 = load %struct.loop*, %struct.loop** %6, align 8
  %31 = call i32 @find_loop_location(%struct.loop* %30)
  store i32 %31, i32* @vect_loop_location, align 4
  %32 = load %struct.loop*, %struct.loop** %6, align 8
  %33 = call i32* @vect_analyze_loop(%struct.loop* %32)
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.loop*, %struct.loop** %6, align 8
  %36 = getelementptr inbounds %struct.loop, %struct.loop* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @LOOP_VINFO_VECTORIZABLE_P(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %29
  br label %50

44:                                               ; preds = %39
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.loops*, %struct.loops** %2, align 8
  %47 = call i32 @vect_transform_loop(i32* %45, %struct.loops* %46)
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %43, %28
  %51 = load i32, i32* %3, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %14

53:                                               ; preds = %14
  %54 = load i32, i32* @UNKNOWN_LOC, align 4
  store i32 %54, i32* @vect_loop_location, align 4
  %55 = load i32, i32* @REPORT_VECTORIZED_LOOPS, align 4
  %56 = call i64 @vect_print_dump_info(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @vect_dump, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* @vect_vnames_to_rename, align 4
  %64 = call i32 @BITMAP_FREE(i32 %63)
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %88, %62
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @vect_loops_num, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load %struct.loops*, %struct.loops** %2, align 8
  %71 = getelementptr inbounds %struct.loops, %struct.loops* %70, i32 0, i32 1
  %72 = load %struct.loop**, %struct.loop*** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.loop*, %struct.loop** %72, i64 %74
  %76 = load %struct.loop*, %struct.loop** %75, align 8
  store %struct.loop* %76, %struct.loop** %7, align 8
  %77 = load %struct.loop*, %struct.loop** %7, align 8
  %78 = icmp ne %struct.loop* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %69
  br label %88

80:                                               ; preds = %69
  %81 = load %struct.loop*, %struct.loop** %7, align 8
  %82 = getelementptr inbounds %struct.loop, %struct.loop* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %8, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @destroy_loop_vec_info(i32* %84)
  %86 = load %struct.loop*, %struct.loop** %7, align 8
  %87 = getelementptr inbounds %struct.loop, %struct.loop* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  br label %88

88:                                               ; preds = %80, %79
  %89 = load i32, i32* %3, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %65

91:                                               ; preds = %65
  ret void
}

declare dso_local i32 @vect_set_dump_settings(...) #1

declare dso_local i32 @BITMAP_ALLOC(i32*) #1

declare dso_local i32 @find_loop_location(%struct.loop*) #1

declare dso_local i32* @vect_analyze_loop(%struct.loop*) #1

declare dso_local i32 @LOOP_VINFO_VECTORIZABLE_P(i32*) #1

declare dso_local i32 @vect_transform_loop(i32*, %struct.loops*) #1

declare dso_local i64 @vect_print_dump_info(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

declare dso_local i32 @destroy_loop_vec_info(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
