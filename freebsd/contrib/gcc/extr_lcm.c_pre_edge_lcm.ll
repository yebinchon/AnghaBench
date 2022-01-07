; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lcm.c_pre_edge_lcm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lcm.c_pre_edge_lcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edge_list = type { i32 }

@last_basic_block = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.edge_list* @pre_edge_lcm(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32** %5, i32** %6) #0 {
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
  store i32* %29, i32** %18, align 8
  %30 = load i32, i32* @last_basic_block, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32* @sbitmap_vector_alloc(i32 %30, i32 %31)
  store i32* %32, i32** %19, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32*, i32** %19, align 8
  %36 = load i32*, i32** %18, align 8
  %37 = call i32 @compute_available(i32* %33, i32* %34, i32* %35, i32* %36)
  %38 = load i32*, i32** %18, align 8
  %39 = call i32 @sbitmap_vector_free(i32* %38)
  %40 = load i32, i32* @last_basic_block, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32* @sbitmap_vector_alloc(i32 %40, i32 %41)
  store i32* %42, i32** %15, align 8
  %43 = load i32, i32* @last_basic_block, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32* @sbitmap_vector_alloc(i32 %43, i32 %44)
  store i32* %45, i32** %16, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = call i32 @compute_antinout_edge(i32* %46, i32* %47, i32* %48, i32* %49)
  %51 = load i32, i32* %23, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32* @sbitmap_vector_alloc(i32 %51, i32 %52)
  store i32* %53, i32** %17, align 8
  %54 = load %struct.edge_list*, %struct.edge_list** %22, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %15, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = load i32*, i32** %19, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %17, align 8
  %61 = call i32 @compute_earliest(%struct.edge_list* %54, i32 %55, i32* %56, i32* %57, i32* %58, i32* %59, i32* %60)
  %62 = load i32*, i32** %16, align 8
  %63 = call i32 @sbitmap_vector_free(i32* %62)
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @sbitmap_vector_free(i32* %64)
  %66 = load i32*, i32** %19, align 8
  %67 = call i32 @sbitmap_vector_free(i32* %66)
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32* @sbitmap_vector_alloc(i32 %68, i32 %69)
  store i32* %70, i32** %20, align 8
  %71 = load i32, i32* @last_basic_block, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %8, align 4
  %74 = call i32* @sbitmap_vector_alloc(i32 %72, i32 %73)
  store i32* %74, i32** %21, align 8
  %75 = load %struct.edge_list*, %struct.edge_list** %22, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32*, i32** %20, align 8
  %79 = load i32*, i32** %21, align 8
  %80 = call i32 @compute_laterin(%struct.edge_list* %75, i32* %76, i32* %77, i32* %78, i32* %79)
  %81 = load i32*, i32** %17, align 8
  %82 = call i32 @sbitmap_vector_free(i32* %81)
  %83 = load i32, i32* %23, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32* @sbitmap_vector_alloc(i32 %83, i32 %84)
  %86 = load i32**, i32*** %13, align 8
  store i32* %85, i32** %86, align 8
  %87 = load i32, i32* @last_basic_block, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32* @sbitmap_vector_alloc(i32 %87, i32 %88)
  %90 = load i32**, i32*** %14, align 8
  store i32* %89, i32** %90, align 8
  %91 = load %struct.edge_list*, %struct.edge_list** %22, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32*, i32** %20, align 8
  %94 = load i32*, i32** %21, align 8
  %95 = load i32**, i32*** %13, align 8
  %96 = load i32*, i32** %95, align 8
  %97 = load i32**, i32*** %14, align 8
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @compute_insert_delete(%struct.edge_list* %91, i32* %92, i32* %93, i32* %94, i32* %96, i32* %98)
  %100 = load i32*, i32** %21, align 8
  %101 = call i32 @sbitmap_vector_free(i32* %100)
  %102 = load i32*, i32** %20, align 8
  %103 = call i32 @sbitmap_vector_free(i32* %102)
  %104 = load %struct.edge_list*, %struct.edge_list** %22, align 8
  ret %struct.edge_list* %104
}

declare dso_local %struct.edge_list* @create_edge_list(...) #1

declare dso_local i32 @NUM_EDGES(%struct.edge_list*) #1

declare dso_local i32* @sbitmap_vector_alloc(i32, i32) #1

declare dso_local i32 @compute_available(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sbitmap_vector_free(i32*) #1

declare dso_local i32 @compute_antinout_edge(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @compute_earliest(%struct.edge_list*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @compute_laterin(%struct.edge_list*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @compute_insert_delete(%struct.edge_list*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
