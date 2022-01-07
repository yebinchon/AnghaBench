; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_jail.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_jail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cannot jail '%s'\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"cannot unjail '%s'\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"volumes can not be jailed\00", align 1
@EZFS_BADTYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"snapshots can not be jailed\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@DMU_OST_ZFS = common dso_local global i32 0, align 4
@ZFS_IOC_JAIL = common dso_local global i64 0, align 8
@ZFS_IOC_UNJAIL = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_jail(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %8, align 8
  %16 = bitcast %struct.TYPE_10__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 16, i1 false)
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %21 = load i32, i32* @TEXT_DOMAIN, align 4
  %22 = call i8* @dgettext(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snprintf(i8* %20, i32 1024, i8* %22, i32 %25)
  br label %35

27:                                               ; preds = %3
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %29 = load i32, i32* @TEXT_DOMAIN, align 4
  %30 = call i8* @dgettext(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snprintf(i8* %28, i32 1024, i8* %30, i32 %33)
  br label %35

35:                                               ; preds = %27, %19
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %57 [
    i32 128, label %39
    i32 129, label %48
  ]

39:                                               ; preds = %35
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = load i32, i32* @TEXT_DOMAIN, align 4
  %42 = call i8* @dgettext(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @zfs_error_aux(%struct.TYPE_11__* %40, i8* %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = load i32, i32* @EZFS_BADTYPE, align 4
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %47 = call i32 @zfs_error(%struct.TYPE_11__* %44, i32 %45, i8* %46)
  store i32 %47, i32* %4, align 4
  br label %96

48:                                               ; preds = %35
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = load i32, i32* @TEXT_DOMAIN, align 4
  %51 = call i8* @dgettext(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %52 = call i32 @zfs_error_aux(%struct.TYPE_11__* %49, i8* %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = load i32, i32* @EZFS_BADTYPE, align 4
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %56 = call i32 @zfs_error(%struct.TYPE_11__* %53, i32 %54, i8* %55)
  store i32 %56, i32* %4, align 4
  br label %96

57:                                               ; preds = %35
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @strlcpy(i32 %66, i32 %69, i32 4)
  %71 = load i32, i32* @DMU_OST_ZFS, align 4
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %6, align 4
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %57
  %78 = load i64, i64* @ZFS_IOC_JAIL, align 8
  br label %81

79:                                               ; preds = %57
  %80 = load i64, i64* @ZFS_IOC_UNJAIL, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i64 [ %78, %77 ], [ %80, %79 ]
  store i64 %82, i64* %11, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @ioctl(i32 %85, i64 %86, %struct.TYPE_10__* %9)
  store i32 %87, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %91 = load i32, i32* @errno, align 4
  %92 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %93 = call i32 @zfs_standard_error(%struct.TYPE_11__* %90, i32 %91, i8* %92)
  br label %94

94:                                               ; preds = %89, %81
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %48, %39
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_error_aux(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @zfs_error(%struct.TYPE_11__*, i32, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32 @ioctl(i32, i64, %struct.TYPE_10__*) #2

declare dso_local i32 @zfs_standard_error(%struct.TYPE_11__*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
