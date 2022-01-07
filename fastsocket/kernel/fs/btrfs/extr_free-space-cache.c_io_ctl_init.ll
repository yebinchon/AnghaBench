; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_io_ctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_ctl = type { i32, i32, %struct.btrfs_root*, i32 }
%struct.inode = type { i32 }
%struct.btrfs_root = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_FREE_INO_OBJECTID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_ctl*, %struct.inode*, %struct.btrfs_root*)* @io_ctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_ctl_init(%struct.io_ctl* %0, %struct.inode* %1, %struct.btrfs_root* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_ctl*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  store %struct.io_ctl* %0, %struct.io_ctl** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.btrfs_root* %2, %struct.btrfs_root** %7, align 8
  %8 = load %struct.io_ctl*, %struct.io_ctl** %5, align 8
  %9 = call i32 @memset(%struct.io_ctl* %8, i32 0, i32 24)
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = call i32 @i_size_read(%struct.inode* %10)
  %12 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %13 = add nsw i32 %11, %12
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = load %struct.io_ctl*, %struct.io_ctl** %5, align 8
  %18 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.io_ctl*, %struct.io_ctl** %5, align 8
  %20 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 8, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_NOFS, align 4
  %26 = call i32 @kzalloc(i32 %24, i32 %25)
  %27 = load %struct.io_ctl*, %struct.io_ctl** %5, align 8
  %28 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.io_ctl*, %struct.io_ctl** %5, align 8
  %30 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %48

36:                                               ; preds = %3
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %38 = load %struct.io_ctl*, %struct.io_ctl** %5, align 8
  %39 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %38, i32 0, i32 2
  store %struct.btrfs_root* %37, %struct.btrfs_root** %39, align 8
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = call i64 @btrfs_ino(%struct.inode* %40)
  %42 = load i64, i64* @BTRFS_FREE_INO_OBJECTID, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.io_ctl*, %struct.io_ctl** %5, align 8
  %46 = getelementptr inbounds %struct.io_ctl, %struct.io_ctl* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %36
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %33
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.io_ctl*, i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i64 @btrfs_ino(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
