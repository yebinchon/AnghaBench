; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_inode.c_qnx4_getblk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_inode.c_qnx4_getblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32, i32 }

@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@tmp = common dso_local global i32 0, align 4
@tst = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, i32, i32)* @qnx4_getblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @qnx4_getblk(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @qnx4_block_map(%struct.inode* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %11, %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.buffer_head* @sb_getblk(i32 %21, i32 %22)
  store %struct.buffer_head* %23, %struct.buffer_head** %8, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %24, %struct.buffer_head** %4, align 8
  br label %36

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %36

29:                                               ; preds = %25
  %30 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call i32 @mark_inode_dirty(%struct.inode* %33)
  %35 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %35, %struct.buffer_head** %4, align 8
  br label %36

36:                                               ; preds = %29, %28, %18
  %37 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %37
}

declare dso_local i32 @qnx4_block_map(%struct.inode*, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
