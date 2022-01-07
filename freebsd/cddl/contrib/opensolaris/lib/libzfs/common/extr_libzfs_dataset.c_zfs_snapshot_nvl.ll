; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_snapshot_nvl.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_snapshot_nvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot create snapshots \00", align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot create snapshot '%s'\00", align 1
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"/@\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"multiple snapshots of same fs not allowed\00", align 1
@EZFS_EXISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_snapshot_nvl(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %19 = load i32, i32* @TEXT_DOMAIN, align 4
  %20 = call i8* @dgettext(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %18, i32 1024, i8* %20)
  store i32* null, i32** %10, align 8
  br label %22

22:                                               ; preds = %46, %3
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32* @nvlist_next_nvpair(i32* %23, i32* %24)
  store i32* %25, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load i32*, i32** %10, align 8
  %29 = call i8* @nvpair_name(i32* %28)
  store i8* %29, i8** %12, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %33 = load i32, i32* @B_TRUE, align 4
  %34 = call i32 @zfs_validate_name(i32* %30, i8* %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %38 = load i32, i32* @TEXT_DOMAIN, align 4
  %39 = call i8* @dgettext(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %37, i32 1024, i8* %39, i8* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %45 = call i32 @zfs_error(i32* %42, i32 %43, i8* %44)
  store i32 %45, i32* %4, align 4
  br label %137

46:                                               ; preds = %27
  br label %22

47:                                               ; preds = %22
  %48 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %13, align 8
  %51 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %14, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32* @nvlist_next_nvpair(i32* %52, i32* null)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i8* @nvpair_name(i32* %54)
  %56 = trunc i64 %49 to i32
  %57 = call i32 @strlcpy(i8* %51, i8* %55, i32 %56)
  %58 = call i64 @strcspn(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %59 = getelementptr inbounds i8, i8* %51, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i32*, i32** %5, align 8
  %61 = call i32* @zpool_open(i32* %60, i8* %51)
  store i32* %61, i32** %15, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %47
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* @B_FALSE, align 4
  %69 = load i32*, i32** %15, align 8
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %71 = call i32* @zfs_valid_proplist(i32* %65, i32 %66, i32* %67, i32 %68, i32* null, i32* %69, i8* %70)
  store i32* %71, i32** %7, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32*, i32** %15, align 8
  %75 = call i32 @zpool_close(i32* %74)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %135

76:                                               ; preds = %64, %47
  %77 = load i32*, i32** %15, align 8
  %78 = call i32 @zpool_close(i32* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @lzc_snapshot(i32* %79, i32* %80, i32** %11)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %129

84:                                               ; preds = %76
  %85 = load i32, i32* @B_FALSE, align 4
  store i32 %85, i32* %17, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = call i32* @nvlist_next_nvpair(i32* %86, i32* null)
  store i32* %87, i32** %10, align 8
  br label %88

88:                                               ; preds = %104, %84
  %89 = load i32*, i32** %10, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %108

91:                                               ; preds = %88
  %92 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %93 = load i32, i32* @TEXT_DOMAIN, align 4
  %94 = call i8* @dgettext(i32 %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32*, i32** %10, align 8
  %96 = call i8* @nvpair_name(i32* %95)
  %97 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %92, i32 1024, i8* %94, i8* %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @fnvpair_value_int32(i32* %99)
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %102 = call i32 @zfs_standard_error(i32* %98, i32 %100, i8* %101)
  %103 = load i32, i32* @B_TRUE, align 4
  store i32 %103, i32* %17, align 4
  br label %104

104:                                              ; preds = %91
  %105 = load i32*, i32** %11, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = call i32* @nvlist_next_nvpair(i32* %105, i32* %106)
  store i32* %107, i32** %10, align 8
  br label %88

108:                                              ; preds = %88
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %128, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  switch i32 %112, label %122 [
    i32 128, label %113
  ]

113:                                              ; preds = %111
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* @TEXT_DOMAIN, align 4
  %116 = call i8* @dgettext(i32 %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %117 = call i32 @zfs_error_aux(i32* %114, i8* %116)
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* @EZFS_EXISTS, align 4
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %121 = call i32 @zfs_error(i32* %118, i32 %119, i8* %120)
  br label %127

122:                                              ; preds = %111
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %8, align 4
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %126 = call i32 @zfs_standard_error(i32* %123, i32 %124, i8* %125)
  br label %127

127:                                              ; preds = %122, %113
  br label %128

128:                                              ; preds = %127, %108
  br label %129

129:                                              ; preds = %128, %76
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @nvlist_free(i32* %130)
  %132 = load i32*, i32** %11, align 8
  %133 = call i32 @nvlist_free(i32* %132)
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %135

135:                                              ; preds = %129, %73
  %136 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %136)
  br label %137

137:                                              ; preds = %135, %36
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @zfs_validate_name(i32*, i8*, i32, i32) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32* @zpool_open(i32*, i8*) #1

declare dso_local i32* @zfs_valid_proplist(i32*, i32, i32*, i32, i32*, i32*, i8*) #1

declare dso_local i32 @zpool_close(i32*) #1

declare dso_local i32 @lzc_snapshot(i32*, i32*, i32**) #1

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #1

declare dso_local i32 @fnvpair_value_int32(i32*) #1

declare dso_local i32 @zfs_error_aux(i32*, i8*) #1

declare dso_local i32 @nvlist_free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
