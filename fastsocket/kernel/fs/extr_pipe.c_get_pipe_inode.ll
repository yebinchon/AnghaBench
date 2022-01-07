; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_get_pipe_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_get_pipe_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, i32*, %struct.pipe_inode_info* }
%struct.pipe_inode_info = type { i32, i32 }

@pipe_mnt = common dso_local global %struct.TYPE_2__* null, align 8
@rdwr_pipefifo_fops = common dso_local global i32 0, align 4
@I_DIRTY = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* ()* @get_pipe_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @get_pipe_inode() #0 {
  %1 = alloca %struct.inode*, align 8
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.pipe_inode_info*, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pipe_mnt, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.inode* @new_inode(i32 %6)
  store %struct.inode* %7, %struct.inode** %2, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = icmp ne %struct.inode* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %54

11:                                               ; preds = %0
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call %struct.pipe_inode_info* @alloc_pipe_info(%struct.inode* %12)
  store %struct.pipe_inode_info* %13, %struct.pipe_inode_info** %3, align 8
  %14 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %15 = icmp ne %struct.pipe_inode_info* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %51

17:                                               ; preds = %11
  %18 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 8
  store %struct.pipe_inode_info* %18, %struct.pipe_inode_info** %20, align 8
  %21 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %22 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %3, align 8
  %24 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 7
  store i32* @rdwr_pipefifo_fops, i32** %26, align 8
  %27 = load i32, i32* @I_DIRTY, align 4
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @S_IFIFO, align 4
  %31 = load i32, i32* @S_IRUSR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @S_IWUSR, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.inode*, %struct.inode** %2, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = call i32 (...) @current_fsuid()
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = call i32 (...) @current_fsgid()
  %41 = load %struct.inode*, %struct.inode** %2, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @CURRENT_TIME, align 4
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.inode*, %struct.inode** %2, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  store i32 %43, i32* %47, align 8
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 3
  store i32 %43, i32* %49, align 4
  %50 = load %struct.inode*, %struct.inode** %2, align 8
  store %struct.inode* %50, %struct.inode** %1, align 8
  br label %55

51:                                               ; preds = %16
  %52 = load %struct.inode*, %struct.inode** %2, align 8
  %53 = call i32 @iput(%struct.inode* %52)
  br label %54

54:                                               ; preds = %51, %10
  store %struct.inode* null, %struct.inode** %1, align 8
  br label %55

55:                                               ; preds = %54, %17
  %56 = load %struct.inode*, %struct.inode** %1, align 8
  ret %struct.inode* %56
}

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local %struct.pipe_inode_info* @alloc_pipe_info(%struct.inode*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
