; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_bmap.c_xfs_bmapi_allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_bmap.c_xfs_bmapi_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_bmalloca = type { i32 }
%struct.xfs_btree_cur = type { i32 }
%struct.xfs_bmap_free = type { i32 }
%struct.xfs_bmalloc_work = type { i32, i32*, i32*, i32, i32, %struct.xfs_bmap_free*, i32*, %struct.xfs_btree_cur**, i32*, %struct.xfs_bmalloca*, i32* }

@done = common dso_local global i32 0, align 4
@xfs_bmapi_allocate_worker = common dso_local global i32 0, align 4
@xfs_alloc_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bmapi_allocate(%struct.xfs_bmalloca* %0, i32* %1, %struct.xfs_btree_cur** %2, i32* %3, %struct.xfs_bmap_free* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_bmalloca*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.xfs_btree_cur**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.xfs_bmap_free*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.xfs_bmalloc_work, align 8
  store %struct.xfs_bmalloca* %0, %struct.xfs_bmalloca** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.xfs_btree_cur** %2, %struct.xfs_btree_cur*** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.xfs_bmap_free* %4, %struct.xfs_bmap_free** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %19 = load i32, i32* @done, align 4
  %20 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %19)
  %21 = load %struct.xfs_bmalloca*, %struct.xfs_bmalloca** %10, align 8
  %22 = getelementptr inbounds %struct.xfs_bmalloca, %struct.xfs_bmalloca* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %8
  %26 = load %struct.xfs_bmalloca*, %struct.xfs_bmalloca** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %12, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load %struct.xfs_bmap_free*, %struct.xfs_bmap_free** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load i32*, i32** %16, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = call i32 @__xfs_bmapi_allocate(%struct.xfs_bmalloca* %26, i32* %27, %struct.xfs_btree_cur** %28, i32* %29, %struct.xfs_bmap_free* %30, i32 %31, i32* %32, i32* %33)
  store i32 %34, i32* %9, align 4
  br label %62

35:                                               ; preds = %8
  %36 = getelementptr inbounds %struct.xfs_bmalloc_work, %struct.xfs_bmalloc_work* %18, i32 0, i32 10
  store i32* @done, i32** %36, align 8
  %37 = load %struct.xfs_bmalloca*, %struct.xfs_bmalloca** %10, align 8
  %38 = getelementptr inbounds %struct.xfs_bmalloc_work, %struct.xfs_bmalloc_work* %18, i32 0, i32 9
  store %struct.xfs_bmalloca* %37, %struct.xfs_bmalloca** %38, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds %struct.xfs_bmalloc_work, %struct.xfs_bmalloc_work* %18, i32 0, i32 8
  store i32* %39, i32** %40, align 8
  %41 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %12, align 8
  %42 = getelementptr inbounds %struct.xfs_bmalloc_work, %struct.xfs_bmalloc_work* %18, i32 0, i32 7
  store %struct.xfs_btree_cur** %41, %struct.xfs_btree_cur*** %42, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = getelementptr inbounds %struct.xfs_bmalloc_work, %struct.xfs_bmalloc_work* %18, i32 0, i32 6
  store i32* %43, i32** %44, align 8
  %45 = load %struct.xfs_bmap_free*, %struct.xfs_bmap_free** %14, align 8
  %46 = getelementptr inbounds %struct.xfs_bmalloc_work, %struct.xfs_bmalloc_work* %18, i32 0, i32 5
  store %struct.xfs_bmap_free* %45, %struct.xfs_bmap_free** %46, align 8
  %47 = load i32, i32* %15, align 4
  %48 = getelementptr inbounds %struct.xfs_bmalloc_work, %struct.xfs_bmalloc_work* %18, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = getelementptr inbounds %struct.xfs_bmalloc_work, %struct.xfs_bmalloc_work* %18, i32 0, i32 1
  store i32* %49, i32** %50, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = getelementptr inbounds %struct.xfs_bmalloc_work, %struct.xfs_bmalloc_work* %18, i32 0, i32 2
  store i32* %51, i32** %52, align 8
  %53 = getelementptr inbounds %struct.xfs_bmalloc_work, %struct.xfs_bmalloc_work* %18, i32 0, i32 4
  %54 = load i32, i32* @xfs_bmapi_allocate_worker, align 4
  %55 = call i32 @INIT_WORK(i32* %53, i32 %54)
  %56 = load i32, i32* @xfs_alloc_wq, align 4
  %57 = getelementptr inbounds %struct.xfs_bmalloc_work, %struct.xfs_bmalloc_work* %18, i32 0, i32 4
  %58 = call i32 @queue_work(i32 %56, i32* %57)
  %59 = call i32 @wait_for_completion(i32* @done)
  %60 = getelementptr inbounds %struct.xfs_bmalloc_work, %struct.xfs_bmalloc_work* %18, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %35, %25
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @__xfs_bmapi_allocate(%struct.xfs_bmalloca*, i32*, %struct.xfs_btree_cur**, i32*, %struct.xfs_bmap_free*, i32, i32*, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
