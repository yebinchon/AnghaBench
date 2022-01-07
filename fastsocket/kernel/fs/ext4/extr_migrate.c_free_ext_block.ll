; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_free_ext_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_free_ext_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_inode_info = type { i64 }
%struct.ext4_extent_header = type { i64, i32 }
%struct.ext4_extent_idx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*)* @free_ext_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_ext_block(i32* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_inode_info*, align 8
  %9 = alloca %struct.ext4_extent_header*, align 8
  %10 = alloca %struct.ext4_extent_idx*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %11)
  store %struct.ext4_inode_info* %12, %struct.ext4_inode_info** %8, align 8
  %13 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %8, align 8
  %14 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ext4_extent_header*
  store %struct.ext4_extent_header* %16, %struct.ext4_extent_header** %9, align 8
  %17 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %9, align 8
  %18 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

22:                                               ; preds = %2
  %23 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %9, align 8
  %24 = call %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %23)
  store %struct.ext4_extent_idx* %24, %struct.ext4_extent_idx** %10, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %42, %22
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %9, align 8
  %28 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le16_to_cpu(i32 %29)
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %25
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %10, align 8
  %36 = call i32 @free_ext_idx(i32* %33, %struct.inode* %34, %struct.ext4_extent_idx* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %49

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %10, align 8
  %46 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %45, i32 1
  store %struct.ext4_extent_idx* %46, %struct.ext4_extent_idx** %10, align 8
  br label %25

47:                                               ; preds = %25
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %39, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @free_ext_idx(i32*, %struct.inode*, %struct.ext4_extent_idx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
