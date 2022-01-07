; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_pipe_rdwr_fasync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_pipe_rdwr_fasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, i32)* @pipe_rdwr_fasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_rdwr_fasync(i32 %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.pipe_inode_info*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %17, align 8
  store %struct.pipe_inode_info* %18, %struct.pipe_inode_info** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %26 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %25, i32 0, i32 0
  %27 = call i32 @fasync_helper(i32 %22, %struct.file* %23, i32 %24, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %3
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %35 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %34, i32 0, i32 1
  %36 = call i32 @fasync_helper(i32 %31, %struct.file* %32, i32 %33, i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %8, align 8
  %42 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %41, i32 0, i32 0
  %43 = call i32 @fasync_helper(i32 -1, %struct.file* %40, i32 0, i32* %42)
  br label %44

44:                                               ; preds = %39, %30
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fasync_helper(i32, %struct.file*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
