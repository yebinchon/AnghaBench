; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_snapshot.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot snapshot %s\00", align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_snapshot(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [1024 x i8], align 16
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = bitcast %struct.TYPE_3__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %24 = load i32, i32* @TEXT_DOMAIN, align 4
  %25 = call i8* @dgettext(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @snprintf(i8* %23, i32 1024, i8* %25, i8* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %31 = load i32, i32* @B_TRUE, align 4
  %32 = call i32 @zfs_validate_name(i32* %28, i8* %29, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %38 = call i32 @zfs_error(i32* %35, i32 %36, i8* %37)
  store i32 %38, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %85

39:                                               ; preds = %4
  %40 = load i8*, i8** %7, align 8
  %41 = trunc i64 %20 to i32
  %42 = call i32 @strlcpy(i8* %22, i8* %40, i32 %41)
  %43 = call i8* @strchr(i8* %22, i8 signext 64)
  store i8* %43, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  store i8 0, i8* %44, align 1
  %45 = load i8*, i8** %14, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %50 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %51 = or i32 %49, %50
  %52 = call i32* @zfs_open(i32* %48, i8* %22, i32 %51)
  store i32* %52, i32** %15, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %85

55:                                               ; preds = %39
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %57 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %58 = call i64 @nvlist_alloc(i32* %56, i32 %57, i32 0)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @verify(i32 %60)
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @zfs_handle_dup(i32* %65)
  %67 = call i32 @zfs_snapshot_cb(i32 %66, %struct.TYPE_3__* %11)
  br label %73

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @fnvlist_add_boolean(i32 %70, i8* %71)
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @zfs_snapshot_nvl(i32* %74, i32 %76, i32* %77)
  store i32 %78, i32* %10, align 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @nvlist_free(i32 %80)
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @zfs_close(i32* %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %85

85:                                               ; preds = %73, %54, %34
  %86 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #3

declare dso_local i8* @dgettext(i32, i8*) #3

declare dso_local i32 @zfs_validate_name(i32*, i8*, i32, i32) #3

declare dso_local i32 @zfs_error(i32*, i32, i8*) #3

declare dso_local i32 @strlcpy(i8*, i8*, i32) #3

declare dso_local i8* @strchr(i8*, i8 signext) #3

declare dso_local i32* @zfs_open(i32*, i8*, i32) #3

declare dso_local i32 @verify(i32) #3

declare dso_local i64 @nvlist_alloc(i32*, i32, i32) #3

declare dso_local i32 @zfs_snapshot_cb(i32, %struct.TYPE_3__*) #3

declare dso_local i32 @zfs_handle_dup(i32*) #3

declare dso_local i32 @fnvlist_add_boolean(i32, i8*) #3

declare dso_local i32 @zfs_snapshot_nvl(i32*, i32, i32*) #3

declare dso_local i32 @nvlist_free(i32) #3

declare dso_local i32 @zfs_close(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
