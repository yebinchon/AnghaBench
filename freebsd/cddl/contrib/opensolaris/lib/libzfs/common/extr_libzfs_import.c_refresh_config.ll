; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_import.c_refresh_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_import.c_refresh_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@CONFIG_BUF_MINSIZE = common dso_local global i32 0, align 4
@ZFS_IOC_POOL_TRYIMPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, i32*)* @refresh_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @refresh_config(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = bitcast %struct.TYPE_14__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @zcmd_write_conf_nvlist(%struct.TYPE_15__* %11, %struct.TYPE_14__* %7, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %63

16:                                               ; preds = %2
  %17 = load i32, i32* @CONFIG_BUF_MINSIZE, align 4
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 4
  %21 = call i32 @MAX(i32 %17, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @zcmd_alloc_dst_nvlist(%struct.TYPE_15__* %22, %struct.TYPE_14__* %7, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %7)
  store i32* null, i32** %3, align 8
  br label %63

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %48, %28
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ZFS_IOC_POOL_TRYIMPORT, align 4
  %34 = call i32 @ioctl(i32 %32, i32 %33, %struct.TYPE_14__* %7)
  store i32 %34, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @ENOMEM, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %36, %29
  %41 = phi i1 [ false, %29 ], [ %39, %36 ]
  br i1 %41, label %42, label %49

42:                                               ; preds = %40
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = call i64 @zcmd_expand_dst_nvlist(%struct.TYPE_15__* %43, %struct.TYPE_14__* %7)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %7)
  store i32* null, i32** %3, align 8
  br label %63

48:                                               ; preds = %42
  br label %29

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %7)
  store i32* null, i32** %3, align 8
  br label %63

54:                                               ; preds = %49
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = call i64 @zcmd_read_dst_nvlist(%struct.TYPE_15__* %55, %struct.TYPE_14__* %7, i32** %6)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %7)
  store i32* null, i32** %3, align 8
  br label %63

60:                                               ; preds = %54
  %61 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %7)
  %62 = load i32*, i32** %6, align 8
  store i32* %62, i32** %3, align 8
  br label %63

63:                                               ; preds = %60, %58, %52, %46, %26, %15
  %64 = load i32*, i32** %3, align 8
  ret i32* %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @zcmd_write_conf_nvlist(%struct.TYPE_15__*, %struct.TYPE_14__*, i32*) #2

declare dso_local i32 @MAX(i32, i32) #2

declare dso_local i64 @zcmd_alloc_dst_nvlist(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_14__*) #2

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_14__*) #2

declare dso_local i64 @zcmd_expand_dst_nvlist(%struct.TYPE_15__*, %struct.TYPE_14__*) #2

declare dso_local i64 @zcmd_read_dst_nvlist(%struct.TYPE_15__*, %struct.TYPE_14__*, i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
