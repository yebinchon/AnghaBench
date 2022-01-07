; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_fix_auto_resv.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_fix_auto_resv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ZFS_PROP_REFRESERVATION = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i64 0, align 8
@ZFS_PROP_VOLBLOCKSIZE = common dso_local global i64 0, align 8
@ZFS_PROP_VOLSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @zfs_fix_auto_resv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_fix_auto_resv(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = call i32 @ZFS_IS_VOLUME(%struct.TYPE_6__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = call i64 @zfs_which_resv_prop(%struct.TYPE_6__* %15, i64* %8)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %76

19:                                               ; preds = %14
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @ZFS_PROP_REFRESERVATION, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %76

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @zfs_prop_to_name(i64 %26)
  %28 = call i64 @nvlist_lookup_uint64(i32* %25, i32 %27, i64* %7)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %76

31:                                               ; preds = %24
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @UINT64_MAX, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %76

36:                                               ; preds = %31
  %37 = call i32* (...) @fnvlist_alloc()
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i64, i64* @ZFS_PROP_VOLBLOCKSIZE, align 8
  %40 = call i32 @zfs_prop_to_name(i64 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = load i64, i64* @ZFS_PROP_VOLBLOCKSIZE, align 8
  %43 = call i64 @zfs_prop_get_int(%struct.TYPE_6__* %41, i64 %42)
  %44 = call i32 @fnvlist_add_uint64(i32* %38, i32 %40, i64 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* @ZFS_PROP_VOLSIZE, align 8
  %47 = call i32 @zfs_prop_to_name(i64 %46)
  %48 = call i64 @nvlist_lookup_uint64(i32* %45, i32 %47, i64* %6)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = load i64, i64* @ZFS_PROP_VOLSIZE, align 8
  %53 = call i64 @zfs_prop_get_int(%struct.TYPE_6__* %51, i64 %52)
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %50, %36
  %55 = load i64, i64* %6, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i64 @zvol_volsize_to_reservation(i64 %55, i32* %56)
  store i64 %57, i64* %7, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @fnvlist_free(i32* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @zfs_prop_to_name(i64 %61)
  %63 = call i32 @nvlist_remove_all(i32* %60, i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @zfs_prop_to_name(i64 %65)
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @nvlist_add_uint64(i32* %64, i32 %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %54
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @no_memory(i32 %73)
  store i32 -1, i32* %3, align 4
  br label %76

75:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %70, %35, %30, %23, %18, %13
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @ZFS_IS_VOLUME(%struct.TYPE_6__*) #1

declare dso_local i64 @zfs_which_resv_prop(%struct.TYPE_6__*, i64*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @zfs_prop_to_name(i64) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @zvol_volsize_to_reservation(i64, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @nvlist_remove_all(i32*, i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i32 @no_memory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
