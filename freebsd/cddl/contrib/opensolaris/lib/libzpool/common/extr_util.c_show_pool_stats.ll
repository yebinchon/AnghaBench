; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzpool/common/extr_util.c_show_pool_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzpool/common/extr_util.c_show_pool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_pool_stats(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @spa_name(i32* %6)
  %8 = call i64 @spa_get_stats(i32 %7, i32** %3, i32* null, i32 0)
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @VERIFY(i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %14 = call i64 @nvlist_lookup_nvlist(i32* %12, i32 %13, i32** %4)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %20 = call i64 @nvlist_lookup_string(i32* %18, i32 %19, i8** %5)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @VERIFY(i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @show_vdev_stats(i8* %24, i32 %25, i32* %26, i32 0)
  %28 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @show_vdev_stats(i8* null, i32 %28, i32* %29, i32 0)
  %31 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @show_vdev_stats(i8* null, i32 %31, i32* %32, i32 0)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @nvlist_free(i32* %34)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @spa_get_stats(i32, i32**, i32*, i32) #1

declare dso_local i32 @spa_name(i32*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @show_vdev_stats(i8*, i32, i32*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
