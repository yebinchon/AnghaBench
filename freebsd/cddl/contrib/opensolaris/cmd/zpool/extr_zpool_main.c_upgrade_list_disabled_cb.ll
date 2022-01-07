; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_upgrade_list_disabled_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_upgrade_list_disabled_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@POOL_STATE_UNAVAIL = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@SPA_FEATURES = common dso_local global i32 0, align 4
@spa_feature_table = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [210 x i8] c"\0ASome supported features are not enabled on the following pools. Once a\0Afeature is enabled the pool may become incompatible with software\0Athat does not support the feature. See zpool-features(7) for details.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"POOL  FEATURE\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"---------------\0A\00", align 1
@B_FALSE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"      %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @upgrade_list_disabled_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgrade_list_disabled_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @zpool_get_state(i32* %16)
  %18 = load i64, i64* @POOL_STATE_UNAVAIL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i8*, i8** @B_TRUE, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  store i32 0, i32* %3, align 4
  br label %95

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @zpool_get_config(i32* %25, i32* null)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %29 = call i64 @nvlist_lookup_uint64(i32* %27, i32 %28, i64* %8)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @verify(i32 %31)
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %94

36:                                               ; preds = %24
  %37 = load i8*, i8** @B_TRUE, align 8
  store i8* %37, i8** %10, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32* @zpool_get_features(i32* %38)
  store i32* %39, i32** %11, align 8
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %90, %36
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SPA_FEATURES, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %93

44:                                               ; preds = %40
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @spa_feature_table, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %12, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @spa_feature_table, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %13, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @nvlist_exists(i32* %57, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %89, label %61

61:                                               ; preds = %44
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = call i8* @gettext(i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @printf(i8* %67)
  %69 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 (i8*, ...) @printf(i8* %69)
  %71 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %72 = call i32 (i8*, ...) @printf(i8* %71)
  %73 = load i8*, i8** @B_FALSE, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %66, %61
  %77 = load i8*, i8** %10, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32*, i32** %4, align 8
  %82 = call i8* @zpool_get_name(i32* %81)
  %83 = call i32 (i8*, ...) @printf(i8* %80, i8* %82)
  %84 = load i8*, i8** @B_FALSE, align 8
  store i8* %84, i8** %10, align 8
  br label %85

85:                                               ; preds = %79, %76
  %86 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 (i8*, ...) @printf(i8* %86, i8* %87)
  br label %89

89:                                               ; preds = %85, %44
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %40

93:                                               ; preds = %40
  br label %94

94:                                               ; preds = %93, %24
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %20
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @zpool_get_state(i32*) #1

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32* @zpool_get_features(i32*) #1

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @zpool_get_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
