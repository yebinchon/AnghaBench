; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_libzfs_mnttab_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_libzfs_mnttab_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.mnttab = type { i8*, i32, i32 }
%struct.TYPE_8__ = type { %struct.mnttab }

@ENOENT = common dso_local global i32 0, align 4
@MNTTYPE_ZFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libzfs_mnttab_find(%struct.TYPE_9__* %0, i8* %1, %struct.mnttab* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mnttab*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mnttab, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mnttab* %2, %struct.mnttab** %7, align 8
  %12 = load i32, i32* @ENOENT, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %3
  %18 = bitcast %struct.mnttab* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = call i64 @avl_numnodes(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = call i32 @libzfs_mnttab_fini(%struct.TYPE_9__* %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rewind(i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %11, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* @MNTTYPE_ZFS, align 4
  %34 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %11, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mnttab*, %struct.mnttab** %7, align 8
  %39 = call i64 @getmntany(i32 %37, %struct.mnttab* %38, %struct.mnttab* %11)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %75

42:                                               ; preds = %26
  %43 = load i32, i32* @ENOENT, align 4
  store i32 %43, i32* %4, align 4
  br label %75

44:                                               ; preds = %3
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = call i32 @pthread_mutex_lock(i32* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = call i64 @avl_numnodes(i32* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = call i32 @libzfs_mnttab_update(%struct.TYPE_9__* %53)
  br label %55

55:                                               ; preds = %52, %44
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %58 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = call %struct.TYPE_8__* @avl_find(i32* %60, %struct.TYPE_8__* %8, i32* null)
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %9, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = icmp ne %struct.TYPE_8__* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.mnttab*, %struct.mnttab** %7, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = bitcast %struct.mnttab* %65 to i8*
  %69 = bitcast %struct.mnttab* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %64, %55
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = call i32 @pthread_mutex_unlock(i32* %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %70, %42, %41
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @avl_numnodes(i32*) #2

declare dso_local i32 @libzfs_mnttab_fini(%struct.TYPE_9__*) #2

declare dso_local i32 @rewind(i32) #2

declare dso_local i64 @getmntany(i32, %struct.mnttab*, %struct.mnttab*) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @libzfs_mnttab_update(%struct.TYPE_9__*) #2

declare dso_local %struct.TYPE_8__* @avl_find(i32*, %struct.TYPE_8__*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
