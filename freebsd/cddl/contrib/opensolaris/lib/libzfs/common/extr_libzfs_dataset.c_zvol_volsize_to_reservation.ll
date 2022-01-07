; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zvol_volsize_to_reservation.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zvol_volsize_to_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_PROP_COPIES = common dso_local global i32 0, align 4
@ZFS_PROP_VOLBLOCKSIZE = common dso_local global i32 0, align 4
@ZVOL_DEFAULT_BLOCKSIZE = common dso_local global i32 0, align 4
@DNODES_PER_LEVEL = common dso_local global i32 0, align 4
@SPA_DVAS_PER_BP = common dso_local global i32 0, align 4
@DN_MAX_INDBLKSHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zvol_volsize_to_reservation(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @ZFS_PROP_COPIES, align 4
  %12 = call i32 @zfs_prop_to_name(i32 %11)
  %13 = call i64 @nvlist_lookup_string(i32* %10, i32 %12, i8** %9)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @atoi(i8* %16)
  store i32 %17, i32* %8, align 4
  br label %19

18:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @ZFS_PROP_VOLBLOCKSIZE, align 4
  %22 = call i32 @zfs_prop_to_name(i32 %21)
  %23 = call i64 @nvlist_lookup_uint64(i32* %20, i32 %22, i32* %7)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @ZVOL_DEFAULT_BLOCKSIZE, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %6, align 4
  store i32 7, i32* %5, align 4
  br label %31

31:                                               ; preds = %34, %27
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32, i32* @DNODES_PER_LEVEL, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @DNODES_PER_LEVEL, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sdiv i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %31

45:                                               ; preds = %31
  %46 = load i32, i32* @SPA_DVAS_PER_BP, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @MIN(i32 %46, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %3, align 4
  %54 = mul nsw i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load i64, i64* @DN_MAX_INDBLKSHIFT, align 8
  %56 = shl i64 1, %55
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
