; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_link_dinode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_link_dinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32 }
%struct.gfs2_inode = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.gfs2_sbd = type { i64 }
%struct.buffer_head = type { i32 }
%struct.gfs2_alloc_parms = type { i64 }

@NO_QUOTA_CHANGE = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@RES_LEAF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.qstr*, %struct.gfs2_inode*, i32)* @link_dinode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_dinode(%struct.gfs2_inode* %0, %struct.qstr* %1, %struct.gfs2_inode* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.gfs2_alloc_parms, align 8
  %13 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store %struct.gfs2_inode* %2, %struct.gfs2_inode** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 1
  %16 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_5__* %15)
  store %struct.gfs2_sbd* %16, %struct.gfs2_sbd** %10, align 8
  %17 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %12, i32 0, i32 0
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %19 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %17, align 8
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %22 = load i32, i32* @NO_QUOTA_CHANGE, align 4
  %23 = load i32, i32* @NO_QUOTA_CHANGE, align 4
  %24 = call i32 @gfs2_quota_lock(%struct.gfs2_inode* %21, i32 %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %5, align 4
  br label %142

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %76

32:                                               ; preds = %29
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %34 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %35 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %39 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @gfs2_quota_check(%struct.gfs2_inode* %33, i32 %37, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %138

46:                                               ; preds = %32
  %47 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %48 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %47, %struct.gfs2_alloc_parms* %12)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %138

52:                                               ; preds = %46
  %53 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %54 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %55 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %58 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %56, %61
  %63 = load i32, i32* @RES_DINODE, align 4
  %64 = mul nsw i32 2, %63
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %62, %65
  %67 = load i64, i64* @RES_STATFS, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i64, i64* @RES_QUOTA, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %53, i64 %70, i32 0)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %52
  br label %135

75:                                               ; preds = %52
  br label %88

76:                                               ; preds = %29
  %77 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %78 = load i64, i64* @RES_LEAF, align 8
  %79 = load i32, i32* @RES_DINODE, align 4
  %80 = mul nsw i32 2, %79
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %78, %81
  %83 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %77, i64 %82, i32 0)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %138

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %75
  %89 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %90 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %89, i32 0, i32 1
  %91 = load %struct.qstr*, %struct.qstr** %7, align 8
  %92 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %93 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %94 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @IF2DT(i32 %96)
  %98 = call i32 @gfs2_dir_add(%struct.TYPE_5__* %90, %struct.qstr* %91, %struct.gfs2_inode* %92, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %88
  br label %132

102:                                              ; preds = %88
  %103 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %104 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %103, %struct.buffer_head** %11)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %132

108:                                              ; preds = %102
  %109 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %110 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @S_ISDIR(i32 %112)
  %114 = icmp ne i64 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 2, i32 1
  %117 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %118 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  %120 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %121 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %124 = call i32 @gfs2_trans_add_meta(i32 %122, %struct.buffer_head* %123)
  %125 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %127 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %125, i32 %128)
  %130 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %131 = call i32 @brelse(%struct.buffer_head* %130)
  store i32 0, i32* %5, align 4
  br label %142

132:                                              ; preds = %107, %101
  %133 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %134 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %133)
  br label %135

135:                                              ; preds = %132, %74
  %136 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %137 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %136)
  br label %138

138:                                              ; preds = %135, %86, %51, %45
  %139 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %140 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %139)
  %141 = load i32, i32* %13, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %138, %108, %27
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_5__*) #1

declare dso_local i32 @gfs2_quota_lock(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @gfs2_quota_check(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_dir_add(%struct.TYPE_5__*, %struct.qstr*, %struct.gfs2_inode*, i32) #1

declare dso_local i32 @IF2DT(i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
