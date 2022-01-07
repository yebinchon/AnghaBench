; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_get_fsacl.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_get_fsacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i32 }

@ZFS_TYPE_VOLUME = common dso_local global i64 0, align 8
@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@EZFS_NOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ZFS_IOC_GET_FSACL = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot get permissions on '%s'\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"pool must be upgraded\00", align 1
@EZFS_BADVERSION = common dso_local global i32 0, align 4
@EZFS_BADTYPE = common dso_local global i32 0, align 4
@EZFS_NOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_get_fsacl(%struct.TYPE_9__* %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32** %1, i32*** %4, align 8
  %12 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %6, align 8
  store i32 2048, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %21, %2
  %28 = phi i1 [ true, %2 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  br label %31

31:                                               ; preds = %68, %27
  %32 = load i32, i32* %7, align 4
  %33 = call i8* @malloc(i32 %32)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = load i32, i32* @EZFS_NOMEM, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = call i8* @strerror(i32 %39)
  %41 = call i32 @zfs_error(%struct.TYPE_11__* %37, i32 %38, i8* %40)
  store i32 %41, i32* %9, align 4
  br label %121

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @strlcpy(i32 %49, i32 %52, i32 4)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ZFS_IOC_GET_FSACL, align 4
  %58 = call i64 @ioctl(i32 %56, i32 %57, %struct.TYPE_10__* %5)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %98

60:                                               ; preds = %42
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %62 = load i32, i32* @TEXT_DOMAIN, align 4
  %63 = call i8* @dgettext(i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @snprintf(i8* %61, i32 1024, i8* %63, i32 %65)
  %67 = load i32, i32* @errno, align 4
  switch i32 %67, label %92 [
    i32 129, label %68
    i32 128, label %73
    i32 131, label %82
    i32 130, label %87
  ]

68:                                               ; preds = %60
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @free(i8* %69)
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %7, align 4
  br label %31

73:                                               ; preds = %60
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = load i32, i32* @TEXT_DOMAIN, align 4
  %76 = call i8* @dgettext(i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %77 = call i32 @zfs_error_aux(%struct.TYPE_11__* %74, i8* %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = load i32, i32* @EZFS_BADVERSION, align 4
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %81 = call i32 @zfs_error(%struct.TYPE_11__* %78, i32 %79, i8* %80)
  store i32 %81, i32* %9, align 4
  br label %97

82:                                               ; preds = %60
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = load i32, i32* @EZFS_BADTYPE, align 4
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %86 = call i32 @zfs_error(%struct.TYPE_11__* %83, i32 %84, i8* %85)
  store i32 %86, i32* %9, align 4
  br label %97

87:                                               ; preds = %60
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = load i32, i32* @EZFS_NOENT, align 4
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %91 = call i32 @zfs_error(%struct.TYPE_11__* %88, i32 %89, i8* %90)
  store i32 %91, i32* %9, align 4
  br label %97

92:                                               ; preds = %60
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = load i32, i32* @errno, align 4
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %96 = call i32 @zfs_standard_error_fmt(%struct.TYPE_11__* %93, i32 %94, i8* %95)
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %92, %87, %82, %73
  br label %118

98:                                               ; preds = %42
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32**, i32*** %4, align 8
  %103 = call i32 @nvlist_unpack(i8* %99, i32 %101, i32** %102, i32 0)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %98
  %107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %108 = load i32, i32* @TEXT_DOMAIN, align 4
  %109 = call i8* @dgettext(i32 %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @snprintf(i8* %107, i32 1024, i8* %109, i32 %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = load i32, i32* %11, align 4
  %115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %116 = call i32 @zfs_standard_error_fmt(%struct.TYPE_11__* %113, i32 %114, i8* %115)
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %106, %98
  br label %118

118:                                              ; preds = %117, %97
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @free(i8* %119)
  br label %121

121:                                              ; preds = %118, %36
  %122 = load i32, i32* %9, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @zfs_error(%struct.TYPE_11__*, i32, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @zfs_error_aux(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @zfs_standard_error_fmt(%struct.TYPE_11__*, i32, i8*) #2

declare dso_local i32 @nvlist_unpack(i8*, i32, i32**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
