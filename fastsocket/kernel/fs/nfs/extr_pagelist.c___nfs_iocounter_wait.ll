; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c___nfs_iocounter_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c___nfs_iocounter_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.nfs_io_counter = type { i32, i32 }

@NFS_IO_INPROGRESS = common dso_local global i32 0, align 4
@q = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_io_counter*)* @__nfs_iocounter_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfs_iocounter_wait(%struct.nfs_io_counter* %0) #0 {
  %2 = alloca %struct.nfs_io_counter*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.nfs_io_counter* %0, %struct.nfs_io_counter** %2, align 8
  %5 = load %struct.nfs_io_counter*, %struct.nfs_io_counter** %2, align 8
  %6 = getelementptr inbounds %struct.nfs_io_counter, %struct.nfs_io_counter* %5, i32 0, i32 0
  %7 = load i32, i32* @NFS_IO_INPROGRESS, align 4
  %8 = call i32* @bit_waitqueue(i32* %6, i32 %7)
  store i32* %8, i32** %3, align 8
  %9 = load %struct.nfs_io_counter*, %struct.nfs_io_counter** %2, align 8
  %10 = getelementptr inbounds %struct.nfs_io_counter, %struct.nfs_io_counter* %9, i32 0, i32 0
  %11 = load i32, i32* @NFS_IO_INPROGRESS, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @q, i32 0, i32 0), align 4
  %13 = call i32 @DEFINE_WAIT_BIT(i32 %12, i32* %10, i32 %11)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @TASK_KILLABLE, align 4
  %17 = call i32 @prepare_to_wait(i32* %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @q, i32 0, i32 0), i32 %16)
  %18 = load i32, i32* @NFS_IO_INPROGRESS, align 4
  %19 = load %struct.nfs_io_counter*, %struct.nfs_io_counter** %2, align 8
  %20 = getelementptr inbounds %struct.nfs_io_counter, %struct.nfs_io_counter* %19, i32 0, i32 0
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  %22 = load %struct.nfs_io_counter*, %struct.nfs_io_counter** %2, align 8
  %23 = getelementptr inbounds %struct.nfs_io_counter, %struct.nfs_io_counter* %22, i32 0, i32 1
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %36

27:                                               ; preds = %14
  %28 = load %struct.nfs_io_counter*, %struct.nfs_io_counter** %2, align 8
  %29 = getelementptr inbounds %struct.nfs_io_counter, %struct.nfs_io_counter* %28, i32 0, i32 0
  %30 = call i32 @nfs_wait_bit_killable(i32* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27
  %32 = load %struct.nfs_io_counter*, %struct.nfs_io_counter** %2, align 8
  %33 = getelementptr inbounds %struct.nfs_io_counter, %struct.nfs_io_counter* %32, i32 0, i32 1
  %34 = call i64 @atomic_read(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %14, label %36

36:                                               ; preds = %31, %26
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @finish_wait(i32* %37, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @q, i32 0, i32 0))
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32* @bit_waitqueue(i32*, i32) #1

declare dso_local i32 @DEFINE_WAIT_BIT(i32, i32*, i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @nfs_wait_bit_killable(i32*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
