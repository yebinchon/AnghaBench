; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_upgrade_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_upgrade_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i8* }

@B_FALSE = common dso_local global i8* null, align 8
@POOL_STATE_UNAVAIL = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"cannot upgrade '%s': pool is is currently unavailable.\0A\0A\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.2 = private unnamed_addr constant [94 x i8] c"'log' is now a reserved word\0APool 'log' must be renamed using export and import to upgrade.\0A\0A\00", align 1
@ZPOOL_PROP_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"Pool '%s' is already formatted using more current version '%llu'.\0A\0A\00", align 1
@SPA_VERSION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"Pool '%s' is already formatted using version %llu.\0A\0A\00", align 1
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [56 x i8] c"Pool '%s' already has all supported features enabled.\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @upgrade_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgrade_one(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** @B_FALSE, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @zpool_get_state(i32* %14)
  %16 = load i64, i64* @POOL_STATE_UNAVAIL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %4, align 8
  %22 = call i8* @zpool_get_name(i32* %21)
  %23 = call i32 @fprintf(i32 %19, i8* %20, i8* %22)
  %24 = load i8*, i8** @B_TRUE, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  store i32 1, i32* %3, align 4
  br label %124

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = call i8* @zpool_get_name(i32* %28)
  %30 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call i8* @gettext(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* %33)
  store i32 1, i32* %3, align 4
  br label %124

35:                                               ; preds = %27
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %38 = call i64 @zpool_get_prop_int(i32* %36, i32 %37, i32* null)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = call i8* @gettext(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32*, i32** %4, align 8
  %47 = call i8* @zpool_get_name(i32* %46)
  %48 = load i64, i64* %8, align 8
  %49 = call i32 (i8*, ...) @printf(i8* %45, i8* %47, i64 %48)
  store i32 0, i32* %3, align 4
  br label %124

50:                                               ; preds = %35
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SPA_VERSION, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32*, i32** %4, align 8
  %65 = call i8* @zpool_get_name(i32* %64)
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i8*, ...) @printf(i8* %63, i8* %65, i64 %68)
  store i32 0, i32* %3, align 4
  br label %124

70:                                               ; preds = %56, %50
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load i8*, i8** @B_TRUE, align 8
  store i8* %77, i8** %6, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @upgrade_version(i32* %78, i64 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %124

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %70
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %88
  store i32 0, i32* %10, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @upgrade_enable_all(i32* %95, i32* %10)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %124

101:                                              ; preds = %94
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i8*, i8** @B_TRUE, align 8
  store i8* %105, i8** %6, align 8
  br label %116

106:                                              ; preds = %101
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* @SPA_VERSION, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32*, i32** %4, align 8
  %113 = call i8* @zpool_get_name(i32* %112)
  %114 = call i32 (i8*, ...) @printf(i8* %111, i8* %113)
  br label %115

115:                                              ; preds = %110, %106
  br label %116

116:                                              ; preds = %115, %104
  br label %117

117:                                              ; preds = %116, %88
  %118 = load i8*, i8** %6, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %122 = call i32 (i8*, ...) @printf(i8* %121)
  br label %123

123:                                              ; preds = %120, %117
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %99, %85, %62, %44, %32, %18
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @zpool_get_state(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @zpool_get_name(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @zpool_get_prop_int(i32*, i32, i32*) #1

declare dso_local i32 @upgrade_version(i32*, i64) #1

declare dso_local i32 @upgrade_enable_all(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
