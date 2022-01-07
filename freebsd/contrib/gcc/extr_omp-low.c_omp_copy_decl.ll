; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_omp_copy_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_omp_copy_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }

@LABEL_DECL = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32*)* @omp_copy_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @omp_copy_decl(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @LABEL_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = call i64 (...) @create_artificial_label()
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* @current_function_decl, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @insert_decl_map(%struct.TYPE_6__* %19, i64 %20, i64 %21)
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %3, align 8
  br label %63

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %46, %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = call i32 @is_parallel_ctx(%struct.TYPE_5__* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %6, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = icmp eq %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %4, align 8
  store i64 %37, i64* %3, align 8
  br label %63

38:                                               ; preds = %30
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = call i64 @maybe_lookup_decl(i64 %39, %struct.TYPE_5__* %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* %7, align 8
  store i64 %45, i64* %3, align 8
  br label %63

46:                                               ; preds = %38
  br label %25

47:                                               ; preds = %25
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @is_global_var(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @decl_function_context(i64 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51, %47
  %60 = load i64, i64* %4, align 8
  store i64 %60, i64* %3, align 8
  br label %63

61:                                               ; preds = %51
  %62 = load i64, i64* @error_mark_node, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %61, %59, %44, %36, %15
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @create_artificial_label(...) #1

declare dso_local i32 @insert_decl_map(%struct.TYPE_6__*, i64, i64) #1

declare dso_local i32 @is_parallel_ctx(%struct.TYPE_5__*) #1

declare dso_local i64 @maybe_lookup_decl(i64, %struct.TYPE_5__*) #1

declare dso_local i64 @is_global_var(i64) #1

declare dso_local i64 @decl_function_context(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
