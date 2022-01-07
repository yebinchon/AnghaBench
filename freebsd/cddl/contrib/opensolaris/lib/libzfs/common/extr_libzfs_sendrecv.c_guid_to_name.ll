; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_guid_to_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_guid_to_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32*, i64, i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i64, i8*)* @guid_to_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guid_to_name(i32* %0, i8* %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store i32 %23, i32* %24, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i64 %25, i64* %26, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = trunc i64 %20 to i32
  %32 = call i32 @strlcpy(i8* %22, i8* %30, i32 %31)
  %33 = call i8* @strrchr(i8* %22, i8 signext 64)
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = call i8* @strchr(i8* %22, i8 signext 0)
  store i8* %37, i8** %15, align 8
  br label %38

38:                                               ; preds = %36, %5
  br label %39

39:                                               ; preds = %81, %38
  %40 = load i8*, i8** %15, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %83

42:                                               ; preds = %39
  %43 = load i8*, i8** %15, align 8
  store i8 0, i8* %43, align 1
  %44 = load i32*, i32** %7, align 8
  %45 = call i32* @make_dataset_handle(i32* %44, i8* %22)
  store i32* %45, i32** %16, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %81

49:                                               ; preds = %42
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @zfs_handle_dup(i32* %50)
  %52 = call i32 @guid_to_name_cb(i32 %51, %struct.TYPE_7__* %14)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* @EEXIST, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 @zfs_iter_children(i32* %57, i32 (i32, %struct.TYPE_7__*)* @guid_to_name_cb, %struct.TYPE_7__* %14)
  store i32 %58, i32* %17, align 4
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* @EEXIST, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i64, i64* %10, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32*, i32** %16, align 8
  %68 = call i32 @zfs_iter_bookmarks(i32* %67, i32 (i32, %struct.TYPE_7__*)* @guid_to_name_cb, %struct.TYPE_7__* %14)
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %66, %63, %59
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @zfs_close(i32* %70)
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @EEXIST, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %85

76:                                               ; preds = %69
  %77 = call i8* @strrchr(i8* %22, i8 signext 47)
  %78 = getelementptr i8, i8* %77, i64 1
  %79 = bitcast i8* %78 to i32*
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32* %79, i32** %80, align 8
  br label %81

81:                                               ; preds = %76, %48
  %82 = call i8* @strrchr(i8* %22, i8 signext 47)
  store i8* %82, i8** %15, align 8
  br label %39

83:                                               ; preds = %39
  %84 = load i32, i32* @ENOENT, align 4
  store i32 %84, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %85

85:                                               ; preds = %83, %75
  %86 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32* @make_dataset_handle(i32*, i8*) #2

declare dso_local i32 @guid_to_name_cb(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @zfs_handle_dup(i32*) #2

declare dso_local i32 @zfs_iter_children(i32*, i32 (i32, %struct.TYPE_7__*)*, %struct.TYPE_7__*) #2

declare dso_local i32 @zfs_iter_bookmarks(i32*, i32 (i32, %struct.TYPE_7__*)*, %struct.TYPE_7__*) #2

declare dso_local i32 @zfs_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
