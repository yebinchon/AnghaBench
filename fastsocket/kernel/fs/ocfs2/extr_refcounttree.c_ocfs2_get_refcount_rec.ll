; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_get_refcount_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_get_refcount_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_refcount_rec = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32, i64 }
%struct.ocfs2_extent_rec = type { i32, i32 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list }
%struct.super_block = type { i32 }
%struct.ocfs2_refcount_block = type { %struct.ocfs2_extent_list, i32 }

@OCFS2_REFCOUNT_TREE_FL = common dso_local global i32 0, align 4
@OCFS2_32BIT_POS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"refcount tree %llu has non zero tree depth in leaf btree tree block %llu\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, %struct.ocfs2_refcount_rec*, i32*, %struct.buffer_head**)* @ocfs2_get_refcount_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info* %0, %struct.buffer_head* %1, i32 %2, i32 %3, %struct.ocfs2_refcount_rec* %4, i32* %5, %struct.buffer_head** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_caching_info*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_refcount_rec*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.buffer_head**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_extent_list*, align 8
  %21 = alloca %struct.ocfs2_extent_rec*, align 8
  %22 = alloca %struct.ocfs2_extent_rec*, align 8
  %23 = alloca %struct.ocfs2_extent_block*, align 8
  %24 = alloca %struct.buffer_head*, align 8
  %25 = alloca %struct.buffer_head*, align 8
  %26 = alloca %struct.super_block*, align 8
  %27 = alloca %struct.ocfs2_refcount_block*, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %9, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.ocfs2_refcount_rec* %4, %struct.ocfs2_refcount_rec** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.buffer_head** %6, %struct.buffer_head*** %15, align 8
  store i32 0, i32* %16, align 4
  store %struct.ocfs2_extent_rec* null, %struct.ocfs2_extent_rec** %22, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %24, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %25, align 8
  %28 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %9, align 8
  %29 = call %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info* %28)
  store %struct.super_block* %29, %struct.super_block** %26, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %33, %struct.ocfs2_refcount_block** %27, align 8
  %34 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %27, align 8
  %35 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = load i32, i32* @OCFS2_REFCOUNT_TREE_FL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %7
  %42 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %9, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %13, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = call i32 @ocfs2_find_refcount_rec_in_rl(%struct.ocfs2_caching_info* %42, %struct.buffer_head* %43, i32 %44, i32 %45, %struct.ocfs2_refcount_rec* %46, i32* %47)
  %49 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %50 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  store %struct.buffer_head* %49, %struct.buffer_head** %50, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %52 = call i32 @get_bh(%struct.buffer_head* %51)
  store i32 0, i32* %8, align 4
  br label %183

53:                                               ; preds = %7
  %54 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %27, align 8
  %55 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %54, i32 0, i32 0
  store %struct.ocfs2_extent_list* %55, %struct.ocfs2_extent_list** %20, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @OCFS2_32BIT_POS_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %19, align 4
  %59 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %60 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %53
  %64 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %9, align 8
  %65 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %66 = load i32, i32* %19, align 4
  %67 = call i32 @ocfs2_find_leaf(%struct.ocfs2_caching_info* %64, %struct.ocfs2_extent_list* %65, i32 %66, %struct.buffer_head** %24)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @mlog_errno(i32 %71)
  br label %179

73:                                               ; preds = %63
  %74 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %77, %struct.ocfs2_extent_block** %23, align 8
  %78 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %23, align 8
  %79 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %78, i32 0, i32 0
  store %struct.ocfs2_extent_list* %79, %struct.ocfs2_extent_list** %20, align 8
  %80 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %81 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %73
  %85 = load %struct.super_block*, %struct.super_block** %26, align 8
  %86 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %9, align 8
  %87 = call i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info* %86)
  %88 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %89 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @ocfs2_error(%struct.super_block* %85, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %87, i64 %90)
  %92 = load i32, i32* @EROFS, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %16, align 4
  br label %179

94:                                               ; preds = %73
  br label %95

95:                                               ; preds = %94, %53
  store i32 0, i32* %18, align 4
  %96 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %97 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @le16_to_cpu(i32 %98)
  %100 = sub nsw i32 %99, 1
  store i32 %100, i32* %17, align 4
  br label %101

101:                                              ; preds = %119, %95
  %102 = load i32, i32* %17, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %101
  %105 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %106 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %105, i32 0, i32 0
  %107 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %106, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %107, i64 %109
  store %struct.ocfs2_extent_rec* %110, %struct.ocfs2_extent_rec** %22, align 8
  %111 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %112 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le32_to_cpu(i32 %113)
  %115 = load i32, i32* %19, align 4
  %116 = icmp ule i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  store i32 1, i32* %18, align 4
  br label %122

118:                                              ; preds = %104
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %17, align 4
  br label %101

122:                                              ; preds = %117, %101
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %157

125:                                              ; preds = %122
  %126 = load i32, i32* %17, align 4
  %127 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %128 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @le16_to_cpu(i32 %129)
  %131 = sub nsw i32 %130, 1
  %132 = icmp slt i32 %126, %131
  br i1 %132, label %133, label %157

133:                                              ; preds = %125
  %134 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %135 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %134, i32 0, i32 0
  %136 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %135, align 8
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %136, i64 %139
  store %struct.ocfs2_extent_rec* %140, %struct.ocfs2_extent_rec** %21, align 8
  %141 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %21, align 8
  %142 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @le32_to_cpu(i32 %143)
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = add i32 %145, %146
  %148 = icmp ult i32 %144, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %133
  %150 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %21, align 8
  %151 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @le32_to_cpu(i32 %152)
  %154 = load i32, i32* %11, align 4
  %155 = sub i32 %153, %154
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %149, %133
  br label %157

157:                                              ; preds = %156, %125, %122
  %158 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %9, align 8
  %159 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %22, align 8
  %160 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @le64_to_cpu(i32 %161)
  %163 = call i32 @ocfs2_read_refcount_block(%struct.ocfs2_caching_info* %158, i32 %162, %struct.buffer_head** %25)
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %157
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @mlog_errno(i32 %167)
  br label %179

169:                                              ; preds = %157
  %170 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %9, align 8
  %171 = load %struct.buffer_head*, %struct.buffer_head** %25, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %13, align 8
  %175 = load i32*, i32** %14, align 8
  %176 = call i32 @ocfs2_find_refcount_rec_in_rl(%struct.ocfs2_caching_info* %170, %struct.buffer_head* %171, i32 %172, i32 %173, %struct.ocfs2_refcount_rec* %174, i32* %175)
  %177 = load %struct.buffer_head*, %struct.buffer_head** %25, align 8
  %178 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  store %struct.buffer_head* %177, %struct.buffer_head** %178, align 8
  br label %179

179:                                              ; preds = %169, %166, %84, %70
  %180 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %181 = call i32 @brelse(%struct.buffer_head* %180)
  %182 = load i32, i32* %16, align 4
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %179, %41
  %184 = load i32, i32* %8, align 4
  ret i32 %184
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_find_refcount_rec_in_rl(%struct.ocfs2_caching_info*, %struct.buffer_head*, i32, i32, %struct.ocfs2_refcount_rec*, i32*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_find_leaf(%struct.ocfs2_caching_info*, %struct.ocfs2_extent_list*, i32, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_error(%struct.super_block*, i8*, i64, i64) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_read_refcount_block(%struct.ocfs2_caching_info*, i32, %struct.buffer_head**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
