; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_close_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_close_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.inode = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.smb_inode_info = type { i64, i32, i64, i32, i64 }
%struct.smb_fattr = type { i32 }

@SMB_CAP_UNIX = common dso_local global i32 0, align 4
@SMB_PROTOCOL_LANMAN2 = common dso_local global i64 0, align 8
@SMB_O_RDONLY = common dso_local global i64 0, align 8
@SMB_PROTOCOL_NT1 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_sb_info*, %struct.inode*)* @smb_proc_close_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_proc_close_inode(%struct.smb_sb_info* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.smb_sb_info*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.smb_inode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_fattr, align 4
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.smb_inode_info* @SMB_I(%struct.inode* %8)
  store %struct.smb_inode_info* %9, %struct.smb_inode_info** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i64 @smb_is_open(%struct.inode* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %97

13:                                               ; preds = %2
  %14 = load %struct.smb_inode_info*, %struct.smb_inode_info** %5, align 8
  %15 = getelementptr inbounds %struct.smb_inode_info, %struct.smb_inode_info* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %22, %13
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %38, %31
  %48 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %49 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SMB_CAP_UNIX, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %47
  %56 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %57 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SMB_PROTOCOL_LANMAN2, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load %struct.smb_inode_info*, %struct.smb_inode_info** %5, align 8
  %64 = getelementptr inbounds %struct.smb_inode_info, %struct.smb_inode_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SMB_O_RDONLY, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = call i32 @smb_get_inode_attr(%struct.inode* %69, %struct.smb_fattr* %7)
  %71 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = call i32 @smb_proc_setattr_ext(%struct.smb_sb_info* %71, %struct.inode* %72, %struct.smb_fattr* %7)
  br label %74

74:                                               ; preds = %68, %62, %55, %47
  %75 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %76 = load %struct.smb_inode_info*, %struct.smb_inode_info** %5, align 8
  %77 = getelementptr inbounds %struct.smb_inode_info, %struct.smb_inode_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @smb_proc_close(%struct.smb_sb_info* %75, i32 %78, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load %struct.smb_sb_info*, %struct.smb_sb_info** %3, align 8
  %85 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SMB_PROTOCOL_NT1, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %74
  %91 = load %struct.smb_inode_info*, %struct.smb_inode_info** %5, align 8
  %92 = getelementptr inbounds %struct.smb_inode_info, %struct.smb_inode_info* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %74
  %94 = load i32, i32* @jiffies, align 4
  %95 = load %struct.smb_inode_info*, %struct.smb_inode_info** %5, align 8
  %96 = getelementptr inbounds %struct.smb_inode_info, %struct.smb_inode_info* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %2
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local %struct.smb_inode_info* @SMB_I(%struct.inode*) #1

declare dso_local i64 @smb_is_open(%struct.inode*) #1

declare dso_local i32 @smb_get_inode_attr(%struct.inode*, %struct.smb_fattr*) #1

declare dso_local i32 @smb_proc_setattr_ext(%struct.smb_sb_info*, %struct.inode*, %struct.smb_fattr*) #1

declare dso_local i32 @smb_proc_close(%struct.smb_sb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
