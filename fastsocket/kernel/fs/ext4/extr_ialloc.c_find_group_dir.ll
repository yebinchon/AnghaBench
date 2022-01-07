; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ialloc.c_find_group_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ialloc.c_find_group_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.ext4_group_desc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*, i32*)* @find_group_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_group_dir(%struct.super_block* %0, %struct.inode* %1, i32* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_group_desc*, align 8
  %11 = alloca %struct.ext4_group_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = call i32 @ext4_get_groups_count(%struct.super_block* %14)
  store i32 %15, i32* %7, align 4
  store %struct.ext4_group_desc* null, %struct.ext4_group_desc** %11, align 8
  store i32 -1, i32* %13, align 4
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @percpu_counter_read_positive(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = udiv i32 %20, %21
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %62, %3
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %28, i32 %29, i32* null)
  store %struct.ext4_group_desc* %30, %struct.ext4_group_desc** %10, align 8
  %31 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %10, align 8
  %32 = icmp ne %struct.ext4_group_desc* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %10, align 8
  %36 = call i32 @ext4_free_inodes_count(%struct.super_block* %34, %struct.ext4_group_desc* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %27
  br label %62

39:                                               ; preds = %33
  %40 = load %struct.super_block*, %struct.super_block** %4, align 8
  %41 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %10, align 8
  %42 = call i32 @ext4_free_inodes_count(%struct.super_block* %40, %struct.ext4_group_desc* %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %62

46:                                               ; preds = %39
  %47 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %11, align 8
  %48 = icmp ne %struct.ext4_group_desc* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.super_block*, %struct.super_block** %4, align 8
  %51 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %10, align 8
  %52 = call i64 @ext4_free_blks_count(%struct.super_block* %50, %struct.ext4_group_desc* %51)
  %53 = load %struct.super_block*, %struct.super_block** %4, align 8
  %54 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %11, align 8
  %55 = call i64 @ext4_free_blks_count(%struct.super_block* %53, %struct.ext4_group_desc* %54)
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %49, %46
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %10, align 8
  store %struct.ext4_group_desc* %60, %struct.ext4_group_desc** %11, align 8
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %57, %49
  br label %62

62:                                               ; preds = %61, %45, %38
  %63 = load i32, i32* %12, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %23

65:                                               ; preds = %23
  %66 = load i32, i32* %13, align 4
  ret i32 %66
}

declare dso_local i32 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local i32 @percpu_counter_read_positive(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @ext4_free_inodes_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i64 @ext4_free_blks_count(%struct.super_block*, %struct.ext4_group_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
