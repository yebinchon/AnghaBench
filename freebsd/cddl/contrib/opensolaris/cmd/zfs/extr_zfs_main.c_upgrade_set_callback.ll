; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_upgrade_set_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_upgrade_set_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64*, i32 }

@ZFS_PROP_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"%s: can not be upgraded; the pool version needs to first be upgraded\0Ato version %d\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@history_str = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@log_history = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"%s: can not be downgraded; it is already at version %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @upgrade_set_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgrade_set_callback(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @ZFS_PROP_VERSION, align 4
  %15 = call i32 @zfs_prop_get_int(i32* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @zfs_spa_version(i32* %16, i32* %9)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %117

20:                                               ; preds = %2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @zfs_spa_version_map(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %117

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = call i8* @gettext(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  %34 = load i32*, i32** %4, align 8
  %35 = call i8* @zfs_get_name(i32* %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @printf(i8* %33, i8* %35, i32 %36)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  store i32 0, i32* %3, align 4
  br label %117

42:                                               ; preds = %28
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %94

48:                                               ; preds = %42
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @snprintf(i8* %49, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %48
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  %65 = call i32 @same_pool(i32* %61, i64* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @g_zfs, align 4
  %69 = load i32, i32* @history_str, align 4
  %70 = call i32 @zpool_log_history(i32 %68, i32 %69)
  %71 = load i32, i32* @B_FALSE, align 4
  store i32 %71, i32* @log_history, align 4
  br label %72

72:                                               ; preds = %67, %60, %48
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %75 = call i64 @zfs_prop_set(i32* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %87

82:                                               ; preds = %72
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i64*, i64** %89, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = call i8* @zfs_get_name(i32* %91)
  %93 = call i32 @strcpy(i64* %90, i8* %92)
  br label %116

94:                                               ; preds = %42
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %95, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %94
  %101 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32*, i32** %4, align 8
  %103 = call i8* @zfs_get_name(i32* %102)
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @printf(i8* %101, i8* %103, i32 %104)
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %115

110:                                              ; preds = %94
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %110, %100
  br label %116

116:                                              ; preds = %115, %87
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %32, %27, %19
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @zfs_prop_get_int(i32*, i32) #1

declare dso_local i64 @zfs_spa_version(i32*, i32*) #1

declare dso_local i32 @zfs_spa_version_map(i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @zfs_get_name(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @same_pool(i32*, i64*) #1

declare dso_local i32 @zpool_log_history(i32, i32) #1

declare dso_local i64 @zfs_prop_set(i32*, i8*, i8*) #1

declare dso_local i32 @strcpy(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
