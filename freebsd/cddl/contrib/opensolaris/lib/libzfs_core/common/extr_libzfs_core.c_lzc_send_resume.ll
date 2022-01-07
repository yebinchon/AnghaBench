; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs_core/common/extr_libzfs_core.c_lzc_send_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs_core/common/extr_libzfs_core.c_lzc_send_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"fromsnap\00", align 1
@LZC_SEND_FLAG_LARGE_BLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"largeblockok\00", align 1
@LZC_SEND_FLAG_EMBED_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"embedok\00", align 1
@LZC_SEND_FLAG_COMPRESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"compressok\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"resume_object\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"resume_offset\00", align 1
@ZFS_IOC_SEND_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzc_send_resume(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = call i32* (...) @fnvlist_alloc()
  store i32* %15, i32** %13, align 8
  %16 = load i32*, i32** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @fnvlist_add_int32(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32*, i32** %13, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @fnvlist_add_string(i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %6
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @LZC_SEND_FLAG_LARGE_BLOCK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @fnvlist_add_boolean(i32* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @LZC_SEND_FLAG_EMBED_DATA, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @fnvlist_add_boolean(i32* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @LZC_SEND_FLAG_COMPRESS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @fnvlist_add_boolean(i32* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52, %49
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @fnvlist_add_uint64(i32* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @fnvlist_add_uint64(i32* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %55, %52
  %63 = load i32, i32* @ZFS_IOC_SEND_NEW, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @lzc_ioctl(i32 %63, i8* %64, i32* %65, i32* null)
  store i32 %66, i32* %14, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @nvlist_free(i32* %67)
  %69 = load i32, i32* %14, align 4
  ret i32 %69
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_int32(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i32) #1

declare dso_local i32 @lzc_ioctl(i32, i8*, i32*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
