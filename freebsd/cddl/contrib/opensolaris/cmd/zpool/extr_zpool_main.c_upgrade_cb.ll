; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_upgrade_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_upgrade_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i8*, i8* }

@B_FALSE = common dso_local global i8* null, align 8
@POOL_STATE_UNAVAIL = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"cannot upgrade '%s': pool is currently unavailable.\0A\0A\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@g_zfs = common dso_local global i32 0, align 4
@history_str = common dso_local global i32 0, align 4
@log_history = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @upgrade_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upgrade_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %6, align 8
  %14 = load i8*, i8** @B_FALSE, align 8
  store i8* %14, i8** %9, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @zpool_get_state(i32* %15)
  %17 = load i64, i64* @POOL_STATE_UNAVAIL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i32, i32* @stderr, align 4
  %21 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %4, align 8
  %23 = call i8* @zpool_get_name(i32* %22)
  %24 = call i32 @fprintf(i32 %20, i8* %21, i8* %23)
  %25 = load i8*, i8** @B_TRUE, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  store i32 0, i32* %3, align 4
  br label %93

28:                                               ; preds = %2
  %29 = load i32*, i32** %4, align 8
  %30 = call i32* @zpool_get_config(i32* %29, i32* null)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %33 = call i64 @nvlist_lookup_uint64(i32* %31, i32 %32, i64* %8)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @verify(i32 %35)
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @SPA_VERSION_IS_SUPPORTED(i64 %37)
  %39 = call i32 @assert(i32 %38)
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %28
  %46 = load i8*, i8** @B_FALSE, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @upgrade_version(i32* %49, i64 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %3, align 4
  br label %93

58:                                               ; preds = %45
  %59 = load i8*, i8** @B_TRUE, align 8
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %58, %28
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @upgrade_enable_all(i32* %67, i32* %11)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %93

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i8*, i8** @B_FALSE, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** @B_TRUE, align 8
  store i8* %80, i8** %9, align 8
  %81 = load i32, i32* @g_zfs, align 4
  %82 = load i32, i32* @history_str, align 4
  %83 = call i32 @zpool_log_history(i32 %81, i32 %82)
  %84 = load i8*, i8** @B_FALSE, align 8
  store i8* %84, i8** @log_history, align 8
  br label %85

85:                                               ; preds = %76, %73
  br label %86

86:                                               ; preds = %85, %60
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %91 = call i32 @printf(i8* %90)
  br label %92

92:                                               ; preds = %89, %86
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %71, %56, %19
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @zpool_get_state(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @zpool_get_name(i32*) #1

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SPA_VERSION_IS_SUPPORTED(i64) #1

declare dso_local i32 @upgrade_version(i32*, i64) #1

declare dso_local i32 @upgrade_enable_all(i32*, i32*) #1

declare dso_local i32 @zpool_log_history(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
