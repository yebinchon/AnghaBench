; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_find_new_last_ext_blk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_find_new_last_ext_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_path = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_rec = type { i32 }
%struct.ocfs2_extent_block = type { i32, %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"returning block %llu, (cpos: %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.ocfs2_path*, %struct.buffer_head**)* @ocfs2_find_new_last_ext_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_find_new_last_ext_blk(%struct.inode* %0, i32 %1, %struct.ocfs2_path* %2, %struct.buffer_head** %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_path*, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_extent_rec*, align 8
  %13 = alloca %struct.ocfs2_extent_block*, align 8
  %14 = alloca %struct.ocfs2_extent_list*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %7, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %8, align 8
  store i32 0, i32* %10, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %16 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  %17 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %18 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %131

22:                                               ; preds = %4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %131

30:                                               ; preds = %22
  %31 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %32 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %31)
  store %struct.ocfs2_extent_list* %32, %struct.ocfs2_extent_list** %14, align 8
  %33 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %34 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %41 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %9, align 4
  store %struct.ocfs2_extent_rec* null, %struct.ocfs2_extent_rec** %12, align 8
  %44 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %45 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %44, i32 0, i32 0
  %46 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %45, align 8
  %47 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %46, i64 0
  %48 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %30
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %131

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %58, i32 0, i32 0
  %60 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %59, align 8
  %61 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %60, i64 1
  store %struct.ocfs2_extent_rec* %61, %struct.ocfs2_extent_rec** %12, align 8
  br label %62

62:                                               ; preds = %57, %54
  br label %72

63:                                               ; preds = %30
  %64 = load i32, i32* %9, align 4
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %131

67:                                               ; preds = %63
  %68 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %69 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %68, i32 0, i32 0
  %70 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %69, align 8
  %71 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %70, i64 0
  store %struct.ocfs2_extent_rec* %71, %struct.ocfs2_extent_rec** %12, align 8
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %74 = icmp ne %struct.ocfs2_extent_rec* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %77 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le16_to_cpu(i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = icmp ugt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %131

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %72
  %85 = load %struct.inode*, %struct.inode** %5, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %89 = call i32 @ocfs2_find_cpos_for_left_leaf(i32 %87, %struct.ocfs2_path* %88, i32* %11)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @mlog_errno(i32 %93)
  br label %131

95:                                               ; preds = %84
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = call i32 @INODE_CACHE(%struct.inode* %96)
  %98 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %99 = call i32 @path_root_el(%struct.ocfs2_path* %98)
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @ocfs2_find_leaf(i32 %97, i32 %99, i32 %100, %struct.buffer_head** %15)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @mlog_errno(i32 %105)
  br label %131

107:                                              ; preds = %95
  %108 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %109 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %111, %struct.ocfs2_extent_block** %13, align 8
  %112 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %13, align 8
  %113 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %112, i32 0, i32 1
  store %struct.ocfs2_extent_list* %113, %struct.ocfs2_extent_list** %14, align 8
  %114 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %13, align 8
  %115 = call i32 @OCFS2_IS_VALID_EXTENT_BLOCK(%struct.ocfs2_extent_block* %114)
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = call i32 @BUG_ON(i32 %118)
  %120 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %121 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %120, %struct.buffer_head** %121, align 8
  %122 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %122, align 8
  %124 = call i32 @get_bh(%struct.buffer_head* %123)
  %125 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %13, align 8
  %126 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @le64_to_cpu(i32 %127)
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %128, i32 %129)
  br label %131

131:                                              ; preds = %107, %104, %92, %82, %66, %53, %29, %21
  %132 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %133 = call i32 @brelse(%struct.buffer_head* %132)
  %134 = load i32, i32* %10, align 4
  ret i32 %134
}

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_find_cpos_for_left_leaf(i32, %struct.ocfs2_path*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_find_leaf(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @path_root_el(%struct.ocfs2_path*) #1

declare dso_local i32 @OCFS2_IS_VALID_EXTENT_BLOCK(%struct.ocfs2_extent_block*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
