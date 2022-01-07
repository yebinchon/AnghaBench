; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_relocation.c_read_fs_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_relocation.c_read_fs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_key = type { i8*, i32, i8* }

@BTRFS_ROOT_ITEM_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_root* (%struct.btrfs_fs_info*, i8*)* @read_fs_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_root* @read_fs_root(%struct.btrfs_fs_info* %0, i8* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.btrfs_key, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %5, i32 0, i32 2
  store i8* %6, i8** %7, align 8
  %8 = load i32, i32* @BTRFS_ROOT_ITEM_KEY, align 4
  %9 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %5, i32 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @is_cowonly_root(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %5, i32 0, i32 0
  store i8* null, i8** %14, align 8
  br label %17

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %5, i32 0, i32 0
  store i8* inttoptr (i64 -1 to i8*), i8** %16, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %19 = call %struct.btrfs_root* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info* %18, %struct.btrfs_key* %5)
  ret %struct.btrfs_root* %19
}

declare dso_local i64 @is_cowonly_root(i8*) #1

declare dso_local %struct.btrfs_root* @btrfs_read_fs_root_no_name(%struct.btrfs_fs_info*, %struct.btrfs_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
