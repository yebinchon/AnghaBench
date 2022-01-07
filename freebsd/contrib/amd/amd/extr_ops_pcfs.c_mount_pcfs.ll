; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_pcfs.c_mount_pcfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_pcfs.c_mount_pcfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32, i64, i64, i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i32 }

@MOUNT_TYPE_PCFS = common dso_local global i32 0, align 4
@MNTTAB_TYPE_PCFS = common dso_local global i32 0, align 4
@D_TRACE = common dso_local global i32 0, align 4
@XLOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"mount_pcfs: flags=0x%x\00", align 1
@mnttab_file_name = common dso_local global i32 0, align 4
@MNTTAB_OPT_DIRMASK = common dso_local global i32 0, align 4
@MNTTAB_OPT_GROUP = common dso_local global i32 0, align 4
@MNTTAB_OPT_MASK = common dso_local global i32 0, align 4
@MNTTAB_OPT_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32)* @mount_pcfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mount_pcfs(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @MOUNT_TYPE_PCFS, align 4
  store i32 %13, i32* %12, align 4
  %14 = ptrtoint %struct.TYPE_8__* %9 to i32
  %15 = call i32 @memset(i32 %14, i32 0, i32 48)
  %16 = ptrtoint %struct.TYPE_9__* %10 to i32
  %17 = call i32 @memset(i32 %16, i32 0, i32 32)
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* @MNTTAB_TYPE_PCFS, align 4
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  store i32 %22, i32* %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = call i32 @compute_mount_flags(%struct.TYPE_9__* %10)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @D_TRACE, align 4
  %28 = call i64 @amuDebug(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i32, i32* @XLOG_DEBUG, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @plog(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %4
  %35 = load i32, i32* %11, align 4
  %36 = ptrtoint %struct.TYPE_8__* %9 to i32
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @mnttab_file_name, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @mount_fs(%struct.TYPE_9__* %10, i32 %35, i32 %36, i32 0, i32 %37, i32 0, i32* null, i32 %38, i32 %39)
  ret i32 %40
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @compute_mount_flags(%struct.TYPE_9__*) #1

declare dso_local i64 @amuDebug(i32) #1

declare dso_local i32 @plog(i32, i8*, i32) #1

declare dso_local i32 @mount_fs(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
