; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_add_synthetic_resv.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_add_synthetic_resv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ZFS_PROP_VOLSIZE = common dso_local global i32 0, align 4
@ZFS_PROP_VOLBLOCKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_add_synthetic_resv(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = load i32, i32* @ZFS_PROP_VOLSIZE, align 4
  %14 = call i64 @zfs_prop_get_int(%struct.TYPE_5__* %12, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = call i64 @zfs_which_resv_prop(%struct.TYPE_5__* %15, i32* %10)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %72

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @zfs_prop_get_int(%struct.TYPE_5__* %20, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = call i32* (...) @fnvlist_alloc()
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* @ZFS_PROP_VOLBLOCKSIZE, align 4
  %26 = call i32 @zfs_prop_to_name(i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = load i32, i32* @ZFS_PROP_VOLBLOCKSIZE, align 4
  %29 = call i64 @zfs_prop_get_int(%struct.TYPE_5__* %27, i32 %28)
  %30 = call i32 @fnvlist_add_uint64(i32* %24, i32 %26, i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i64 @zvol_volsize_to_reservation(i64 %31, i32* %32)
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %19
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @zfs_prop_to_name(i32 %38)
  %40 = call i64 @nvlist_exists(i32* %37, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %19
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @fnvlist_free(i32* %43)
  store i32 0, i32* %3, align 4
  br label %72

45:                                               ; preds = %36
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @ZFS_PROP_VOLSIZE, align 4
  %48 = call i32 @zfs_prop_to_name(i32 %47)
  %49 = call i64 @nvlist_lookup_uint64(i32* %46, i32 %48, i64* %7)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @fnvlist_free(i32* %52)
  store i32 -1, i32* %3, align 4
  br label %72

54:                                               ; preds = %45
  %55 = load i64, i64* %7, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i64 @zvol_volsize_to_reservation(i64 %55, i32* %56)
  store i64 %57, i64* %9, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @fnvlist_free(i32* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @zfs_prop_to_name(i32 %61)
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @nvlist_add_uint64(i32* %60, i32 %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %54
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @no_memory(i32 %69)
  store i32 -1, i32* %3, align 4
  br label %72

71:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %66, %51, %42, %18
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @zfs_which_resv_prop(%struct.TYPE_5__*, i32*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i64 @zvol_volsize_to_reservation(i64, i32*) #1

declare dso_local i64 @nvlist_exists(i32*, i32) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i32 @no_memory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
