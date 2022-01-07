; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_open_inline_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_open_inline_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, i32 }
%struct.jfs_log = type { i64, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.jfs_log*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@log_INLINELOG = common dso_local global i32 0, align 4
@L2LOGPSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"lmLogOpen: exit(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @open_inline_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_inline_log(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.jfs_log*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.jfs_log* @kzalloc(i32 40, i32 %6)
  store %struct.jfs_log* %7, %struct.jfs_log** %4, align 8
  %8 = icmp ne %struct.jfs_log* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %79

12:                                               ; preds = %1
  %13 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %14 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %13, i32 0, i32 1
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %17 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %16, i32 0, i32 6
  %18 = call i32 @init_waitqueue_head(i32* %17)
  %19 = load i32, i32* @log_INLINELOG, align 4
  %20 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %21 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %20, i32 0, i32 5
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load %struct.super_block*, %struct.super_block** %3, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %27 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.super_block*, %struct.super_block** %3, align 8
  %29 = call %struct.TYPE_2__* @JFS_SBI(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = call i32 @addressPXD(i32* %30)
  %32 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %33 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.super_block*, %struct.super_block** %3, align 8
  %35 = call %struct.TYPE_2__* @JFS_SBI(%struct.super_block* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = call i64 @lengthPXD(i32* %36)
  %38 = load i64, i64* @L2LOGPSIZE, align 8
  %39 = load %struct.super_block*, %struct.super_block** %3, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = ashr i64 %37, %42
  %44 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %45 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.super_block*, %struct.super_block** %3, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %50 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* @L2LOGPSIZE, align 8
  %52 = load %struct.super_block*, %struct.super_block** %3, align 8
  %53 = getelementptr inbounds %struct.super_block, %struct.super_block* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %51, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @ASSERT(i32 %56)
  %58 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %59 = call i32 @lmLogInit(%struct.jfs_log* %58)
  store i32 %59, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %12
  %62 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %63 = call i32 @kfree(%struct.jfs_log* %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @jfs_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %79

67:                                               ; preds = %12
  %68 = load %struct.super_block*, %struct.super_block** %3, align 8
  %69 = call %struct.TYPE_2__* @JFS_SBI(%struct.super_block* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %72 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %71, i32 0, i32 1
  %73 = call i32 @list_add(i32* %70, i32* %72)
  %74 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %75 = load %struct.super_block*, %struct.super_block** %3, align 8
  %76 = call %struct.TYPE_2__* @JFS_SBI(%struct.super_block* %75)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store %struct.jfs_log* %74, %struct.jfs_log** %77, align 8
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %67, %61, %9
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.jfs_log* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @addressPXD(i32*) #1

declare dso_local %struct.TYPE_2__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i64 @lengthPXD(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @lmLogInit(%struct.jfs_log*) #1

declare dso_local i32 @kfree(%struct.jfs_log*) #1

declare dso_local i32 @jfs_warn(i8*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
