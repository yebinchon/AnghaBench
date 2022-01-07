; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_bitmap.c_minix_clear_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_bitmap.c_minix_clear_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.minix_inode = type { i64, i64 }
%struct.minix2_inode = type { i64, i64 }

@MINIX_V1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @minix_clear_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minix_clear_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.minix_inode*, align 8
  %5 = alloca %struct.minix2_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call i64 @INODE_VERSION(%struct.inode* %6)
  %8 = load i64, i64* @MINIX_V1, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.minix_inode* @minix_V1_raw_inode(i32 %13, i32 %16, %struct.buffer_head** %3)
  store %struct.minix_inode* %17, %struct.minix_inode** %4, align 8
  %18 = load %struct.minix_inode*, %struct.minix_inode** %4, align 8
  %19 = icmp ne %struct.minix_inode* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load %struct.minix_inode*, %struct.minix_inode** %4, align 8
  %22 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.minix_inode*, %struct.minix_inode** %4, align 8
  %24 = getelementptr inbounds %struct.minix_inode, %struct.minix_inode* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %20, %10
  br label %42

26:                                               ; preds = %1
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.minix2_inode* @minix_V2_raw_inode(i32 %29, i32 %32, %struct.buffer_head** %3)
  store %struct.minix2_inode* %33, %struct.minix2_inode** %5, align 8
  %34 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %35 = icmp ne %struct.minix2_inode* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %38 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.minix2_inode*, %struct.minix2_inode** %5, align 8
  %40 = getelementptr inbounds %struct.minix2_inode, %struct.minix2_inode* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %36, %26
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %44 = icmp ne %struct.buffer_head* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %47 = call i32 @mark_buffer_dirty(%struct.buffer_head* %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %49 = call i32 @brelse(%struct.buffer_head* %48)
  br label %50

50:                                               ; preds = %45, %42
  ret void
}

declare dso_local i64 @INODE_VERSION(%struct.inode*) #1

declare dso_local %struct.minix_inode* @minix_V1_raw_inode(i32, i32, %struct.buffer_head**) #1

declare dso_local %struct.minix2_inode* @minix_V2_raw_inode(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
