; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_cache.c_smb_invalid_dir_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_cache.c_smb_invalid_dir_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.smb_sb_info = type { i32 }
%union.smb_dir_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.page = type { i32 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_invalid_dir_cache(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.smb_sb_info*, align 8
  %4 = alloca %union.smb_dir_cache*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.smb_sb_info* @server_from_inode(%struct.inode* %6)
  store %struct.smb_sb_info* %7, %struct.smb_sb_info** %3, align 8
  store %union.smb_dir_cache* null, %union.smb_dir_cache** %4, align 8
  store %struct.page* null, %struct.page** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = call %struct.page* @grab_cache_page(i32* %9, i32 0)
  store %struct.page* %10, %struct.page** %5, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = icmp ne %struct.page* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = call i32 @PageUptodate(%struct.page* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %33

19:                                               ; preds = %14
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = call %union.smb_dir_cache* @kmap(%struct.page* %20)
  store %union.smb_dir_cache* %21, %union.smb_dir_cache** %4, align 8
  %22 = load i64, i64* @jiffies, align 8
  %23 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %24 = call i64 @SMB_MAX_AGE(%struct.smb_sb_info* %23)
  %25 = sub nsw i64 %22, %24
  %26 = load %union.smb_dir_cache*, %union.smb_dir_cache** %4, align 8
  %27 = bitcast %union.smb_dir_cache* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load %struct.page*, %struct.page** %5, align 8
  %30 = call i32 @kunmap(%struct.page* %29)
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = call i32 @SetPageUptodate(%struct.page* %31)
  br label %33

33:                                               ; preds = %19, %18
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = call i32 @unlock_page(%struct.page* %34)
  %36 = load %struct.page*, %struct.page** %5, align 8
  %37 = call i32 @page_cache_release(%struct.page* %36)
  br label %38

38:                                               ; preds = %33, %13
  ret void
}

declare dso_local %struct.smb_sb_info* @server_from_inode(%struct.inode*) #1

declare dso_local %struct.page* @grab_cache_page(i32*, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local %union.smb_dir_cache* @kmap(%struct.page*) #1

declare dso_local i64 @SMB_MAX_AGE(%struct.smb_sb_info*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
