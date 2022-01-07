; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_set_fsacl.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_set_fsacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32* }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32 }

@ZFS_TYPE_VOLUME = common dso_local global i64 0, align 8
@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@NV_ENCODE_NATIVE = common dso_local global i32 0, align 4
@ZFS_IOC_SET_FSACL = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot set permissions on '%s'\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"pool must be upgraded\00", align 1
@EZFS_BADVERSION = common dso_local global i32 0, align 4
@EZFS_BADTYPE = common dso_local global i32 0, align 4
@EZFS_NOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_set_fsacl(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %22, %3
  %29 = phi i1 [ true, %3 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @NV_ENCODE_NATIVE, align 4
  %34 = call i32 @nvlist_size(i32* %32, i64* %11, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i64, i64* %11, align 8
  %40 = call i8* @malloc(i64 %39)
  store i8* %40, i8** %9, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @NV_ENCODE_NATIVE, align 4
  %43 = call i32 @nvlist_pack(i32* %41, i8** %9, i64* %11, i32 %42, i32 0)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @strlcpy(i32 %56, i32 %59, i32 4)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @ZFS_IOC_SET_FSACL, align 4
  %63 = call i64 @zfs_ioctl(i32* %61, i32 %62, %struct.TYPE_6__* %7)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %28
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %67 = load i32, i32* @TEXT_DOMAIN, align 4
  %68 = call i8* @dgettext(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @snprintf(i8* %66, i32 1024, i8* %68, i32 %70)
  %72 = load i32, i32* @errno, align 4
  switch i32 %72, label %92 [
    i32 128, label %73
    i32 130, label %82
    i32 129, label %87
  ]

73:                                               ; preds = %65
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* @TEXT_DOMAIN, align 4
  %76 = call i8* @dgettext(i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %77 = call i32 @zfs_error_aux(i32* %74, i8* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* @EZFS_BADVERSION, align 4
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %81 = call i32 @zfs_error(i32* %78, i32 %79, i8* %80)
  store i32 %81, i32* %12, align 4
  br label %97

82:                                               ; preds = %65
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* @EZFS_BADTYPE, align 4
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %86 = call i32 @zfs_error(i32* %83, i32 %84, i8* %85)
  store i32 %86, i32* %12, align 4
  br label %97

87:                                               ; preds = %65
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* @EZFS_NOENT, align 4
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %91 = call i32 @zfs_error(i32* %88, i32 %89, i8* %90)
  store i32 %91, i32* %12, align 4
  br label %97

92:                                               ; preds = %65
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* @errno, align 4
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %96 = call i32 @zfs_standard_error_fmt(i32* %93, i32 %94, i8* %95)
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %92, %87, %82, %73
  br label %98

98:                                               ; preds = %97, %28
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i32, i32* %12, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @nvlist_size(i32*, i64*, i32) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @nvlist_pack(i32*, i8**, i64*, i32, i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @zfs_standard_error_fmt(i32*, i32, i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
