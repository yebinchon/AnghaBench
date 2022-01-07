; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_alloc_skeleton.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_alloc_skeleton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_ea_request = type { i32 }
%struct.gfs2_alloc_parms = type { i32 }
%struct.buffer_head = type { i32 }

@RES_DINODE = common dso_local global i64 0, align 8
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i32, i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)*, i8*)* @ea_alloc_skeleton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_alloc_skeleton(%struct.gfs2_inode* %0, %struct.gfs2_ea_request* %1, i32 %2, i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.gfs2_ea_request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.gfs2_alloc_parms, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %7, align 8
  store %struct.gfs2_ea_request* %1, %struct.gfs2_ea_request** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)* %3, i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %12, i32 0, i32 0
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 0
  %19 = call i32 @GFS2_SB(%struct.TYPE_2__* %18)
  %20 = call i32 @gfs2_rindex_update(i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %6, align 4
  br label %102

25:                                               ; preds = %5
  %26 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %27 = call i32 @gfs2_quota_lock_check(%struct.gfs2_inode* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %6, align 4
  br label %102

32:                                               ; preds = %25
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %34 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %33, %struct.gfs2_alloc_parms* %12)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %98

38:                                               ; preds = %32
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %40 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %39, i32 0, i32 0
  %41 = call i32 @GFS2_SB(%struct.TYPE_2__* %40)
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @gfs2_rg_blocks(%struct.gfs2_inode* %44, i32 %45)
  %47 = add nsw i64 %43, %46
  %48 = load i64, i64* @RES_DINODE, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i64, i64* @RES_STATFS, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i64, i64* @RES_QUOTA, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @gfs2_trans_begin(i32 %41, i64 %53, i32 0)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %38
  br label %95

58:                                               ; preds = %38
  %59 = load i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)*, i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)** %10, align 8
  %60 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %61 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %8, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 %59(%struct.gfs2_inode* %60, %struct.gfs2_ea_request* %61, i8* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %90

67:                                               ; preds = %58
  %68 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %69 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %68, %struct.buffer_head** %13)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @CURRENT_TIME, align 4
  %74 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %75 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %78 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %81 = call i32 @gfs2_trans_add_meta(i32 %79, %struct.buffer_head* %80)
  %82 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %82, i32 %85)
  %87 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %88 = call i32 @brelse(%struct.buffer_head* %87)
  br label %89

89:                                               ; preds = %72, %67
  br label %90

90:                                               ; preds = %89, %66
  %91 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %92 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %91, i32 0, i32 0
  %93 = call i32 @GFS2_SB(%struct.TYPE_2__* %92)
  %94 = call i32 @gfs2_trans_end(i32 %93)
  br label %95

95:                                               ; preds = %90, %57
  %96 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %97 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %96)
  br label %98

98:                                               ; preds = %95, %37
  %99 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %100 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %99)
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %98, %30, %23
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @gfs2_rindex_update(i32) #1

declare dso_local i32 @GFS2_SB(%struct.TYPE_2__*) #1

declare dso_local i32 @gfs2_quota_lock_check(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_trans_begin(i32, i64, i32) #1

declare dso_local i64 @gfs2_rg_blocks(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_end(i32) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
