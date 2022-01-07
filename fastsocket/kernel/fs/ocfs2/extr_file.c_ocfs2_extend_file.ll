; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_extend_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_extend_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i64)* @ocfs2_extend_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_extend_file(%struct.inode* %0, %struct.buffer_head* %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %9)
  store %struct.ocfs2_inode_info* %10, %struct.ocfs2_inode_info** %8, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %12 = icmp ne %struct.buffer_head* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %111

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call i64 @i_size_read(%struct.inode* %20)
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %111

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i64 @i_size_read(%struct.inode* %27)
  %29 = icmp slt i64 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %33 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %25
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @OCFS2_SB(i32 %41)
  %43 = call i64 @ocfs2_sparse_alloc(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %100

46:                                               ; preds = %38, %25
  %47 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %48 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %47, i32 0, i32 1
  %49 = call i32 @down_write(i32* %48)
  %50 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %51 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %46
  %57 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @ocfs2_size_fits_inline_data(%struct.buffer_head* %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %63 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %62, i32 0, i32 1
  %64 = call i32 @up_write(i32* %63)
  br label %100

65:                                               ; preds = %56
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %68 = call i32 @ocfs2_convert_inline_data_to_extents(%struct.inode* %66, %struct.buffer_head* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %73 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %72, i32 0, i32 1
  %74 = call i32 @up_write(i32* %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %111

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %46
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @OCFS2_SB(i32 %81)
  %83 = call i64 @ocfs2_sparse_alloc(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @ocfs2_extend_no_holes(%struct.inode* %86, i64 %87, i64 %88)
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %85, %78
  %91 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %92 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %91, i32 0, i32 1
  %93 = call i32 @up_write(i32* %92)
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %111

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %61, %45
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @ocfs2_simple_size_update(%struct.inode* %101, %struct.buffer_head* %102, i64 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @mlog_errno(i32 %108)
  br label %110

110:                                              ; preds = %107, %100
  br label %111

111:                                              ; preds = %110, %96, %71, %24, %18
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @ocfs2_sparse_alloc(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @ocfs2_size_fits_inline_data(%struct.buffer_head*, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ocfs2_convert_inline_data_to_extents(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_extend_no_holes(%struct.inode*, i64, i64) #1

declare dso_local i32 @ocfs2_simple_size_update(%struct.inode*, %struct.buffer_head*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
