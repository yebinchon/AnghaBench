; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_vdev_remove_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_vdev_remove_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot cancel removal\00", align 1
@ZFS_IOC_VDEV_REMOVE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_vdev_remove_cancel(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 12, i1 false)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %12 = load i32, i32* @TEXT_DOMAIN, align 4
  %13 = call i8* @dgettext(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @snprintf(i8* %11, i32 1024, i8* %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @strlcpy(i32 %16, i32 %19, i32 4)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @ZFS_IOC_VDEV_REMOVE, align 4
  %24 = call i64 @zfs_ioctl(i32* %22, i32 %23, %struct.TYPE_6__* %4)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

27:                                               ; preds = %1
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %31 = call i32 @zpool_standard_error(i32* %28, i32 %29, i8* %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %27, %26
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
