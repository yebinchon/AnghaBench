; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lcm.c_pre_edge_rev_lcm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lcm.c_pre_edge_rev_lcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edge_list = type { i32 }

@last_basic_block = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.edge_list* @pre_edge_rev_lcm(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32** %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.edge_list*, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32** %5, i32*** %13, align 8
  store i32** %6, i32*** %14, align 8
  %24 = call %struct.edge_list* (...) @create_edge_list()
  store %struct.edge_list* %24, %struct.edge_list** %22, align 8
  %25 = load %struct.edge_list*, %struct.edge_list** %22, align 8
  %26 = call i32 @NUM_EDGES(%struct.edge_list* %25)
  store i32 %26, i32* %23, align 4
  %27 = load i32, i32* @last_basic_block, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32* @sbitmap_vector_alloc(i32 %27, i32 %28)
  store i32* %29, i32** %15, align 8
  %30 = load i32, i32* @last_basic_block, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32* @sbitmap_vector_alloc(i32 %30, i32 %31)
  store i32* %32, i32** %16, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* @last_basic_block, align 4
  %35 = call i32 @sbitmap_vector_zero(i32* %33, i32 %34)
  %36 = load i32*, i32** %16, align 8
  %37 = load i32, i32* @last_basic_block, align 4
  %38 = call i32 @sbitmap_vector_zero(i32* %36, i32 %37)
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 @compute_antinout_edge(i32* %39, i32* %40, i32* %41, i32* %42)
  %44 = load i32, i32* @last_basic_block, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32* @sbitmap_vector_alloc(i32 %44, i32 %45)
  store i32* %46, i32** %17, align 8
  %47 = load i32, i32* @last_basic_block, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32* @sbitmap_vector_alloc(i32 %47, i32 %48)
  store i32* %49, i32** %18, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = call i32 @compute_available(i32* %50, i32* %51, i32* %52, i32* %53)
  %55 = load i32, i32* %23, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32* @sbitmap_vector_alloc(i32 %55, i32 %56)
  store i32* %57, i32** %19, align 8
  %58 = load %struct.edge_list*, %struct.edge_list** %22, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32*, i32** %17, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = call i32 @compute_farthest(%struct.edge_list* %58, i32 %59, i32* %60, i32* %61, i32* %62, i32* %63, i32* %64)
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @sbitmap_vector_free(i32* %66)
  %68 = load i32*, i32** %16, align 8
  %69 = call i32 @sbitmap_vector_free(i32* %68)
  %70 = load i32*, i32** %18, align 8
  %71 = call i32 @sbitmap_vector_free(i32* %70)
  %72 = load i32*, i32** %17, align 8
  %73 = call i32 @sbitmap_vector_free(i32* %72)
  %74 = load i32, i32* %23, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32* @sbitmap_vector_alloc(i32 %74, i32 %75)
  store i32* %76, i32** %20, align 8
  %77 = load i32, i32* @last_basic_block, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* %8, align 4
  %80 = call i32* @sbitmap_vector_alloc(i32 %78, i32 %79)
  store i32* %80, i32** %21, align 8
  %81 = load %struct.edge_list*, %struct.edge_list** %22, align 8
  %82 = load i32*, i32** %19, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %20, align 8
  %85 = load i32*, i32** %21, align 8
  %86 = call i32 @compute_nearerout(%struct.edge_list* %81, i32* %82, i32* %83, i32* %84, i32* %85)
  %87 = load i32*, i32** %19, align 8
  %88 = call i32 @sbitmap_vector_free(i32* %87)
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32* @sbitmap_vector_alloc(i32 %89, i32 %90)
  %92 = load i32**, i32*** %13, align 8
  store i32* %91, i32** %92, align 8
  %93 = load i32, i32* @last_basic_block, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32* @sbitmap_vector_alloc(i32 %93, i32 %94)
  %96 = load i32**, i32*** %14, align 8
  store i32* %95, i32** %96, align 8
  %97 = load %struct.edge_list*, %struct.edge_list** %22, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load i32*, i32** %20, align 8
  %100 = load i32*, i32** %21, align 8
  %101 = load i32**, i32*** %13, align 8
  %102 = load i32*, i32** %101, align 8
  %103 = load i32**, i32*** %14, align 8
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @compute_rev_insert_delete(%struct.edge_list* %97, i32* %98, i32* %99, i32* %100, i32* %102, i32* %104)
  %106 = load i32*, i32** %21, align 8
  %107 = call i32 @sbitmap_vector_free(i32* %106)
  %108 = load i32*, i32** %20, align 8
  %109 = call i32 @sbitmap_vector_free(i32* %108)
  %110 = load %struct.edge_list*, %struct.edge_list** %22, align 8
  ret %struct.edge_list* %110
}

declare dso_local %struct.edge_list* @create_edge_list(...) #1

declare dso_local i32 @NUM_EDGES(%struct.edge_list*) #1

declare dso_local i32* @sbitmap_vector_alloc(i32, i32) #1

declare dso_local i32 @sbitmap_vector_zero(i32*, i32) #1

declare dso_local i32 @compute_antinout_edge(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @compute_available(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @compute_farthest(%struct.edge_list*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sbitmap_vector_free(i32*) #1

declare dso_local i32 @compute_nearerout(%struct.edge_list*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @compute_rev_insert_delete(%struct.edge_list*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
