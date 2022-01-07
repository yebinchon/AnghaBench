; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_zcmd_write_nvlist_com.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_util.c_zcmd_write_nvlist_com.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NV_ENCODE_NATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64*, i32*)* @zcmd_write_nvlist_com to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcmd_write_nvlist_com(i32* %0, i64* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = load i32, i32* @NV_ENCODE_NATIVE, align 4
  %14 = call i64 @nvlist_size(i32* %12, i64* %11, i32 %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @verify(i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call i8* @zfs_alloc(i32* %18, i64 %19)
  store i8* %20, i8** %10, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %35

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @NV_ENCODE_NATIVE, align 4
  %26 = call i64 @nvlist_pack(i32* %24, i8** %10, i64* %11, i32 %25, i32 0)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @verify(i32 %28)
  %30 = load i8*, i8** %10, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64*, i64** %8, align 8
  store i64 %33, i64* %34, align 8
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %23, %22
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_size(i32*, i64*, i32) #1

declare dso_local i8* @zfs_alloc(i32*, i64) #1

declare dso_local i64 @nvlist_pack(i32*, i8**, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
