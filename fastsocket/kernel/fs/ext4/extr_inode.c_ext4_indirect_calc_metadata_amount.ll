; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_indirect_calc_metadata_amount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_indirect_calc_metadata_amount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_inode_info = type { i32, i32 }

@EXT4_NDIR_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @ext4_indirect_calc_metadata_amount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_indirect_calc_metadata_amount(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_inode_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %9)
  store %struct.ext4_inode_info* %10, %struct.ext4_inode_info** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @EXT4_ADDR_PER_BLOCK(i32 %13)
  %15 = trunc i64 %14 to i32
  %16 = sub nsw i32 %15, 1
  %17 = xor i32 %16, -1
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EXT4_NDIR_BLOCKS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

22:                                               ; preds = %2
  %23 = load i32, i32* @EXT4_NDIR_BLOCKS, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %27 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %35 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %40 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %60

43:                                               ; preds = %30, %22
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %44, %45
  %47 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %48 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %50 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @order_base_2(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @EXT4_ADDR_PER_BLOCK_BITS(i32 %56)
  %58 = sdiv i32 %53, %57
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %43, %38, %21
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i64 @EXT4_ADDR_PER_BLOCK(i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @EXT4_ADDR_PER_BLOCK_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
