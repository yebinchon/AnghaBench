; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs_core/common/extr_libzfs_core.c_lzc_bookmark.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs_core/common/extr_libzfs_core.c_lzc_bookmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/#\00", align 1
@ZFS_IOC_BOOKMARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzc_bookmark(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %11 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @nvlist_next_nvpair(i32* %15, i32* null)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %32

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @nvpair_name(i32* %21)
  %23 = trunc i64 %12 to i32
  %24 = call i32 @strlcpy(i8* %14, i32 %22, i32 %23)
  %25 = call i64 @strcspn(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %26 = getelementptr inbounds i8, i8* %14, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i32, i32* @ZFS_IOC_BOOKMARK, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32**, i32*** %5, align 8
  %30 = call i32 @lzc_ioctl(i32 %27, i8* %14, i32* %28, i32** %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %32

32:                                               ; preds = %20, %19
  %33 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %33)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @nvpair_name(i32*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i32 @lzc_ioctl(i32, i8*, i32*, i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
