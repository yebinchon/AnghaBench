; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_iter.c_zfs_iter_filesystems.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_iter.c_zfs_iter_filesystems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32 }

@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@ZFS_IOC_DATASET_LIST_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_iter_filesystems(%struct.TYPE_12__* %0, i32 (%struct.TYPE_12__*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32 (%struct.TYPE_12__*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 (%struct.TYPE_12__*, i8*)* %1, i32 (%struct.TYPE_12__*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = bitcast %struct.TYPE_13__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @zcmd_alloc_dst_nvlist(i32 %21, %struct.TYPE_13__* %8, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %57

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %47, %37, %25
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = load i32, i32* @ZFS_IOC_DATASET_LIST_NEXT, align 4
  %29 = call i32 @zfs_do_list_ioctl(%struct.TYPE_12__* %27, i32 %28, %struct.TYPE_13__* %8)
  store i32 %29, i32* %10, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_12__* @make_dataset_handle_zc(i32 %34, %struct.TYPE_13__* %8)
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %9, align 8
  %36 = icmp eq %struct.TYPE_12__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %26

38:                                               ; preds = %31
  %39 = load i32 (%struct.TYPE_12__*, i8*)*, i32 (%struct.TYPE_12__*, i8*)** %6, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 %39(%struct.TYPE_12__* %40, i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = call i32 @zcmd_free_nvlists(%struct.TYPE_13__* %8)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %57

47:                                               ; preds = %38
  br label %26

48:                                               ; preds = %26
  %49 = call i32 @zcmd_free_nvlists(%struct.TYPE_13__* %8)
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  br label %55

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %44, %24, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @zcmd_alloc_dst_nvlist(i32, %struct.TYPE_13__*, i32) #2

declare dso_local i32 @zfs_do_list_ioctl(%struct.TYPE_12__*, i32, %struct.TYPE_13__*) #2

declare dso_local %struct.TYPE_12__* @make_dataset_handle_zc(i32, %struct.TYPE_13__*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
