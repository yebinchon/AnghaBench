; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32*, i32 }

@ztest_spa = common dso_local global %struct.TYPE_11__* null, align 8
@ztest_vdev_lock = common dso_local global i32 0, align 4
@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"vd %p, guid %llu\00", align 1
@POOL_INITIALIZE_FUNCS = common dso_local global i32 0, align 4
@ztest_opts = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Cancel initialize %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c" failed (no initialize active)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Start initialize %s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" failed (already active)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c" failed (error %d)\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Suspend initialize %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_initialize(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ztest_spa, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = call i32 @mutex_enter(i32* @ztest_vdev_lock)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = load i32, i32* @SCL_VDEV, align 4
  %16 = load i32, i32* @FTAG, align 4
  %17 = load i32, i32* @RW_READER, align 4
  %18 = call i32 @spa_config_enter(%struct.TYPE_11__* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_10__* @ztest_random_concrete_vdev_leaf(i32 %21)
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %7, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = icmp eq %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = load i32, i32* @SCL_VDEV, align 4
  %28 = load i32, i32* @FTAG, align 4
  %29 = call i32 @spa_config_exit(%struct.TYPE_11__* %26, i32 %27, i32 %28)
  %30 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %111

31:                                               ; preds = %2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @strdup(i32 %37)
  store i8* %38, i8** %9, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %44, i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = load i32, i32* @SCL_VDEV, align 4
  %49 = load i32, i32* @FTAG, align 4
  %50 = call i32 @spa_config_exit(%struct.TYPE_11__* %47, i32 %48, i32 %49)
  %51 = load i32, i32* @POOL_INITIALIZE_FUNCS, align 4
  %52 = call i32 @ztest_random(i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @spa_vdev_initialize(%struct.TYPE_11__* %53, i32 %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %11, align 4
  switch i32 %57, label %107 [
    i32 130, label %58
    i32 129, label %71
    i32 128, label %94
  ]

58:                                               ; preds = %31
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 0), align 4
  %60 = icmp sge i32 %59, 4
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %61
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %58
  br label %107

71:                                               ; preds = %31
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 0), align 4
  %73 = icmp sge i32 %72, 4
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %91

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %82
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %71
  br label %107

94:                                               ; preds = %31
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ztest_opts, i32 0, i32 0), align 4
  %96 = icmp sge i32 %95, 4
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %98)
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %97
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %94
  br label %107

107:                                              ; preds = %31, %106, %93, %70
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @free(i8* %108)
  %110 = call i32 @mutex_exit(i32* @ztest_vdev_lock)
  br label %111

111:                                              ; preds = %107, %25
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @ztest_random_concrete_vdev_leaf(i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @zfs_dbgmsg(i8*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ztest_random(i32) #1

declare dso_local i32 @spa_vdev_initialize(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
