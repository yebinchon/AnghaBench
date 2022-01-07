; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_insert_refcount_rec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_insert_refcount_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_refcount_rec = type { i32, i32, i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_refcount_block = type { %struct.ocfs2_refcount_list, i32 }
%struct.ocfs2_refcount_list = type { i64, i64, %struct.ocfs2_refcount_rec* }

@OCFS2_REFCOUNT_TREE_FL = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"insert refcount record start %llu, len %u, count %u to leaf block %llu at index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_refcount_rec*, i32, i32, %struct.ocfs2_alloc_context*)* @ocfs2_insert_refcount_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_insert_refcount_rec(i32* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, %struct.buffer_head* %3, %struct.ocfs2_refcount_rec* %4, i32 %5, i32 %6, %struct.ocfs2_alloc_context* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ocfs2_caching_info*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ocfs2_refcount_rec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_alloc_context*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ocfs2_refcount_block*, align 8
  %19 = alloca %struct.ocfs2_refcount_list*, align 8
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %10, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %12, align 8
  store %struct.ocfs2_refcount_rec* %4, %struct.ocfs2_refcount_rec** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.ocfs2_alloc_context* %7, %struct.ocfs2_alloc_context** %16, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %26, %struct.ocfs2_refcount_block** %18, align 8
  %27 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %18, align 8
  %28 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %27, i32 0, i32 0
  store %struct.ocfs2_refcount_list* %28, %struct.ocfs2_refcount_list** %19, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %20, align 8
  %29 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %18, align 8
  %30 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = load i32, i32* @OCFS2_REFCOUNT_TREE_FL, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %19, align 8
  %37 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %19, align 8
  %40 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %82

43:                                               ; preds = %8
  %44 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %13, align 8
  %45 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @le64_to_cpu(i32 %46)
  store i64 %47, i64* %21, align 8
  %48 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %13, align 8
  %49 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  store i32 %51, i32* %22, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %54 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %56 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %16, align 8
  %57 = call i32 @ocfs2_expand_refcount_tree(i32* %52, %struct.ocfs2_caching_info* %53, %struct.buffer_head* %54, %struct.buffer_head* %55, %struct.ocfs2_alloc_context* %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %43
  %61 = load i32, i32* %17, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %186

63:                                               ; preds = %43
  %64 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %66 = load i64, i64* %21, align 8
  %67 = load i32, i32* %22, align 4
  %68 = call i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info* %64, %struct.buffer_head* %65, i64 %66, i32 %67, i32* null, i32* %14, %struct.buffer_head** %20)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %186

74:                                               ; preds = %63
  %75 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  store %struct.buffer_head* %75, %struct.buffer_head** %12, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %79, %struct.ocfs2_refcount_block** %18, align 8
  %80 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %18, align 8
  %81 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %80, i32 0, i32 0
  store %struct.ocfs2_refcount_list* %81, %struct.ocfs2_refcount_list** %19, align 8
  br label %82

82:                                               ; preds = %74, %8
  %83 = load i32*, i32** %9, align 8
  %84 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %86 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %87 = call i32 @ocfs2_journal_access_rb(i32* %83, %struct.ocfs2_caching_info* %84, %struct.buffer_head* %85, i32 %86)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @mlog_errno(i32 %91)
  br label %186

93:                                               ; preds = %82
  %94 = load i32, i32* %14, align 4
  %95 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %19, align 8
  %96 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @le16_to_cpu(i64 %97)
  %99 = icmp slt i32 %94, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %93
  %101 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %19, align 8
  %102 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %101, i32 0, i32 2
  %103 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %103, i64 %106
  %108 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %19, align 8
  %109 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %108, i32 0, i32 2
  %110 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %110, i64 %112
  %114 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %19, align 8
  %115 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @le16_to_cpu(i64 %116)
  %118 = load i32, i32* %14, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 12
  %122 = trunc i64 %121 to i32
  %123 = call i32 @memmove(%struct.ocfs2_refcount_rec* %107, %struct.ocfs2_refcount_rec* %113, i32 %122)
  br label %124

124:                                              ; preds = %100, %93
  %125 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %13, align 8
  %126 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @le64_to_cpu(i32 %127)
  %129 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %13, align 8
  %130 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @le32_to_cpu(i32 %131)
  %133 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %13, align 8
  %134 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le32_to_cpu(i32 %135)
  %137 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %138 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i64 %128, i32 %132, i32 %136, i64 %139, i32 %140)
  %142 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %19, align 8
  %143 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %142, i32 0, i32 2
  %144 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %144, i64 %146
  %148 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %13, align 8
  %149 = bitcast %struct.ocfs2_refcount_rec* %147 to i8*
  %150 = bitcast %struct.ocfs2_refcount_rec* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 %150, i64 12, i1 false)
  %151 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %19, align 8
  %152 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %151, i32 0, i32 0
  %153 = call i32 @le16_add_cpu(i64* %152, i32 1)
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %124
  %157 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %18, align 8
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @ocfs2_refcount_rec_merge(%struct.ocfs2_refcount_block* %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %124
  %161 = load i32*, i32** %9, align 8
  %162 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %163 = call i32 @ocfs2_journal_dirty(i32* %161, %struct.buffer_head* %162)
  store i32 %163, i32* %17, align 4
  %164 = load i32, i32* %17, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i32, i32* %17, align 4
  %168 = call i32 @mlog_errno(i32 %167)
  br label %186

169:                                              ; preds = %160
  %170 = load i32, i32* %14, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %169
  %173 = load i32*, i32** %9, align 8
  %174 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %10, align 8
  %175 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %176 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %177 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %13, align 8
  %178 = call i32 @ocfs2_adjust_refcount_rec(i32* %173, %struct.ocfs2_caching_info* %174, %struct.buffer_head* %175, %struct.buffer_head* %176, %struct.ocfs2_refcount_rec* %177)
  store i32 %178, i32* %17, align 4
  %179 = load i32, i32* %17, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %172
  %182 = load i32, i32* %17, align 4
  %183 = call i32 @mlog_errno(i32 %182)
  br label %184

184:                                              ; preds = %181, %172
  br label %185

185:                                              ; preds = %184, %169
  br label %186

186:                                              ; preds = %185, %166, %90, %71, %60
  %187 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %188 = call i32 @brelse(%struct.buffer_head* %187)
  %189 = load i32, i32* %17, align 4
  ret i32 %189
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_expand_refcount_tree(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info*, %struct.buffer_head*, i64, i32, i32*, i32*, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_journal_access_rb(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @memmove(%struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32, i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le16_add_cpu(i64*, i32) #1

declare dso_local i32 @ocfs2_refcount_rec_merge(%struct.ocfs2_refcount_block*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_adjust_refcount_rec(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_refcount_rec*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
