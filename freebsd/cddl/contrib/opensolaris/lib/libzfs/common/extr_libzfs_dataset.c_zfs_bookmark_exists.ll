; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_bookmark_exists.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_bookmark_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_bookmark_exists(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = trunc i64 %14 to i32
  %19 = call i32 @strlcpy(i8* %16, i8* %17, i32 %18)
  %20 = call i8* @strchr(i8* %16, i8 signext 35)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @B_FALSE, align 4
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %47

25:                                               ; preds = %1
  %26 = load i8*, i8** %9, align 8
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %28, i8** %8, align 8
  %29 = call i32* (...) @fnvlist_alloc()
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @lzc_get_bookmarks(i8* %16, i32* %30, i32** %4)
  store i32 %31, i32* %10, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @nvlist_free(i32* %32)
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @nvlist_free(i32* %37)
  %39 = load i32, i32* @B_FALSE, align 4
  store i32 %39, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %47

40:                                               ; preds = %25
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @nvlist_exists(i32* %41, i8* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @nvlist_free(i32* %44)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %47

47:                                               ; preds = %40, %36, %23
  %48 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32 @lzc_get_bookmarks(i8*, i32*, i32**) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @nvlist_exists(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
