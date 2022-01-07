; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_anode.c_anode_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_anode.c_anode_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.anode = type { i32 }
%struct.buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32)* @anode_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anode_lookup(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.anode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.anode* @hpfs_map_anode(%struct.super_block* %10, i32 %11, %struct.buffer_head** %9)
  store %struct.anode* %12, %struct.anode** %8, align 8
  %13 = icmp ne %struct.anode* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %22

15:                                               ; preds = %3
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = load %struct.anode*, %struct.anode** %8, align 8
  %18 = getelementptr inbounds %struct.anode, %struct.anode* %17, i32 0, i32 0
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %21 = call i32 @hpfs_bplus_lookup(%struct.super_block* %16, i32* null, i32* %18, i32 %19, %struct.buffer_head* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local %struct.anode* @hpfs_map_anode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_bplus_lookup(%struct.super_block*, i32*, i32*, i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
