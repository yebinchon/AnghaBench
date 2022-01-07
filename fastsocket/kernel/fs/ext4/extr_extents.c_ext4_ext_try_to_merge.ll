; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_try_to_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_try_to_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent_header* }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_extent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*)* @ext4_ext_try_to_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_try_to_merge(%struct.inode* %0, %struct.ext4_ext_path* %1, %struct.ext4_extent* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_ext_path*, align 8
  %6 = alloca %struct.ext4_extent*, align 8
  %7 = alloca %struct.ext4_extent_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext4_ext_path* %1, %struct.ext4_ext_path** %5, align 8
  store %struct.ext4_extent* %2, %struct.ext4_extent** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call i32 @ext_depth(%struct.inode* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %14 = load i32, i32* %8, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %13, i64 %15
  %17 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %16, i32 0, i32 0
  %18 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %17, align 8
  %19 = icmp eq %struct.ext4_extent_header* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %22, i64 %24
  %26 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %25, i32 0, i32 0
  %27 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %26, align 8
  store %struct.ext4_extent_header* %27, %struct.ext4_extent_header** %7, align 8
  %28 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %29 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %7, align 8
  %30 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %29)
  %31 = icmp ugt %struct.ext4_extent* %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %35 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %36 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %35, i64 -1
  %37 = call i32 @ext4_ext_try_to_merge_right(%struct.inode* %33, %struct.ext4_ext_path* %34, %struct.ext4_extent* %36)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %32, %3
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %44 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %45 = call i32 @ext4_ext_try_to_merge_right(%struct.inode* %42, %struct.ext4_ext_path* %43, %struct.ext4_extent* %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %10, align 4
  ret i32 %47
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_ext_try_to_merge_right(%struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
