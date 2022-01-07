; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_anode.c_hpfs_ea_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_anode.c_hpfs_ea_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.anode = type { i32 }
%struct.buffer_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_ea_remove(%struct.super_block* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.anode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %4
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.anode* @hpfs_map_anode(%struct.super_block* %14, i32 %15, %struct.buffer_head** %10)
  store %struct.anode* %16, %struct.anode** %9, align 8
  %17 = icmp ne %struct.anode* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %36

19:                                               ; preds = %13
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load %struct.anode*, %struct.anode** %9, align 8
  %22 = getelementptr inbounds %struct.anode, %struct.anode* %21, i32 0, i32 0
  %23 = call i32 @hpfs_remove_btree(%struct.super_block* %20, i32* %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %25 = call i32 @brelse(%struct.buffer_head* %24)
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @hpfs_free_sectors(%struct.super_block* %26, i32 %27, i32 1)
  br label %36

29:                                               ; preds = %4
  %30 = load %struct.super_block*, %struct.super_block** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add i32 %32, 511
  %34 = lshr i32 %33, 9
  %35 = call i32 @hpfs_free_sectors(%struct.super_block* %30, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %18, %29, %19
  ret void
}

declare dso_local %struct.anode* @hpfs_map_anode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_remove_btree(%struct.super_block*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @hpfs_free_sectors(%struct.super_block*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
