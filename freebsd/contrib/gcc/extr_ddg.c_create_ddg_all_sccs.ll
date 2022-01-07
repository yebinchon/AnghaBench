; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_create_ddg_all_sccs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_create_ddg_all_sccs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@IN_SCC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @create_ddg_all_sccs(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @sbitmap_alloc(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @sbitmap_alloc(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @sbitmap_alloc(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = call i32 @xmalloc(i32 4)
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %8, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %27, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %88, %1
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %91

38:                                               ; preds = %32
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %41, i64 %43
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %10, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %11, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %12, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IN_SCC, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %38
  br label %88

59:                                               ; preds = %38
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @sbitmap_zero(i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @sbitmap_zero(i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SET_BIT(i32 %64, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @SET_BIT(i32 %69, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i64 @find_nodes_on_paths(i32 %74, %struct.TYPE_13__* %75, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %59
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @create_scc(%struct.TYPE_13__* %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @add_scc_to_ddg(%struct.TYPE_16__* %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %59
  br label %88

88:                                               ; preds = %87, %58
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %32

91:                                               ; preds = %32
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %93 = call i32 @order_sccs(%struct.TYPE_16__* %92)
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @sbitmap_free(i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @sbitmap_free(i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @sbitmap_free(i32 %98)
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  ret %struct.TYPE_16__* %100
}

declare dso_local i32 @sbitmap_alloc(i32) #1

declare dso_local i32 @xmalloc(i32) #1

declare dso_local i32 @sbitmap_zero(i32) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

declare dso_local i64 @find_nodes_on_paths(i32, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @create_scc(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @add_scc_to_ddg(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @order_sccs(%struct.TYPE_16__*) #1

declare dso_local i32 @sbitmap_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
