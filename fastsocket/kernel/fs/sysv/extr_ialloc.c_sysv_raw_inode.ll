; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_ialloc.c_sysv_raw_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_ialloc.c_sysv_raw_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_inode = type { i32 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.sysv_sb_info = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sysv_inode* @sysv_raw_inode(%struct.super_block* %0, i32 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.sysv_inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.sysv_sb_info*, align 8
  %9 = alloca %struct.sysv_inode*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %11)
  store %struct.sysv_sb_info* %12, %struct.sysv_sb_info** %8, align 8
  %13 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %14 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %17 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub i32 %20, 1
  %22 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %23 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = lshr i32 %21, %24
  %26 = load i32, i32* %10, align 4
  %27 = add i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.buffer_head* @sb_bread(%struct.super_block* %28, i32 %29)
  %31 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %30, %struct.buffer_head** %31, align 8
  %32 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %32, align 8
  %34 = icmp ne %struct.buffer_head* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  store %struct.sysv_inode* null, %struct.sysv_inode** %4, align 8
  br label %51

36:                                               ; preds = %3
  %37 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %37, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.sysv_inode*
  store %struct.sysv_inode* %41, %struct.sysv_inode** %9, align 8
  %42 = load %struct.sysv_inode*, %struct.sysv_inode** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub i32 %43, 1
  %45 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %8, align 8
  %46 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %44, %47
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %42, i64 %49
  store %struct.sysv_inode* %50, %struct.sysv_inode** %4, align 8
  br label %51

51:                                               ; preds = %36, %35
  %52 = load %struct.sysv_inode*, %struct.sysv_inode** %4, align 8
  ret %struct.sysv_inode* %52
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
