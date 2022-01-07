; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_inode_needs_reval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_inode_needs_reval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.cifsInodeInfo = type { i64, i64 }
%struct.cifs_sb_info = type { i64, i32 }

@lookupCacheEnabled = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@CIFS_MOUNT_SERVER_INUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @cifs_inode_needs_reval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_inode_needs_reval(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.cifsInodeInfo*, align 8
  %5 = alloca %struct.cifs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %6)
  store %struct.cifsInodeInfo* %7, %struct.cifsInodeInfo** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.cifs_sb_info* @CIFS_SB(i32 %10)
  store %struct.cifs_sb_info* %11, %struct.cifs_sb_info** %5, align 8
  %12 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %13 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

17:                                               ; preds = %1
  %18 = load i32, i32* @lookupCacheEnabled, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %62

21:                                               ; preds = %17
  %22 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %23 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %62

27:                                               ; preds = %21
  %28 = load i32, i32* @jiffies, align 4
  %29 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %30 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %4, align 8
  %33 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %36 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = call i32 @time_in_range(i32 %28, i64 %31, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %62

42:                                               ; preds = %27
  %43 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %44 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %42
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @S_ISREG(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 1, i32* %2, align 4
  br label %62

61:                                               ; preds = %55, %49, %42
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %60, %41, %26, %20, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i32 @time_in_range(i32, i64, i64) #1

declare dso_local i64 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
