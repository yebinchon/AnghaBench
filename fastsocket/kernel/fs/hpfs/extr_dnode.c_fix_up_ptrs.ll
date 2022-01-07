; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_fix_up_ptrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_fix_up_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dnode = type { i64, i64, i64 }
%struct.hpfs_dirent = type { i64 }
%struct.quad_buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.dnode*)* @fix_up_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_up_ptrs(%struct.super_block* %0, %struct.dnode* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.dnode*, align 8
  %5 = alloca %struct.hpfs_dirent*, align 8
  %6 = alloca %struct.hpfs_dirent*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.quad_buffer_head, align 4
  %9 = alloca %struct.dnode*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.dnode* %1, %struct.dnode** %4, align 8
  %10 = load %struct.dnode*, %struct.dnode** %4, align 8
  %11 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %10)
  store %struct.hpfs_dirent* %11, %struct.hpfs_dirent** %6, align 8
  %12 = load %struct.dnode*, %struct.dnode** %4, align 8
  %13 = getelementptr inbounds %struct.dnode, %struct.dnode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.dnode*, %struct.dnode** %4, align 8
  %16 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %15)
  store %struct.hpfs_dirent* %16, %struct.hpfs_dirent** %5, align 8
  br label %17

17:                                               ; preds = %54, %2
  %18 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %5, align 8
  %19 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  %20 = icmp ult %struct.hpfs_dirent* %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %17
  %22 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %5, align 8
  %23 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %21
  %27 = load %struct.super_block*, %struct.super_block** %3, align 8
  %28 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %5, align 8
  %29 = call i32 @de_down_pointer(%struct.hpfs_dirent* %28)
  %30 = call %struct.dnode* @hpfs_map_dnode(%struct.super_block* %27, i32 %29, %struct.quad_buffer_head* %8)
  store %struct.dnode* %30, %struct.dnode** %9, align 8
  %31 = icmp ne %struct.dnode* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load %struct.dnode*, %struct.dnode** %9, align 8
  %34 = getelementptr inbounds %struct.dnode, %struct.dnode* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load %struct.dnode*, %struct.dnode** %9, align 8
  %40 = getelementptr inbounds %struct.dnode, %struct.dnode* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38, %32
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.dnode*, %struct.dnode** %9, align 8
  %46 = getelementptr inbounds %struct.dnode, %struct.dnode* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.dnode*, %struct.dnode** %9, align 8
  %48 = getelementptr inbounds %struct.dnode, %struct.dnode* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %8)
  br label %50

50:                                               ; preds = %43, %38
  %51 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %8)
  br label %52

52:                                               ; preds = %50, %26
  br label %53

53:                                               ; preds = %52, %21
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %5, align 8
  %56 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %55)
  store %struct.hpfs_dirent* %56, %struct.hpfs_dirent** %5, align 8
  br label %17

57:                                               ; preds = %17
  ret void
}

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local %struct.dnode* @hpfs_map_dnode(%struct.super_block*, i32, %struct.quad_buffer_head*) #1

declare dso_local i32 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
