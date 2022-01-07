; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_tree_mod_log_eb_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.c_tree_mod_log_eb_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.extent_buffer = type { i32 }

@MOD_LOG_KEY_REMOVE = common dso_local global i32 0, align 4
@MOD_LOG_KEY_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.extent_buffer*, %struct.extent_buffer*, i64, i64, i32)* @tree_mod_log_eb_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_mod_log_eb_copy(%struct.btrfs_fs_info* %0, %struct.extent_buffer* %1, %struct.extent_buffer* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %7, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %8, align 8
  store %struct.extent_buffer* %2, %struct.extent_buffer** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %16 = call i64 @tree_mod_dont_log(%struct.btrfs_fs_info* %15, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  br label %63

19:                                               ; preds = %6
  %20 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %21 = call i64 @btrfs_header_level(%struct.extent_buffer* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %25 = call i64 @btrfs_header_level(%struct.extent_buffer* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %63

28:                                               ; preds = %23, %19
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %29
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %35 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @MOD_LOG_KEY_REMOVE, align 4
  %42 = call i32 @tree_mod_log_insert_key(%struct.btrfs_fs_info* %34, %struct.extent_buffer* %35, i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %48 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @MOD_LOG_KEY_ADD, align 4
  %55 = call i32 @tree_mod_log_insert_key(%struct.btrfs_fs_info* %47, %struct.extent_buffer* %48, i32 %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  br label %60

60:                                               ; preds = %33
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %29

63:                                               ; preds = %18, %27, %29
  ret void
}

declare dso_local i64 @tree_mod_dont_log(%struct.btrfs_fs_info*, i32*) #1

declare dso_local i64 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @tree_mod_log_insert_key(%struct.btrfs_fs_info*, %struct.extent_buffer*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
