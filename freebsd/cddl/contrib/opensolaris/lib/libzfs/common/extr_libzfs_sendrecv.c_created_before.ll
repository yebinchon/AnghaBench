; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_created_before.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_created_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@ZFS_PROP_CREATETXG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64)* @created_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @created_before(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %96

28:                                               ; preds = %4
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %96

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32* @fsavl_find(i32* %33, i64 %34, i8** %12)
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i64 @nvlist_lookup_string(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11)
  %38 = icmp eq i64 0, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @VERIFY(i32 %39)
  %41 = trunc i64 %22 to i32
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @snprintf(i8* %24, i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %47 = call i32* @zfs_open(i32* %45, i8* %24, i32 %46)
  store i32* %47, i32** %16, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %96

51:                                               ; preds = %32
  %52 = load i32*, i32** %7, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32* @fsavl_find(i32* %52, i64 %53, i8** %12)
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i64 @nvlist_lookup_string(i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11)
  %57 = icmp eq i64 0, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @VERIFY(i32 %58)
  %60 = trunc i64 %22 to i32
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = call i32 @snprintf(i8* %24, i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %61, i8* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %66 = call i32* @zfs_open(i32* %64, i8* %24, i32 %65)
  store i32* %66, i32** %17, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %51
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @zfs_close(i32* %70)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %96

72:                                               ; preds = %51
  %73 = load i32*, i32** %16, align 8
  %74 = load i32, i32* @ZFS_PROP_CREATETXG, align 4
  %75 = call i64 @zfs_prop_get_int(i32* %73, i32 %74)
  store i64 %75, i64* %18, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = load i32, i32* @ZFS_PROP_CREATETXG, align 4
  %78 = call i64 @zfs_prop_get_int(i32* %76, i32 %77)
  store i64 %78, i64* %19, align 8
  %79 = load i64, i64* %18, align 8
  %80 = load i64, i64* %19, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i32 -1, i32* %15, align 4
  br label %90

83:                                               ; preds = %72
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* %19, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 1, i32* %15, align 4
  br label %89

88:                                               ; preds = %83
  store i32 0, i32* %15, align 4
  br label %89

89:                                               ; preds = %88, %87
  br label %90

90:                                               ; preds = %89, %82
  %91 = load i32*, i32** %16, align 8
  %92 = call i32 @zfs_close(i32* %91)
  %93 = load i32*, i32** %17, align 8
  %94 = call i32 @zfs_close(i32* %93)
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %96

96:                                               ; preds = %90, %69, %50, %31, %27
  %97 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fsavl_find(i32*, i64, i8**) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32* @zfs_open(i32*, i8*, i32) #2

declare dso_local i32 @zfs_close(i32*) #2

declare dso_local i64 @zfs_prop_get_int(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
