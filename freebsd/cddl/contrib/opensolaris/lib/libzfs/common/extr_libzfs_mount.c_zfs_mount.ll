; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_zfs_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_mount.c_zfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32* }
%struct.stat = type { i32 }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@MNT_LINE_MAX = common dso_local global i32 0, align 4
@ZPOOL_PROP_READONLY = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to create mountpoint\00", align 1
@EZFS_MOUNTFAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot mount '%s'\00", align 1
@MNTTYPE_ZFS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"mountpoint or dataset is busy\00", align 1
@EPERM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Insufficient privileges\00", align 1
@ENOTSUP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [110 x i8] c"Can't mount a version %lld file system on a version %d pool. Pool must be upgraded to mount this file system.\00", align 1
@ZFS_PROP_VERSION = common dso_local global i32 0, align 4
@MNTOPT_REMOUNT = common dso_local global i32 0, align 4
@MS_OVERLAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_mount(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [256 x i8], align 16
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @MNT_LINE_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %12, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %29, align 16
  br label %34

30:                                               ; preds = %3
  %31 = load i8*, i8** %6, align 8
  %32 = trunc i64 %21 to i32
  %33 = call i32 @strlcpy(i8* %22, i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ZPOOL_PROP_READONLY, align 4
  %39 = call i64 @zpool_get_prop_int(i32 %37, i32 %38, i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @MS_RDONLY, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = trunc i64 %17 to i32
  %48 = call i32 @zfs_is_mountable(%struct.TYPE_7__* %46, i8* %19, i32 %47, i32* null)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %139

51:                                               ; preds = %45
  %52 = call i64 @lstat(i8* %19, %struct.stat* %8)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = call i64 @mkdirp(i8* %19, i32 493)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* @TEXT_DOMAIN, align 4
  %60 = call i8* @dgettext(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %61 = call i32 @zfs_error_aux(i32* %58, i8* %60)
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* @EZFS_MOUNTFAILED, align 4
  %64 = load i32, i32* @TEXT_DOMAIN, align 4
  %65 = call i8* @dgettext(i32 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %66 = call i32 @zfs_error_fmt(i32* %62, i32 %63, i8* %65, i8* %19)
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %139

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %51
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = call i32 @zfs_get_name(%struct.TYPE_7__* %69)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @MNTTYPE_ZFS, align 4
  %73 = trunc i64 %21 to i32
  %74 = call i64 @zmount(i32 %70, i8* %19, i32 %71, i32 %72, i32* null, i32 0, i8* %22, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %134

76:                                               ; preds = %68
  %77 = load i64, i64* @errno, align 8
  %78 = load i64, i64* @EBUSY, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* @TEXT_DOMAIN, align 4
  %83 = call i8* @dgettext(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %84 = call i32 @zfs_error_aux(i32* %81, i8* %83)
  br label %125

85:                                               ; preds = %76
  %86 = load i64, i64* @errno, align 8
  %87 = load i64, i64* @EPERM, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* @TEXT_DOMAIN, align 4
  %92 = call i8* @dgettext(i32 %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %93 = call i32 @zfs_error_aux(i32* %90, i8* %92)
  br label %124

94:                                               ; preds = %85
  %95 = load i64, i64* @errno, align 8
  %96 = load i64, i64* @ENOTSUP, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %118

98:                                               ; preds = %94
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = call i64 @zfs_spa_version(%struct.TYPE_7__* %99, i32* %15)
  %101 = icmp eq i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @VERIFY(i32 %102)
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %105 = load i32, i32* @TEXT_DOMAIN, align 4
  %106 = call i8* @dgettext(i32 %105, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = load i32, i32* @ZFS_PROP_VERSION, align 4
  %109 = call i64 @zfs_prop_get_int(%struct.TYPE_7__* %107, i32 %108)
  %110 = trunc i64 %109 to i32
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @snprintf(i8* %104, i32 256, i8* %106, i32 %110, i32 %111)
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* @TEXT_DOMAIN, align 4
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %116 = call i8* @dgettext(i32 %114, i8* %115)
  %117 = call i32 @zfs_error_aux(i32* %113, i8* %116)
  br label %123

118:                                              ; preds = %94
  %119 = load i32*, i32** %12, align 8
  %120 = load i64, i64* @errno, align 8
  %121 = call i8* @strerror(i64 %120)
  %122 = call i32 @zfs_error_aux(i32* %119, i8* %121)
  br label %123

123:                                              ; preds = %118, %98
  br label %124

124:                                              ; preds = %123, %89
  br label %125

125:                                              ; preds = %124, %80
  %126 = load i32*, i32** %12, align 8
  %127 = load i32, i32* @EZFS_MOUNTFAILED, align 4
  %128 = load i32, i32* @TEXT_DOMAIN, align 4
  %129 = call i8* @dgettext(i32 %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @zfs_error_fmt(i32* %126, i32 %127, i8* %129, i8* %132)
  store i32 %133, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %139

134:                                              ; preds = %68
  %135 = load i32*, i32** %12, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = call i32 @zfs_get_name(%struct.TYPE_7__* %136)
  %138 = call i32 @libzfs_mnttab_add(i32* %135, i32 %137, i8* %19, i8* %22)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %139

139:                                              ; preds = %134, %125, %57, %50
  %140 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @zpool_get_prop_int(i32, i32, i32*) #2

declare dso_local i32 @zfs_is_mountable(%struct.TYPE_7__*, i8*, i32, i32*) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i64 @mkdirp(i8*, i32) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_error_fmt(i32*, i32, i8*, i8*) #2

declare dso_local i64 @zmount(i32, i8*, i32, i32, i32*, i32, i8*, i32) #2

declare dso_local i32 @zfs_get_name(%struct.TYPE_7__*) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @zfs_spa_version(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_7__*, i32) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i32 @libzfs_mnttab_add(i32*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
