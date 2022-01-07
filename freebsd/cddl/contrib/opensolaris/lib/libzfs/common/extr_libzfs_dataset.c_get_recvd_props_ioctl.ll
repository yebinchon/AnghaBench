; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_get_recvd_props_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_get_recvd_props_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@ZFS_IOC_OBJSET_RECVD_PROPS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @get_recvd_props_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_recvd_props_ioctl(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %4, align 8
  %11 = bitcast %struct.TYPE_14__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = call i64 @zcmd_alloc_dst_nvlist(%struct.TYPE_15__* %12, %struct.TYPE_14__* %6, i32 0)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %60

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @strlcpy(i32 %18, i32 %21, i32 4)
  br label %23

23:                                               ; preds = %42, %16
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ZFS_IOC_OBJSET_RECVD_PROPS, align 4
  %28 = call i64 @ioctl(i32 %26, i32 %27, %struct.TYPE_14__* %6)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @ENOMEM, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = call i64 @zcmd_expand_dst_nvlist(%struct.TYPE_15__* %35, %struct.TYPE_14__* %6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 -1, i32* %2, align 4
  br label %60

39:                                               ; preds = %34
  br label %42

40:                                               ; preds = %30
  %41 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %6)
  store i32 -1, i32* %2, align 4
  br label %60

42:                                               ; preds = %39
  br label %23

43:                                               ; preds = %23
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = call i32 @zcmd_read_dst_nvlist(%struct.TYPE_15__* %46, %struct.TYPE_14__* %6, i32** %5)
  store i32 %47, i32* %7, align 4
  %48 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %6)
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 -1, i32* %2, align 4
  br label %60

52:                                               ; preds = %43
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @nvlist_free(i32* %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %52, %51, %40, %38, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @zcmd_alloc_dst_nvlist(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_14__*) #2

declare dso_local i64 @zcmd_expand_dst_nvlist(%struct.TYPE_15__*, %struct.TYPE_14__*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_14__*) #2

declare dso_local i32 @zcmd_read_dst_nvlist(%struct.TYPE_15__*, %struct.TYPE_14__*, i32**) #2

declare dso_local i32 @nvlist_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
