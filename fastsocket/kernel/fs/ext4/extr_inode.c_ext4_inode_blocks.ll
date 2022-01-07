; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_inode_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_inode_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_inode = type { i32, i32 }
%struct.ext4_inode_info = type { %struct.inode }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }

@EXT4_FEATURE_RO_COMPAT_HUGE_FILE = common dso_local global i32 0, align 4
@EXT4_INODE_HUGE_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_inode*, %struct.ext4_inode_info*)* @ext4_inode_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_inode_blocks(%struct.ext4_inode* %0, %struct.ext4_inode_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext4_inode*, align 8
  %5 = alloca %struct.ext4_inode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.super_block*, align 8
  store %struct.ext4_inode* %0, %struct.ext4_inode** %4, align 8
  store %struct.ext4_inode_info* %1, %struct.ext4_inode_info** %5, align 8
  %9 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %5, align 8
  %10 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %9, i32 0, i32 0
  store %struct.inode* %10, %struct.inode** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %7, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %8, align 8
  %14 = load %struct.super_block*, %struct.super_block** %8, align 8
  %15 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_HUGE_FILE, align 4
  %16 = call i64 @EXT4_HAS_RO_COMPAT_FEATURE(%struct.super_block* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %2
  %19 = load %struct.ext4_inode*, %struct.ext4_inode** %4, align 8
  %20 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le16_to_cpu(i32 %21)
  %23 = trunc i64 %22 to i32
  %24 = shl i32 %23, 32
  %25 = load %struct.ext4_inode*, %struct.ext4_inode** %4, align 8
  %26 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = or i32 %24, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = load i32, i32* @EXT4_INODE_HUGE_FILE, align 4
  %32 = call i64 @ext4_test_inode_flag(%struct.inode* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %18
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 9
  %40 = shl i32 %35, %39
  store i32 %40, i32* %3, align 4
  br label %48

41:                                               ; preds = %18
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %2
  %44 = load %struct.ext4_inode*, %struct.ext4_inode** %4, align 8
  %45 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %41, %34
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @EXT4_HAS_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
