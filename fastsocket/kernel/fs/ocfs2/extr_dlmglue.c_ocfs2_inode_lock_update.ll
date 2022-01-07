; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_inode_info = type { i32, i64, i32, %struct.ocfs2_lock_res }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_dinode = type { i32, i32, i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_INODE_DELETED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Orphaned inode %llu was deleted while we were waiting on a lock. ip_flags = 0x%x\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Trusting LVB on inode %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Invalid dinode %llu disk generation: %u inode->i_generation: %u\0A\00", align 1
@OCFS2_VALID_FL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Stale dinode %llu dtime: %llu flags: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head**)* @ocfs2_inode_lock_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_inode_lock_update(%struct.inode* %0, %struct.buffer_head** %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_inode_info*, align 8
  %7 = alloca %struct.ocfs2_lock_res*, align 8
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.ocfs2_super*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %10)
  store %struct.ocfs2_inode_info* %11, %struct.ocfs2_inode_info** %6, align 8
  %12 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %13 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %12, i32 0, i32 3
  store %struct.ocfs2_lock_res* %13, %struct.ocfs2_lock_res** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.ocfs2_super* @OCFS2_SB(i32 %16)
  store %struct.ocfs2_super* %17, %struct.ocfs2_super** %9, align 8
  %18 = call i32 (...) @mlog_entry_void()
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %20 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %145

23:                                               ; preds = %2
  %24 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %25 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %24, i32 0, i32 2
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %28 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @OCFS2_INODE_DELETED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %23
  %34 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %35 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %38 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %36, i32 %39)
  %41 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %42 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %41, i32 0, i32 2
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %145

46:                                               ; preds = %23
  %47 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %48 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %47, i32 0, i32 2
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %51 = call i32 @ocfs2_should_refresh_lock_res(%struct.ocfs2_lock_res* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %145

54:                                               ; preds = %46
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = call i32 @INODE_CACHE(%struct.inode* %55)
  %57 = call i32 @ocfs2_metadata_cache_purge(i32 %56)
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = call i32 @ocfs2_extent_map_trunc(%struct.inode* %58, i32 0)
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %62 = call i64 @ocfs2_meta_lvb_is_trustable(%struct.inode* %60, %struct.ocfs2_lock_res* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %54
  %65 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %66 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  %69 = load %struct.inode*, %struct.inode** %3, align 8
  %70 = call i32 @ocfs2_refresh_inode_from_lvb(%struct.inode* %69)
  br label %140

71:                                               ; preds = %54
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  %74 = call i32 @ocfs2_read_inode_block(%struct.inode* %72, %struct.buffer_head** %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @mlog_errno(i32 %78)
  br label %141

80:                                               ; preds = %71
  %81 = load %struct.buffer_head**, %struct.buffer_head*** %4, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %81, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %85, %struct.ocfs2_dinode** %8, align 8
  %86 = load %struct.inode*, %struct.inode** %3, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %90 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @le32_to_cpu(i32 %91)
  %93 = icmp ne i64 %88, %92
  %94 = zext i1 %93 to i32
  %95 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %96 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %99 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @le32_to_cpu(i32 %100)
  %102 = load %struct.inode*, %struct.inode** %3, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @mlog_bug_on_msg(i32 %94, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %97, i64 %101, i64 %104)
  %106 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %107 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @le64_to_cpu(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %80
  %112 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %113 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @OCFS2_VALID_FL, align 4
  %116 = call i32 @cpu_to_le32(i32 %115)
  %117 = and i32 %114, %116
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %111, %80
  %121 = phi i1 [ true, %80 ], [ %119, %111 ]
  %122 = zext i1 %121 to i32
  %123 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %6, align 8
  %124 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %127 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @le64_to_cpu(i32 %128)
  %130 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %131 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @le32_to_cpu(i32 %132)
  %134 = call i32 @mlog_bug_on_msg(i32 %122, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %125, i64 %129, i64 %133)
  %135 = load %struct.inode*, %struct.inode** %3, align 8
  %136 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %137 = call i32 @ocfs2_refresh_inode(%struct.inode* %135, %struct.ocfs2_dinode* %136)
  %138 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %139 = call i32 @ocfs2_track_lock_refresh(%struct.ocfs2_lock_res* %138)
  br label %140

140:                                              ; preds = %120, %64
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %77
  %142 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %7, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %53, %33, %22
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @mlog_exit(i32 %146)
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_should_refresh_lock_res(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_metadata_cache_purge(i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_extent_map_trunc(%struct.inode*, i32) #1

declare dso_local i64 @ocfs2_meta_lvb_is_trustable(%struct.inode*, %struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_refresh_inode_from_lvb(%struct.inode*) #1

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, i64, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_refresh_inode(%struct.inode*, %struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_track_lock_refresh(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
