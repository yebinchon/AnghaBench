; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_clear_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_clear_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext3_block_alloc_info = type { i32 }
%struct.TYPE_2__ = type { %struct.ext3_block_alloc_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ext3_clear_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext3_clear_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ext3_block_alloc_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.TYPE_2__* @EXT3_I(%struct.inode* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.ext3_block_alloc_info*, %struct.ext3_block_alloc_info** %6, align 8
  store %struct.ext3_block_alloc_info* %7, %struct.ext3_block_alloc_info** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call i32 @ext3_discard_reservation(%struct.inode* %8)
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call %struct.TYPE_2__* @EXT3_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ext3_block_alloc_info* null, %struct.ext3_block_alloc_info** %12, align 8
  %13 = load %struct.ext3_block_alloc_info*, %struct.ext3_block_alloc_info** %3, align 8
  %14 = call i64 @unlikely(%struct.ext3_block_alloc_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.ext3_block_alloc_info*, %struct.ext3_block_alloc_info** %3, align 8
  %18 = call i32 @kfree(%struct.ext3_block_alloc_info* %17)
  br label %19

19:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.TYPE_2__* @EXT3_I(%struct.inode*) #1

declare dso_local i32 @ext3_discard_reservation(%struct.inode*) #1

declare dso_local i64 @unlikely(%struct.ext3_block_alloc_info*) #1

declare dso_local i32 @kfree(%struct.ext3_block_alloc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
