; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amd.c_init_global_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amd.c_init_global_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32*, i32*, i8*, i32, i32, i32*, i64, i32*, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i8*, i32, i32*, i64, i8* }

@gopt = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@HOST_ARCH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"/.amd_mnt\00", align 1
@AMFS_EXEC_MAP_TIMEOUT = common dso_local global i32 0, align 4
@HOST_OS_NAME = common dso_local global i32 0, align 4
@HOST_OS_VERSION = common dso_local global i32 0, align 4
@HOST_OS = common dso_local global i32 0, align 4
@HOST_VENDOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"/dev/stdout\00", align 1
@AMU_TYPE_MAX = common dso_local global i32 0, align 4
@AM_TTL = common dso_local global i32 0, align 4
@AM_TTL_W = common dso_local global i32 0, align 4
@ONE_HOUR = common dso_local global i32 0, align 4
@CFM_DEFAULT_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_global_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_global_options() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @memset(%struct.TYPE_3__* @gopt, i32 0, i32 4)
  %3 = load i8*, i8** @HOST_ARCH, align 8
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 25), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 24), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 23), align 8
  %4 = load i32, i32* @AMFS_EXEC_MAP_TIMEOUT, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 22), align 8
  %5 = load i8*, i8** @HOST_ARCH, align 8
  store i8* %5, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 21), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 20), align 8
  %6 = load i32, i32* @HOST_OS_NAME, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 19), align 4
  %7 = load i32, i32* @HOST_OS_VERSION, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 18), align 8
  %8 = load i32, i32* @HOST_OS, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 17), align 4
  %9 = load i32, i32* @HOST_VENDOR, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 16), align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 15), align 8
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %23, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @AMU_TYPE_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 2), align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 -1, i32* %18, align 4
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 3), align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 -1, i32* %22, align 4
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %10

26:                                               ; preds = %10
  %27 = load i32, i32* @AM_TTL, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 14), align 4
  %28 = load i32, i32* @AM_TTL_W, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 13), align 8
  %29 = load i32, i32* @ONE_HOUR, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 12), align 4
  %30 = load i32, i32* @CFM_DEFAULT_FLAGS, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gopt, i32 0, i32 11), align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
