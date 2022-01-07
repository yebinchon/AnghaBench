; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_get_inode_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_get_inode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext3_iloc = type { i64, i64 }
%struct.ext3_group_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.super_block*, i64, %struct.ext3_iloc*)* @ext3_get_inode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext3_get_inode_block(%struct.super_block* %0, i64 %1, %struct.ext3_iloc* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ext3_iloc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ext3_group_desc*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ext3_iloc* %2, %struct.ext3_iloc** %7, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @ext3_valid_inum(%struct.super_block* %12, i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %59

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = sub i64 %18, 1
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = call i64 @EXT3_INODES_PER_GROUP(%struct.super_block* %20)
  %22 = udiv i64 %19, %21
  store i64 %22, i64* %8, align 8
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block* %23, i64 %24, i32* null)
  store %struct.ext3_group_desc* %25, %struct.ext3_group_desc** %11, align 8
  %26 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %11, align 8
  %27 = icmp ne %struct.ext3_group_desc* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  store i64 0, i64* %4, align 8
  br label %59

29:                                               ; preds = %17
  %30 = load i64, i64* %6, align 8
  %31 = sub i64 %30, 1
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = call i64 @EXT3_INODES_PER_GROUP(%struct.super_block* %32)
  %34 = urem i64 %31, %33
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = call i64 @EXT3_INODE_SIZE(%struct.super_block* %35)
  %37 = mul i64 %34, %36
  store i64 %37, i64* %9, align 8
  %38 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %11, align 8
  %39 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le32_to_cpu(i32 %40)
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = call i64 @EXT3_BLOCK_SIZE_BITS(%struct.super_block* %43)
  %45 = lshr i64 %42, %44
  %46 = add i64 %41, %45
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.ext3_iloc*, %struct.ext3_iloc** %7, align 8
  %49 = getelementptr inbounds %struct.ext3_iloc, %struct.ext3_iloc* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.super_block*, %struct.super_block** %5, align 8
  %52 = call i32 @EXT3_BLOCK_SIZE(%struct.super_block* %51)
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = and i64 %50, %54
  %56 = load %struct.ext3_iloc*, %struct.ext3_iloc** %7, align 8
  %57 = getelementptr inbounds %struct.ext3_iloc, %struct.ext3_iloc* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %29, %28, %16
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local i32 @ext3_valid_inum(%struct.super_block*, i64) #1

declare dso_local i64 @EXT3_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block*, i64, i32*) #1

declare dso_local i64 @EXT3_INODE_SIZE(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @EXT3_BLOCK_SIZE_BITS(%struct.super_block*) #1

declare dso_local i32 @EXT3_BLOCK_SIZE(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
