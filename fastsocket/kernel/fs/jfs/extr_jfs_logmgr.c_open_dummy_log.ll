; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_open_dummy_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_open_dummy_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64, i32 }
%struct.super_block = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }

@jfs_log_mutex = common dso_local global i32 0, align 4
@dummy_log = common dso_local global %struct.TYPE_8__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @open_dummy_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_dummy_log(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = call i32 @mutex_lock(i32* @jfs_log_mutex)
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dummy_log, align 8
  %7 = icmp ne %struct.TYPE_8__* %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.TYPE_8__* @kzalloc(i32 4, i32 %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** @dummy_log, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dummy_log, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = call i32 @mutex_unlock(i32* @jfs_log_mutex)
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %56

17:                                               ; preds = %8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dummy_log, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dummy_log, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 4
  %23 = call i32 @init_waitqueue_head(i32* %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dummy_log, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dummy_log, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dummy_log, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i32 1024, i32* %29, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dummy_log, align 8
  %31 = call i32 @lmLogInit(%struct.TYPE_8__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %17
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dummy_log, align 8
  %36 = call i32 @kfree(%struct.TYPE_8__* %35)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @dummy_log, align 8
  %37 = call i32 @mutex_unlock(i32* @jfs_log_mutex)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %56

39:                                               ; preds = %17
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dummy_log, align 8
  %42 = call i32 @LOG_LOCK(%struct.TYPE_8__* %41)
  %43 = load %struct.super_block*, %struct.super_block** %3, align 8
  %44 = call %struct.TYPE_9__* @JFS_SBI(%struct.super_block* %43)
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dummy_log, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = call i32 @list_add(i32* %45, i32* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dummy_log, align 8
  %50 = load %struct.super_block*, %struct.super_block** %3, align 8
  %51 = call %struct.TYPE_9__* @JFS_SBI(%struct.super_block* %50)
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dummy_log, align 8
  %54 = call i32 @LOG_UNLOCK(%struct.TYPE_8__* %53)
  %55 = call i32 @mutex_unlock(i32* @jfs_log_mutex)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %40, %34, %13
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @lmLogInit(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

declare dso_local i32 @LOG_LOCK(%struct.TYPE_8__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @LOG_UNLOCK(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
