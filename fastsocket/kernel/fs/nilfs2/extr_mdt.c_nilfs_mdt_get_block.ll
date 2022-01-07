; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_mdt.c_nilfs_mdt_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_mdt_get_block(%struct.inode* %0, i64 %1, i32 %2, void (%struct.inode*, %struct.buffer_head*, i8*)* %3, %struct.buffer_head** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.inode*, %struct.buffer_head*, i8*)*, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store void (%struct.inode*, %struct.buffer_head*, i8*)* %3, void (%struct.inode*, %struct.buffer_head*, i8*)** %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  br label %13

13:                                               ; preds = %40, %5
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %17 = call i32 @nilfs_mdt_read_block(%struct.inode* %14, i64 %15, %struct.buffer_head** %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %13
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %43

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %31 = load void (%struct.inode*, %struct.buffer_head*, i8*)*, void (%struct.inode*, %struct.buffer_head*, i8*)** %10, align 8
  %32 = call i32 @nilfs_mdt_create_block(%struct.inode* %28, i64 %29, %struct.buffer_head** %30, void (%struct.inode*, %struct.buffer_head*, i8*)* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @EEXIST, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %13

41:                                               ; preds = %27
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %25
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @nilfs_mdt_read_block(%struct.inode*, i64, %struct.buffer_head**) #1

declare dso_local i32 @nilfs_mdt_create_block(%struct.inode*, i64, %struct.buffer_head**, void (%struct.inode*, %struct.buffer_head*, i8*)*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
