; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_create_new_meta_bhs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_create_new_meta_bhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ocfs2_extent_block = type { %struct.TYPE_4__, i8*, i8*, i32, i32, i32 }
%struct.TYPE_4__ = type { i8* }

@EIO = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_EXTENT_BLOCK_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, i32, %struct.ocfs2_alloc_context*, %struct.buffer_head**)* @ocfs2_create_new_meta_bhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_create_new_meta_bhs(i32* %0, %struct.ocfs2_extent_tree* %1, i32 %2, %struct.ocfs2_alloc_context* %3, %struct.buffer_head** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_alloc_context*, align 8
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_super*, align 8
  %18 = alloca %struct.ocfs2_extent_block*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ocfs2_alloc_context* %3, %struct.ocfs2_alloc_context** %9, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %10, align 8
  %19 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ocfs2_metadata_cache_get_super(i32 %21)
  %23 = call %struct.ocfs2_super* @OCFS2_SB(i32 %22)
  store %struct.ocfs2_super* %23, %struct.ocfs2_super** %17, align 8
  %24 = call i32 (...) @mlog_entry_void()
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %172, %5
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %176

29:                                               ; preds = %25
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @ocfs2_claim_metadata(%struct.ocfs2_super* %30, i32* %31, %struct.ocfs2_alloc_context* %32, i32 %35, i32* %14, i32* %15, i32* %16)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %177

42:                                               ; preds = %29
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %169, %42
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %172

50:                                               ; preds = %44
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %52 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %16, align 4
  %55 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_5__* %53, i32 %54)
  %56 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %56, i64 %58
  store %struct.buffer_head* %55, %struct.buffer_head** %59, align 8
  %60 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %60, i64 %62
  %64 = load %struct.buffer_head*, %struct.buffer_head** %63, align 8
  %65 = icmp eq %struct.buffer_head* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %50
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @mlog_errno(i32 %69)
  br label %177

71:                                               ; preds = %50
  %72 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %73 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %75, i64 %77
  %79 = load %struct.buffer_head*, %struct.buffer_head** %78, align 8
  %80 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %74, %struct.buffer_head* %79)
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %83 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %85, i64 %87
  %89 = load %struct.buffer_head*, %struct.buffer_head** %88, align 8
  %90 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %91 = call i32 @ocfs2_journal_access_eb(i32* %81, i32 %84, %struct.buffer_head* %89, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %71
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @mlog_errno(i32 %95)
  br label %177

97:                                               ; preds = %71
  %98 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %98, i64 %100
  %102 = load %struct.buffer_head*, %struct.buffer_head** %101, align 8
  %103 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %106 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @memset(i64 %104, i32 0, i32 %109)
  %111 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %111, i64 %113
  %115 = load %struct.buffer_head*, %struct.buffer_head** %114, align 8
  %116 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %118, %struct.ocfs2_extent_block** %18, align 8
  %119 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %18, align 8
  %120 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @OCFS2_EXTENT_BLOCK_SIGNATURE, align 4
  %123 = call i32 @strcpy(i32 %121, i32 %122)
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @cpu_to_le64(i32 %124)
  %126 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %18, align 8
  %127 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %129 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @cpu_to_le32(i32 %130)
  %132 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %18, align 8
  %133 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 8
  %134 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %135 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i8* @cpu_to_le16(i32 %136)
  %138 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %18, align 8
  %139 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %138, i32 0, i32 2
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i8* @cpu_to_le16(i32 %140)
  %142 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %18, align 8
  %143 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  %144 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %145 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %144, i32 0, i32 0
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = call i32 @ocfs2_extent_recs_per_eb(%struct.TYPE_5__* %146)
  %148 = call i8* @cpu_to_le16(i32 %147)
  %149 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %18, align 8
  %150 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i8* %148, i8** %151, align 8
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %16, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %16, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %157, i64 %159
  %161 = load %struct.buffer_head*, %struct.buffer_head** %160, align 8
  %162 = call i32 @ocfs2_journal_dirty(i32* %156, %struct.buffer_head* %161)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %97
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @mlog_errno(i32 %166)
  br label %177

168:                                              ; preds = %97
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %13, align 4
  br label %44

172:                                              ; preds = %44
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %11, align 4
  br label %25

176:                                              ; preds = %25
  store i32 0, i32* %12, align 4
  br label %177

177:                                              ; preds = %176, %165, %94, %66, %39
  %178 = load i32, i32* %12, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %200

180:                                              ; preds = %177
  store i32 0, i32* %13, align 4
  br label %181

181:                                              ; preds = %196, %180
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %199

185:                                              ; preds = %181
  %186 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %186, i64 %188
  %190 = load %struct.buffer_head*, %struct.buffer_head** %189, align 8
  %191 = call i32 @brelse(%struct.buffer_head* %190)
  %192 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %192, i64 %194
  store %struct.buffer_head* null, %struct.buffer_head** %195, align 8
  br label %196

196:                                              ; preds = %185
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %13, align 4
  br label %181

199:                                              ; preds = %181
  br label %200

200:                                              ; preds = %199, %177
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @mlog_exit(i32 %201)
  %203 = load i32, i32* %12, align 4
  ret i32 %203
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_claim_metadata(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_eb(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_extent_recs_per_eb(%struct.TYPE_5__*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
