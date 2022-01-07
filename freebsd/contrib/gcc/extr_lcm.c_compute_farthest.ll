; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lcm.c_compute_farthest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lcm.c_compute_farthest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.edge_list = type { i32 }

@EXIT_BLOCK_PTR = common dso_local global %struct.TYPE_6__* null, align 8
@ENTRY_BLOCK_PTR = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edge_list*, i32, i32*, i32*, i32*, i32*, i32*)* @compute_farthest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_farthest(%struct.edge_list* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.edge_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  store %struct.edge_list* %0, %struct.edge_list** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %21 = load %struct.edge_list*, %struct.edge_list** %8, align 8
  %22 = call i32 @NUM_EDGES(%struct.edge_list* %21)
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @sbitmap_alloc(i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @sbitmap_alloc(i32 %25)
  store i32 %26, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %27

27:                                               ; preds = %104, %7
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %18, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %107

31:                                               ; preds = %27
  %32 = load %struct.edge_list*, %struct.edge_list** %8, align 8
  %33 = load i32, i32* %17, align 4
  %34 = call %struct.TYPE_6__* @INDEX_EDGE_PRED_BB(%struct.edge_list* %32, i32 %33)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %19, align 8
  %35 = load %struct.edge_list*, %struct.edge_list** %8, align 8
  %36 = load i32, i32* %17, align 4
  %37 = call %struct.TYPE_6__* @INDEX_EDGE_SUCC_BB(%struct.edge_list* %35, i32 %36)
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %20, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @EXIT_BLOCK_PTR, align 8
  %40 = icmp eq %struct.TYPE_6__* %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %31
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sbitmap_copy(i32 %46, i32 %52)
  br label %103

54:                                               ; preds = %31
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ENTRY_BLOCK_PTR, align 8
  %57 = icmp eq %struct.TYPE_6__* %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sbitmap_zero(i32 %63)
  br label %102

65:                                               ; preds = %54
  %66 = load i32, i32* %15, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sbitmap_difference(i32 %66, i32 %72, i32 %78)
  %80 = load i32, i32* %16, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @sbitmap_not(i32 %80, i32 %86)
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32*, i32** %13, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @sbitmap_a_and_b_or_c(i32 %92, i32 %93, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %65, %58
  br label %103

103:                                              ; preds = %102, %41
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %17, align 4
  br label %27

107:                                              ; preds = %27
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @sbitmap_free(i32 %108)
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @sbitmap_free(i32 %110)
  ret void
}

declare dso_local i32 @NUM_EDGES(%struct.edge_list*) #1

declare dso_local i32 @sbitmap_alloc(i32) #1

declare dso_local %struct.TYPE_6__* @INDEX_EDGE_PRED_BB(%struct.edge_list*, i32) #1

declare dso_local %struct.TYPE_6__* @INDEX_EDGE_SUCC_BB(%struct.edge_list*, i32) #1

declare dso_local i32 @sbitmap_copy(i32, i32) #1

declare dso_local i32 @sbitmap_zero(i32) #1

declare dso_local i32 @sbitmap_difference(i32, i32, i32) #1

declare dso_local i32 @sbitmap_not(i32, i32) #1

declare dso_local i32 @sbitmap_a_and_b_or_c(i32, i32, i32, i32) #1

declare dso_local i32 @sbitmap_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
