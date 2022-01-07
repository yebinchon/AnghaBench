; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_iter.c_zfs_iter_clones.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_iter.c_zfs_iter_clones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_iter_clones(%struct.TYPE_7__* %0, i32 (%struct.TYPE_7__*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32 (%struct.TYPE_7__*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 (%struct.TYPE_7__*, i8*)* %1, i32 (%struct.TYPE_7__*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = call i32* @zfs_get_clones_nvl(%struct.TYPE_7__* %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

17:                                               ; preds = %3
  %18 = load i32*, i32** %8, align 8
  %19 = call i32* @nvlist_next_nvpair(i32* %18, i32* null)
  store i32* %19, i32** %9, align 8
  br label %20

20:                                               ; preds = %46, %17
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @nvpair_name(i32* %27)
  %29 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %30 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.TYPE_7__* @zfs_open(i32 %26, i32 %28, i32 %31)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %10, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %6, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 %36(%struct.TYPE_7__* %37, i8* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %51

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %23
  br label %46

46:                                               ; preds = %45
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32* @nvlist_next_nvpair(i32* %47, i32* %48)
  store i32* %49, i32** %9, align 8
  br label %20

50:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %42, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32* @zfs_get_clones_nvl(%struct.TYPE_7__*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @zfs_open(i32, i32, i32) #1

declare dso_local i32 @nvpair_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
