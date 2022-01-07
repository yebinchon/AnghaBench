; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_find_goal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_find_goal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext3_block_alloc_info = type { i32, i64 }
%struct.TYPE_2__ = type { %struct.ext3_block_alloc_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i64, i32*)* @ext3_find_goal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext3_find_goal(%struct.inode* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ext3_block_alloc_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call %struct.TYPE_2__* @EXT3_I(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ext3_block_alloc_info*, %struct.ext3_block_alloc_info** %11, align 8
  store %struct.ext3_block_alloc_info* %12, %struct.ext3_block_alloc_info** %8, align 8
  %13 = load %struct.ext3_block_alloc_info*, %struct.ext3_block_alloc_info** %8, align 8
  %14 = icmp ne %struct.ext3_block_alloc_info* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.ext3_block_alloc_info*, %struct.ext3_block_alloc_info** %8, align 8
  %18 = getelementptr inbounds %struct.ext3_block_alloc_info, %struct.ext3_block_alloc_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %16, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load %struct.ext3_block_alloc_info*, %struct.ext3_block_alloc_info** %8, align 8
  %25 = getelementptr inbounds %struct.ext3_block_alloc_info, %struct.ext3_block_alloc_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.ext3_block_alloc_info*, %struct.ext3_block_alloc_info** %8, align 8
  %30 = getelementptr inbounds %struct.ext3_block_alloc_info, %struct.ext3_block_alloc_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %37

33:                                               ; preds = %23, %15, %3
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @ext3_find_near(%struct.inode* %34, i32* %35)
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local %struct.TYPE_2__* @EXT3_I(%struct.inode*) #1

declare dso_local i64 @ext3_find_near(%struct.inode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
