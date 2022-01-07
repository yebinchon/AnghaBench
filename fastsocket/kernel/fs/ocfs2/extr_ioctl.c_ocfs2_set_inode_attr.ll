; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_ioctl.c_ocfs2_set_inode_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_ioctl.c_ocfs2_set_inode_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.ocfs2_inode_info = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@OCFS2_DIRSYNC_FL = common dso_local global i32 0, align 4
@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@OCFS2_IMMUTABLE_FL = common dso_local global i32 0, align 4
@OCFS2_APPEND_FL = common dso_local global i32 0, align 4
@CAP_LINUX_IMMUTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32)* @ocfs2_set_inode_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_set_inode_attr(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_inode_info*, align 8
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %13)
  store %struct.ocfs2_inode_info* %14, %struct.ocfs2_inode_info** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ocfs2_super* @OCFS2_SB(i32 %17)
  store %struct.ocfs2_super* %18, %struct.ocfs2_super** %8, align 8
  store i32* null, i32** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @ocfs2_inode_lock(%struct.inode* %22, %struct.buffer_head** %10, i32 1)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  br label %115

29:                                               ; preds = %3
  %30 = load i32, i32* @EACCES, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call i32 @is_owner_or_cap(%struct.inode* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %112

36:                                               ; preds = %29
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @S_ISDIR(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @OCFS2_DIRSYNC_FL, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %36
  %48 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %49 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %50 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %48, i32 %49)
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i64 @IS_ERR(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @PTR_ERR(i32* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %112

59:                                               ; preds = %47
  %60 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %61 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %6, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @EPERM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @OCFS2_IMMUTABLE_FL, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %59
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %11, align 4
  %81 = xor i32 %79, %80
  %82 = load i32, i32* @OCFS2_APPEND_FL, align 4
  %83 = load i32, i32* @OCFS2_IMMUTABLE_FL, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78, %59
  %88 = load i32, i32* @CAP_LINUX_IMMUTABLE, align 4
  %89 = call i32 @capable(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  br label %112

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %78
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %96 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = call i32 @ocfs2_set_inode_flags(%struct.inode* %97)
  %99 = load i32*, i32** %9, align 8
  %100 = load %struct.inode*, %struct.inode** %4, align 8
  %101 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %102 = call i32 @ocfs2_mark_inode_dirty(i32* %99, %struct.inode* %100, %struct.buffer_head* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @mlog_errno(i32 %106)
  br label %108

108:                                              ; preds = %105, %93
  %109 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %109, i32* %110)
  br label %112

112:                                              ; preds = %108, %91, %54, %35
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = call i32 @ocfs2_inode_unlock(%struct.inode* %113, i32 1)
  br label %115

115:                                              ; preds = %112, %26
  %116 = load %struct.inode*, %struct.inode** %4, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %120 = call i32 @brelse(%struct.buffer_head* %119)
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @mlog_exit(i32 %121)
  %123 = load i32, i32* %12, align 4
  ret i32 %123
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @is_owner_or_cap(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @ocfs2_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
