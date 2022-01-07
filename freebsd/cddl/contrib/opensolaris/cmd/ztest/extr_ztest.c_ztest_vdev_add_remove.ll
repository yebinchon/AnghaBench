; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_vdev_add_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_vdev_add_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ztest_shared = common dso_local global %struct.TYPE_9__* null, align 8
@ztest_spa = common dso_local global i32* null, align 8
@ztest_vdev_lock = common dso_local global i32 0, align 4
@ztest_opts = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ztest_name_lock = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"spa_vdev_remove() = %d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"spa_vdev_add\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"spa_vdev_add() = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_vdev_add_remove(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ztest_shared, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %5, align 8
  %12 = load i32*, i32** @ztest_spa, align 8
  store i32* %12, i32** %6, align 8
  %13 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = call i32 @MAX(i64 %20, i32 1)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ztest_opts, i32 0, i32 0), align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @SCL_VDEV, align 4
  %26 = load i32, i32* @FTAG, align 4
  %27 = load i32, i32* @RW_READER, align 4
  %28 = call i32 @spa_config_enter(i32* %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @find_vdev_hole(i32* %29)
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ztest_shared, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @spa_has_slogs(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %2
  %39 = call i64 @ztest_random(i32 4)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  %42 = load i32*, i32** %6, align 8
  %43 = call %struct.TYPE_11__* @spa_log_class(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @SCL_VDEV, align 4
  %52 = load i32, i32* @FTAG, align 4
  %53 = call i32 @spa_config_exit(i32* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @RW_WRITER, align 4
  %55 = call i32 @rw_enter(i32* @ztest_name_lock, i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @B_FALSE, align 4
  %59 = call i32 @spa_vdev_remove(i32* %56, i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = call i32 @rw_exit(i32* @ztest_name_lock)
  %61 = load i32, i32* %10, align 4
  switch i32 %61, label %63 [
    i32 0, label %62
    i32 131, label %62
    i32 129, label %62
    i32 128, label %62
  ]

62:                                               ; preds = %41, %41, %41, %41
  br label %66

63:                                               ; preds = %41
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %62
  br label %94

67:                                               ; preds = %38, %2
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @SCL_VDEV, align 4
  %70 = load i32, i32* @FTAG, align 4
  %71 = call i32 @spa_config_exit(i32* %68, i32 %69, i32 %70)
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ztest_opts, i32 0, i32 1), align 4
  %73 = call i64 @ztest_random(i32 4)
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ztest_opts, i32 0, i32 0), align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32* @make_vdev_root(i32* null, i32* null, i32* null, i32 %72, i32 0, i32 %75, i32 %76, i64 %79, i32 1)
  store i32* %80, i32** %9, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @spa_vdev_add(i32* %81, i32* %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @nvlist_free(i32* %84)
  %86 = load i32, i32* %10, align 4
  switch i32 %86, label %90 [
    i32 0, label %87
    i32 130, label %88
  ]

87:                                               ; preds = %67
  br label %93

88:                                               ; preds = %67
  %89 = call i32 @ztest_record_enospc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %93

90:                                               ; preds = %67
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %90, %88, %87
  br label %94

94:                                               ; preds = %93, %66
  %95 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @MAX(i64, i32) #1

declare dso_local i32 @spa_config_enter(i32*, i32, i32, i32) #1

declare dso_local i32 @find_vdev_hole(i32*) #1

declare dso_local i64 @spa_has_slogs(i32*) #1

declare dso_local i64 @ztest_random(i32) #1

declare dso_local %struct.TYPE_11__* @spa_log_class(i32*) #1

declare dso_local i32 @spa_config_exit(i32*, i32, i32) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @spa_vdev_remove(i32*, i32, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @fatal(i32, i8*, i32) #1

declare dso_local i32* @make_vdev_root(i32*, i32*, i32*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @spa_vdev_add(i32*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @ztest_record_enospc(i8*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
