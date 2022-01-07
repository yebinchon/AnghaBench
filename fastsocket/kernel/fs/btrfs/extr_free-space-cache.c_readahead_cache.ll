; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_readahead_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_free-space-cache.c_readahead_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file_ra_state = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @readahead_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readahead_cache(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file_ra_state*, align 8
  %5 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load i32, i32* @GFP_NOFS, align 4
  %7 = call %struct.file_ra_state* @kzalloc(i32 4, i32 %6)
  store %struct.file_ra_state* %7, %struct.file_ra_state** %4, align 8
  %8 = load %struct.file_ra_state*, %struct.file_ra_state** %4, align 8
  %9 = icmp ne %struct.file_ra_state* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.file_ra_state*, %struct.file_ra_state** %4, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @file_ra_state_init(%struct.file_ra_state* %14, i32 %17)
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call i32 @i_size_read(%struct.inode* %19)
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %5, align 8
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.file_ra_state*, %struct.file_ra_state** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @page_cache_sync_readahead(i32 %27, %struct.file_ra_state* %28, i32* null, i32 0, i64 %29)
  %31 = load %struct.file_ra_state*, %struct.file_ra_state** %4, align 8
  %32 = call i32 @kfree(%struct.file_ra_state* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %13, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.file_ra_state* @kzalloc(i32, i32) #1

declare dso_local i32 @file_ra_state_init(%struct.file_ra_state*, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @page_cache_sync_readahead(i32, %struct.file_ra_state*, i32*, i32, i64) #1

declare dso_local i32 @kfree(%struct.file_ra_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
