; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_pipe_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_pipe_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.inode = type { %struct.pipe_inode_info*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pipe_inode_info* (%struct.inode*)* @pipe_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pipe_inode_info* @pipe_info(%struct.inode* %0) #0 {
  %2 = alloca %struct.pipe_inode_info*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %4 = load %struct.inode*, %struct.inode** %3, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @S_ISFIFO(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %11, align 8
  store %struct.pipe_inode_info* %12, %struct.pipe_inode_info** %2, align 8
  br label %14

13:                                               ; preds = %1
  store %struct.pipe_inode_info* null, %struct.pipe_inode_info** %2, align 8
  br label %14

14:                                               ; preds = %13, %9
  %15 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %2, align 8
  ret %struct.pipe_inode_info* %15
}

declare dso_local i64 @S_ISFIFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
