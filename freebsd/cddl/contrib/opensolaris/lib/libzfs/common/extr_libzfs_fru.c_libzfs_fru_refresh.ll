; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_fru.c_libzfs_fru_refresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_fru.c_libzfs_fru_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32* }

@_topo_dlhandle = common dso_local global i32* null, align 8
@B_FALSE = common dso_local global i32 0, align 4
@TOPO_VERSION = common dso_local global i32 0, align 4
@ZFS_FRU_HASH_SIZE = common dso_local global i32 0, align 4
@FM_FMRI_SCHEME_HC = common dso_local global i32 0, align 4
@libzfs_fru_gather = common dso_local global i32 0, align 4
@TOPO_WALK_CHILD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libzfs_fru_refresh(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load i32*, i32** @_topo_dlhandle, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %57

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = load i32, i32* @B_FALSE, align 4
  %13 = call i32 @libzfs_fru_clear(%struct.TYPE_5__* %11, i32 %12)
  %14 = load i32, i32* @TOPO_VERSION, align 4
  %15 = call i32* @_topo_open(i32 %14, i32* null, i32* %3)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = icmp eq i32* %15, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %57

20:                                               ; preds = %10
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i8* @_topo_snap_hold(i32* %24, i32* null, i32* %3)
  store i8* %25, i8** %4, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %57

28:                                               ; preds = %20
  %29 = load i32*, i32** %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @_topo_hdl_strfree(i32* %29, i8* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i32, i32* @ZFS_FRU_HASH_SIZE, align 4
  %38 = call i32* @calloc(i32 %37, i32 8)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = icmp eq i32* %38, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %57

43:                                               ; preds = %36, %28
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @FM_FMRI_SCHEME_HC, align 4
  %46 = load i32, i32* @libzfs_fru_gather, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = call i32* @_topo_walk_init(i32* %44, i32 %45, i32 %46, %struct.TYPE_5__* %47, i32* %3)
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @TOPO_WALK_CHILD, align 4
  %54 = call i32 @_topo_walk_step(i32* %52, i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @_topo_walk_fini(i32* %55)
  br label %57

57:                                               ; preds = %9, %19, %27, %42, %51, %43
  ret void
}

declare dso_local i32 @libzfs_fru_clear(%struct.TYPE_5__*, i32) #1

declare dso_local i32* @_topo_open(i32, i32*, i32*) #1

declare dso_local i8* @_topo_snap_hold(i32*, i32*, i32*) #1

declare dso_local i32 @_topo_hdl_strfree(i32*, i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32* @_topo_walk_init(i32*, i32, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @_topo_walk_step(i32*, i32) #1

declare dso_local i32 @_topo_walk_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
