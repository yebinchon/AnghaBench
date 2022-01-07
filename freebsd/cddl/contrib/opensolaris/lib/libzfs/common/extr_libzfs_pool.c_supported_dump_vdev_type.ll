; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_supported_dump_vdev_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_supported_dump_vdev_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_FILE = common dso_local global i32 0, align 4
@VDEV_TYPE_HOLE = common dso_local global i32 0, align 4
@VDEV_TYPE_MISSING = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"vdev type '%s' is not supported\00", align 1
@EZFS_VDEVNOTSUP = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @supported_dump_vdev_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @supported_dump_vdev_type(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %14 = call i64 @nvlist_lookup_string(i32* %12, i32 %13, i8** %8)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @verify(i32 %16)
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* @VDEV_TYPE_FILE, align 4
  %20 = call i64 @strcmp(i8* %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %3
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* @VDEV_TYPE_HOLE, align 4
  %25 = call i64 @strcmp(i8* %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @VDEV_TYPE_MISSING, align 4
  %30 = call i64 @strcmp(i8* %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27, %22, %3
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @TEXT_DOMAIN, align 4
  %35 = call i32 @dgettext(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @zfs_error_aux(i32* %33, i32 %35, i8* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @EZFS_VDEVNOTSUP, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @zfs_error(i32* %38, i32 %39, i8* %40)
  %42 = load i32, i32* @B_FALSE, align 4
  store i32 %42, i32* %4, align 4
  br label %71

43:                                               ; preds = %27
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %46 = call i64 @nvlist_lookup_nvlist_array(i32* %44, i32 %45, i32*** %9, i64* %10)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  store i64 0, i64* %11, align 8
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load i32*, i32** %5, align 8
  %55 = load i32**, i32*** %9, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @supported_dump_vdev_type(i32* %54, i32* %58, i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @B_FALSE, align 4
  store i32 %63, i32* %4, align 4
  br label %71

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %49

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68, %43
  %70 = load i32, i32* @B_TRUE, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %62, %32
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @zfs_error_aux(i32*, i32, i8*) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
