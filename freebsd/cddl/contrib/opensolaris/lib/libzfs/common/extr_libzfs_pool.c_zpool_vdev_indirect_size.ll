; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_vdev_indirect_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_vdev_indirect_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot determine indirect size of %s\00", align 1
@EZFS_NODEVICE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_INDIRECT_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"indirect size not available\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_vdev_indirect_size(%struct.TYPE_4__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %13, align 8
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %18 = load i32, i32* @TEXT_DOMAIN, align 4
  %19 = call i8* @dgettext(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @snprintf(i8* %17, i32 1024, i8* %19, i8* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32* @zpool_find_vdev(%struct.TYPE_4__* %22, i8* %23, i64* %10, i64* %11, i64* %12)
  store i32* %24, i32** %9, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* @EZFS_NODEVICE, align 4
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %30 = call i32 @zfs_error(i32* %27, i32 %28, i8* %29)
  store i32 %30, i32* %4, align 4
  br label %58

31:                                               ; preds = %3
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %34, %31
  %41 = load i64*, i64** %7, align 8
  store i64 0, i64* %41, align 8
  store i32 0, i32* %4, align 4
  br label %58

42:                                               ; preds = %37
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @ZPOOL_CONFIG_INDIRECT_SIZE, align 4
  %45 = load i64*, i64** %7, align 8
  %46 = call i64 @nvlist_lookup_uint64(i32* %43, i32 %44, i64* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* @TEXT_DOMAIN, align 4
  %51 = call i8* @dgettext(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %52 = call i32 @zfs_error_aux(i32* %49, i8* %51)
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* @EINVAL, align 4
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %56 = call i32 @zfs_error(i32* %53, i32 %54, i8* %55)
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %48, %40, %26
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32* @zpool_find_vdev(%struct.TYPE_4__*, i8*, i64*, i64*, i64*) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @zfs_error_aux(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
