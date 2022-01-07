; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_recv_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_recv_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64 }

@B_FALSE = common dso_local global i64 0, align 8
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@ZFS_PROP_NAME = common dso_local global i32 0, align 4
@MS_FORCE = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i64 0, align 8
@SPA_VERSION_USERREFS = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"attempting destroy %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, %struct.TYPE_11__*)* @recv_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_destroy(i32* %0, i8* %1, i32 %2, i8* %3, %struct.TYPE_11__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i64, i64* @B_FALSE, align 8
  store i64 %18, i64* %15, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %22 = call %struct.TYPE_10__* @zfs_open(i32* %19, i8* %20, i32 %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %14, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %24 = icmp eq %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %132

26:                                               ; preds = %5
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %28 = load i32, i32* @ZFS_PROP_NAME, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @MS_FORCE, align 4
  br label %36

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = call i32* @changelist_gather(%struct.TYPE_10__* %27, i32 %28, i32 0, i32 %37)
  store i32* %38, i32** %13, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %40 = call i64 @zfs_get_type(%struct.TYPE_10__* %39)
  %41 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %45 = call i64 @zfs_spa_version(%struct.TYPE_10__* %44, i32* %16)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @SPA_VERSION_USERREFS, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @B_TRUE, align 8
  store i64 %52, i64* %15, align 8
  br label %53

53:                                               ; preds = %51, %47, %43, %36
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %55 = call i32 @zfs_close(%struct.TYPE_10__* %54)
  %56 = load i32*, i32** %13, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 -1, i32* %6, align 4
  br label %132

59:                                               ; preds = %53
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @changelist_prefix(i32* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %6, align 4
  br label %132

66:                                               ; preds = %59
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = call i32* (...) @fnvlist_alloc()
  store i32* %81, i32** %17, align 8
  %82 = load i32*, i32** %17, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @fnvlist_add_boolean(i32* %82, i8* %83)
  %85 = load i32*, i32** %17, align 8
  %86 = load i64, i64* %15, align 8
  %87 = call i32 @lzc_destroy_snaps(i32* %85, i64 %86, i32* null)
  store i32 %87, i32* %12, align 4
  %88 = load i32*, i32** %17, align 8
  %89 = call i32 @fnvlist_free(i32* %88)
  br label %93

90:                                               ; preds = %74
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @lzc_destroy(i8* %91)
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %90, %80
  %94 = load i32, i32* %12, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %93
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %96
  %104 = load i32*, i32** %13, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @changelist_remove(i32* %104, i8* %105)
  br label %107

107:                                              ; preds = %103, %93
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @changelist_postfix(i32* %108)
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @changelist_free(i32* %110)
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %107
  %115 = load i64, i64* %15, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = load i32*, i32** %7, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %121 = call i64 @zfs_dataset_exists(i32* %118, i8* %119, i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %117, %107
  %124 = load i32*, i32** %7, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i8*, i8** %10, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %129 = call i32 @recv_rename(i32* %124, i8* %125, i32* null, i32 %126, i8* %127, %struct.TYPE_11__* %128)
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %123, %117, %114
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %64, %58, %25
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_10__* @zfs_open(i32*, i8*, i32) #1

declare dso_local i32* @changelist_gather(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i64 @zfs_get_type(%struct.TYPE_10__*) #1

declare dso_local i64 @zfs_spa_version(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @zfs_close(%struct.TYPE_10__*) #1

declare dso_local i32 @changelist_prefix(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i32 @lzc_destroy_snaps(i32*, i64, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @lzc_destroy(i8*) #1

declare dso_local i32 @changelist_remove(i32*, i8*) #1

declare dso_local i32 @changelist_postfix(i32*) #1

declare dso_local i32 @changelist_free(i32*) #1

declare dso_local i64 @zfs_dataset_exists(i32*, i8*, i64) #1

declare dso_local i32 @recv_rename(i32*, i8*, i32*, i32, i8*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
