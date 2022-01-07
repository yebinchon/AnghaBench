; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_find_group_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_ialloc.c_find_group_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.ext2_group_desc = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*)* @find_group_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_group_dir(%struct.super_block* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext2_group_desc*, align 8
  %9 = alloca %struct.ext2_group_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = call i32 @ext2_count_free_inodes(%struct.super_block* %16)
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %7, align 4
  store %struct.ext2_group_desc* null, %struct.ext2_group_desc** %9, align 8
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %61, %2
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %20
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %25, i32 %26, i32* null)
  store %struct.ext2_group_desc* %27, %struct.ext2_group_desc** %8, align 8
  %28 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %29 = icmp ne %struct.ext2_group_desc* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %32 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %24
  br label %61

36:                                               ; preds = %30
  %37 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %38 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %61

44:                                               ; preds = %36
  %45 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %9, align 8
  %46 = icmp ne %struct.ext2_group_desc* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %49 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %9, align 8
  %53 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  %56 = icmp sgt i32 %51, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %47, %44
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %11, align 4
  %59 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  store %struct.ext2_group_desc* %59, %struct.ext2_group_desc** %9, align 8
  br label %60

60:                                               ; preds = %57, %47
  br label %61

61:                                               ; preds = %60, %43, %35
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %20

64:                                               ; preds = %20
  %65 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %9, align 8
  %66 = icmp ne %struct.ext2_group_desc* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 -1, i32* %3, align 4
  br label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %67
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_2__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @ext2_count_free_inodes(%struct.super_block*) #1

declare dso_local %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
