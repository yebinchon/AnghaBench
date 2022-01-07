; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_get_ws_args_for.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_get_ws_args_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omp_for_data = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@OMP_FOR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32* null, align 8
@long_integer_type_node = common dso_local global i32 0, align 4
@OMP_SECTIONS = common dso_local global i64 0, align 8
@unsigned_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @get_ws_args_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_ws_args_for(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.omp_for_data, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @TREE_CODE(i32* %8)
  %10 = load i64, i64* @OMP_FOR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @extract_omp_for_data(i32* %13, %struct.omp_for_data* %5)
  %15 = load i32*, i32** @NULL_TREE, align 8
  store i32* %15, i32** %6, align 8
  %16 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %5, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load i32, i32* @long_integer_type_node, align 4
  %21 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %5, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = call i32* @fold_convert(i32 %20, i64 %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32* @tree_cons(i32* null, i32* %24, i32* %25)
  store i32* %26, i32** %6, align 8
  br label %27

27:                                               ; preds = %19, %12
  %28 = load i32, i32* @long_integer_type_node, align 4
  %29 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %5, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32* @fold_convert(i32 %28, i64 %30)
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32* @tree_cons(i32* null, i32* %32, i32* %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32, i32* @long_integer_type_node, align 4
  %36 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %5, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32* @fold_convert(i32 %35, i64 %37)
  store i32* %38, i32** %4, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32* @tree_cons(i32* null, i32* %39, i32* %40)
  store i32* %41, i32** %6, align 8
  %42 = load i32, i32* @long_integer_type_node, align 4
  %43 = getelementptr inbounds %struct.omp_for_data, %struct.omp_for_data* %5, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32* @fold_convert(i32 %42, i64 %44)
  store i32* %45, i32** %4, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32* @tree_cons(i32* null, i32* %46, i32* %47)
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  store i32* %49, i32** %2, align 8
  br label %70

50:                                               ; preds = %1
  %51 = load i32*, i32** %3, align 8
  %52 = call i64 @TREE_CODE(i32* %51)
  %53 = load i64, i64* @OMP_SECTIONS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load i32*, i32** %3, align 8
  %57 = call %struct.TYPE_3__* @bb_for_stmt(i32* %56)
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %7, align 8
  %58 = load i32, i32* @unsigned_type_node, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @EDGE_COUNT(i32 %61)
  %63 = call i32* @build_int_cst(i32 %58, i32 %62)
  store i32* %63, i32** %4, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = call i32* @tree_cons(i32* null, i32* %64, i32* null)
  store i32* %65, i32** %4, align 8
  %66 = load i32*, i32** %4, align 8
  store i32* %66, i32** %2, align 8
  br label %70

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67
  %69 = call i32 (...) @gcc_unreachable()
  br label %70

70:                                               ; preds = %68, %55, %27
  %71 = load i32*, i32** %2, align 8
  ret i32* %71
}

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32 @extract_omp_for_data(i32*, %struct.omp_for_data*) #1

declare dso_local i32* @fold_convert(i32, i64) #1

declare dso_local i32* @tree_cons(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @bb_for_stmt(i32*) #1

declare dso_local i32* @build_int_cst(i32, i32) #1

declare dso_local i32 @EDGE_COUNT(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
