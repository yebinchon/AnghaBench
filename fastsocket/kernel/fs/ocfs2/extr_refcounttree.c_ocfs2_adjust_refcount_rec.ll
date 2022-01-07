; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_adjust_refcount_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_adjust_refcount_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_refcount_rec = type { i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_refcount_block = type { i8*, i8* }
%struct.ocfs2_extent_list = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i8* }

@OCFS2_REFCOUNT_TREE_FL = common dso_local global i32 0, align 4
@OCFS2_32BIT_POS_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_refcount_rec*)* @ocfs2_adjust_refcount_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_adjust_refcount_rec(%struct.TYPE_9__* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, %struct.buffer_head* %3, %struct.ocfs2_refcount_rec* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.ocfs2_caching_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_refcount_rec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_path*, align 8
  %16 = alloca %struct.ocfs2_extent_tree, align 4
  %17 = alloca %struct.ocfs2_refcount_block*, align 8
  %18 = alloca %struct.ocfs2_extent_list*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_refcount_rec* %4, %struct.ocfs2_refcount_rec** %10, align 8
  store i32 0, i32* %11, align 4
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %15, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %22, %struct.ocfs2_refcount_block** %17, align 8
  %23 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %17, align 8
  %24 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @le32_to_cpu(i8* %25)
  %27 = load i32, i32* @OCFS2_REFCOUNT_TREE_FL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  br label %163

31:                                               ; preds = %5
  %32 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %35, %struct.ocfs2_refcount_block** %17, align 8
  %36 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %17, align 8
  %37 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @le32_to_cpu(i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %10, align 8
  %41 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le64_to_cpu(i32 %42)
  %44 = load i32, i32* @OCFS2_32BIT_POS_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  br label %163

50:                                               ; preds = %31
  %51 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %53 = call i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree* %16, %struct.ocfs2_caching_info* %51, %struct.buffer_head* %52)
  %54 = call %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree* %16)
  store %struct.ocfs2_path* %54, %struct.ocfs2_path** %15, align 8
  %55 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %56 = icmp ne %struct.ocfs2_path* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %163

62:                                               ; preds = %50
  %63 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %64 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @ocfs2_find_path(%struct.ocfs2_caching_info* %63, %struct.ocfs2_path* %64, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %163

72:                                               ; preds = %62
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 2
  %78 = call i32 @ocfs2_extend_trans(%struct.TYPE_9__* %73, i64 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  br label %163

84:                                               ; preds = %72
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %88 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %89 = call i32 @ocfs2_journal_access_rb(%struct.TYPE_9__* %85, %struct.ocfs2_caching_info* %86, %struct.buffer_head* %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @mlog_errno(i32 %93)
  br label %163

95:                                               ; preds = %84
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %7, align 8
  %98 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %99 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %98)
  %100 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %101 = call i32 @ocfs2_journal_access_eb(%struct.TYPE_9__* %96, %struct.ocfs2_caching_info* %97, %struct.buffer_head* %99, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @mlog_errno(i32 %105)
  br label %163

107:                                              ; preds = %95
  %108 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %109 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %108)
  store %struct.ocfs2_extent_list* %109, %struct.ocfs2_extent_list** %18, align 8
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %131, %107
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %113 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @le16_to_cpu(i32 %114)
  %116 = icmp slt i32 %111, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %110
  %118 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %119 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @le32_to_cpu(i8* %125)
  %127 = load i32, i32* %14, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  br label %134

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %110

134:                                              ; preds = %129, %110
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %137 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @le16_to_cpu(i32 %138)
  %140 = icmp eq i32 %135, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @BUG_ON(i32 %141)
  %143 = load i32, i32* %13, align 4
  %144 = call i8* @cpu_to_le32(i32 %143)
  %145 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %146 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %145, i32 0, i32 0
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i8* %144, i8** %151, align 8
  %152 = load i32, i32* %13, align 4
  %153 = call i8* @cpu_to_le32(i32 %152)
  %154 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %17, align 8
  %155 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %157 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %158 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %157)
  %159 = call i32 @ocfs2_journal_dirty(%struct.TYPE_9__* %156, %struct.buffer_head* %158)
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %161 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %162 = call i32 @ocfs2_journal_dirty(%struct.TYPE_9__* %160, %struct.buffer_head* %161)
  br label %163

163:                                              ; preds = %134, %104, %92, %81, %69, %57, %49, %30
  %164 = load %struct.ocfs2_path*, %struct.ocfs2_path** %15, align 8
  %165 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %164)
  %166 = load i32, i32* %11, align 4
  ret i32 %166
}

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_find_path(%struct.ocfs2_caching_info*, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @ocfs2_extend_trans(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @ocfs2_journal_access_rb(%struct.TYPE_9__*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32) #1

declare dso_local i32 @ocfs2_journal_access_eb(%struct.TYPE_9__*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32) #1

declare dso_local %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(%struct.TYPE_9__*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
