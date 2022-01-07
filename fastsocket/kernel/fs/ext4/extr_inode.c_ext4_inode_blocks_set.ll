; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_inode_blocks_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_inode_blocks_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_inode = type { i8*, i8* }
%struct.ext4_inode_info = type { %struct.inode }
%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }

@EXT4_INODE_HUGE_FILE = common dso_local global i32 0, align 4
@EXT4_FEATURE_RO_COMPAT_HUGE_FILE = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ext4_inode*, %struct.ext4_inode_info*)* @ext4_inode_blocks_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_inode_blocks_set(i32* %0, %struct.ext4_inode* %1, %struct.ext4_inode_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ext4_inode*, align 8
  %7 = alloca %struct.ext4_inode_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ext4_inode* %1, %struct.ext4_inode** %6, align 8
  store %struct.ext4_inode_info* %2, %struct.ext4_inode_info** %7, align 8
  %11 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %7, align 8
  %12 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %11, i32 0, i32 0
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %8, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 2
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %10, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ule i32 %19, -1
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %25 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %27 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %26, i32 0, i32 0
  store i8* null, i8** %27, align 8
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = load i32, i32* @EXT4_INODE_HUGE_FILE, align 4
  %30 = call i32 @ext4_clear_inode_flag(%struct.inode* %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %76

31:                                               ; preds = %3
  %32 = load %struct.super_block*, %struct.super_block** %10, align 8
  %33 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_HUGE_FILE, align 4
  %34 = call i32 @EXT4_HAS_RO_COMPAT_FEATURE(%struct.super_block* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EFBIG, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %76

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = icmp ule i64 %41, 281474976710655
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %47 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = lshr i32 %48, 32
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %52 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = load i32, i32* @EXT4_INODE_HUGE_FILE, align 4
  %55 = call i32 @ext4_clear_inode_flag(%struct.inode* %53, i32 %54)
  br label %75

56:                                               ; preds = %39
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = load i32, i32* @EXT4_INODE_HUGE_FILE, align 4
  %59 = call i32 @ext4_set_inode_flag(%struct.inode* %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 9
  %65 = lshr i32 %60, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %69 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = lshr i32 %70, 32
  %72 = call i8* @cpu_to_le16(i32 %71)
  %73 = load %struct.ext4_inode*, %struct.ext4_inode** %6, align 8
  %74 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %56, %43
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %36, %21
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @EXT4_HAS_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_set_inode_flag(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
