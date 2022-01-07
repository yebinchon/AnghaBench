; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_vdev_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_vdev_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot clear errors for %llx\00", align 1
@ZPOOL_NO_REWIND = common dso_local global i32 0, align 4
@ZFS_IOC_CLEAR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_vdev_clear(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %8, align 8
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %14 = load i32, i32* @TEXT_DOMAIN, align 4
  %15 = call i8* @dgettext(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @snprintf(i8* %13, i32 1024, i8* %15, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strlcpy(i32 %19, i32 %22, i32 4)
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @ZPOOL_NO_REWIND, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ZFS_IOC_CLEAR, align 4
  %32 = call i64 @ioctl(i32 %30, i32 %31, %struct.TYPE_8__* %6)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

35:                                               ; preds = %2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = load i32, i32* @errno, align 4
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %39 = call i32 @zpool_standard_error(%struct.TYPE_9__* %36, i32 %37, i8* %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %34
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @zpool_standard_error(%struct.TYPE_9__*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
