; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_wait_for_dump_helpers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_wait_for_dump_helpers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { i32, i32, i32, i32 }

@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*)* @wait_for_dump_helpers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_dump_helpers(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.pipe_inode_info*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = getelementptr inbounds %struct.file, %struct.file* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %10, align 8
  store %struct.pipe_inode_info* %11, %struct.pipe_inode_info** %3, align 8
  %12 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %13 = call i32 @pipe_lock(%struct.pipe_inode_info* %12)
  %14 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %15 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %19 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %23 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %22, i32 0, i32 2
  %24 = call i32 @wake_up_interruptible_sync(i32* %23)
  %25 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %26 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %25, i32 0, i32 3
  %27 = load i32, i32* @SIGIO, align 4
  %28 = load i32, i32* @POLL_IN, align 4
  %29 = call i32 @kill_fasync(i32* %26, i32 %27, i32 %28)
  %30 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %31 = call i32 @pipe_unlock(%struct.pipe_inode_info* %30)
  %32 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %33 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %36 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  %39 = zext i1 %38 to i32
  %40 = call i32 @wait_event_interruptible(i32 %34, i32 %39)
  %41 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %42 = call i32 @pipe_lock(%struct.pipe_inode_info* %41)
  %43 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %44 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %48 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %52 = call i32 @pipe_unlock(%struct.pipe_inode_info* %51)
  ret void
}

declare dso_local i32 @pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i32 @wake_up_interruptible_sync(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
