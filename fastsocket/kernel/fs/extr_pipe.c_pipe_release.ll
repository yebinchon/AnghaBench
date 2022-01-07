; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_pipe_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_pipe_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { i32, i32, i32, i64, i64 }

@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @pipe_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_release(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pipe_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  store %struct.pipe_inode_info* %13, %struct.pipe_inode_info** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %17 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %23 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %27 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %3
  %31 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %32 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i32 @free_pipe_info(%struct.inode* %36)
  br label %52

38:                                               ; preds = %30, %3
  %39 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %40 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %39, i32 0, i32 2
  %41 = call i32 @wake_up_interruptible_sync(i32* %40)
  %42 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %43 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %42, i32 0, i32 1
  %44 = load i32, i32* @SIGIO, align 4
  %45 = load i32, i32* @POLL_IN, align 4
  %46 = call i32 @kill_fasync(i32* %43, i32 %44, i32 %45)
  %47 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %7, align 8
  %48 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %47, i32 0, i32 0
  %49 = load i32, i32* @SIGIO, align 4
  %50 = load i32, i32* @POLL_OUT, align 4
  %51 = call i32 @kill_fasync(i32* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %38, %35
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_pipe_info(%struct.inode*) #1

declare dso_local i32 @wake_up_interruptible_sync(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
