; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs_core/common/extr_libzfs_core.c_lzc_send_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs_core/common/extr_libzfs_core.c_lzc_send_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"from\00", align 1
@LZC_SEND_FLAG_LARGE_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"largeblockok\00", align 1
@LZC_SEND_FLAG_EMBED_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"embedok\00", align 1
@LZC_SEND_FLAG_COMPRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"compressok\00", align 1
@ZFS_IOC_SEND_SPACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"space\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzc_send_space(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = call i32* (...) @fnvlist_alloc()
  store i32* %12, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32*, i32** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @fnvlist_add_string(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @LZC_SEND_FLAG_LARGE_BLOCK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @fnvlist_add_boolean(i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @LZC_SEND_FLAG_EMBED_DATA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @fnvlist_add_boolean(i32* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @LZC_SEND_FLAG_COMPRESS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @fnvlist_add_boolean(i32* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* @ZFS_IOC_SEND_SPACE, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @lzc_ioctl(i32 %44, i8* %45, i32* %46, i32** %10)
  store i32 %47, i32* %11, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @nvlist_free(i32* %48)
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @fnvlist_lookup_uint64(i32* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %43
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @nvlist_free(i32* %57)
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i32 @lzc_ioctl(i32, i8*, i32*, i32**) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @fnvlist_lookup_uint64(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
