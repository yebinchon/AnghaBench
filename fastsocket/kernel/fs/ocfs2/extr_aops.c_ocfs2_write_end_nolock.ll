; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_write_end_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_write_end_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, %struct.TYPE_6__, %struct.TYPE_6__, i32, i32 }
%struct.page = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_write_ctxt = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32*, %struct.page*, %struct.page** }
%struct.TYPE_4__ = type { i64 }
%struct.ocfs2_dinode = type { i32, i32, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_write_end_nolock(%struct.address_space* %0, i32 %1, i32 %2, i32 %3, %struct.page* %4, i8* %5) #0 {
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.ocfs2_super*, align 8
  %19 = alloca %struct.ocfs2_write_ctxt*, align 8
  %20 = alloca %struct.ocfs2_dinode*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.page* %4, %struct.page** %11, align 8
  store i8* %5, i8** %12, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %23, %25
  store i32 %26, i32* %16, align 4
  %27 = load %struct.address_space*, %struct.address_space** %7, align 8
  %28 = getelementptr inbounds %struct.address_space, %struct.address_space* %27, i32 0, i32 0
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %29, %struct.inode** %17, align 8
  %30 = load %struct.inode*, %struct.inode** %17, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.ocfs2_super* @OCFS2_SB(i32 %32)
  store %struct.ocfs2_super* %33, %struct.ocfs2_super** %18, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = bitcast i8* %34 to %struct.ocfs2_write_ctxt*
  store %struct.ocfs2_write_ctxt* %35, %struct.ocfs2_write_ctxt** %19, align 8
  %36 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %37 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %36, i32 0, i32 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %41, %struct.ocfs2_dinode** %20, align 8
  %42 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %43 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %21, align 8
  %45 = load %struct.inode*, %struct.inode** %17, align 8
  %46 = call %struct.TYPE_5__* @OCFS2_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %6
  %53 = load %struct.inode*, %struct.inode** %17, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %57 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %58 = call i32 @ocfs2_write_end_inline(%struct.inode* %53, i32 %54, i32 %55, i32* %10, %struct.ocfs2_dinode* %56, %struct.ocfs2_write_ctxt* %57)
  br label %156

59:                                               ; preds = %6
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ult i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %68 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %67, i32 0, i32 6
  %69 = load %struct.page*, %struct.page** %68, align 8
  %70 = call i32 @PageUptodate(%struct.page* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %72, %66
  %74 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %75 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %74, i32 0, i32 6
  %76 = load %struct.page*, %struct.page** %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %10, align 4
  %79 = add i32 %77, %78
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add i32 %80, %81
  %83 = call i32 @ocfs2_zero_new_buffers(%struct.page* %76, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %73, %59
  %85 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %86 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %85, i32 0, i32 6
  %87 = load %struct.page*, %struct.page** %86, align 8
  %88 = call i32 @flush_dcache_page(%struct.page* %87)
  store i32 0, i32* %13, align 4
  br label %89

89:                                               ; preds = %152, %84
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %92 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %155

95:                                               ; preds = %89
  %96 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %97 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %96, i32 0, i32 7
  %98 = load %struct.page**, %struct.page*** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.page*, %struct.page** %98, i64 %100
  %102 = load %struct.page*, %struct.page** %101, align 8
  store %struct.page* %102, %struct.page** %22, align 8
  %103 = load %struct.page*, %struct.page** %22, align 8
  %104 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %105 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %104, i32 0, i32 6
  %106 = load %struct.page*, %struct.page** %105, align 8
  %107 = icmp eq %struct.page* %103, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %95
  %109 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %110 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %14, align 4
  %112 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %113 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %117 = icmp ugt i32 %115, %116
  br i1 %117, label %126, label %118

118:                                              ; preds = %108
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %121 = icmp ugt i32 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp ult i32 %123, %124
  br label %126

126:                                              ; preds = %122, %118, %108
  %127 = phi i1 [ true, %118 ], [ true, %108 ], [ %125, %122 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @BUG_ON(i32 %128)
  br label %132

130:                                              ; preds = %95
  store i32 0, i32* %14, align 4
  %131 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  store i32 %131, i32* %15, align 4
  br label %132

132:                                              ; preds = %130, %126
  %133 = load %struct.page*, %struct.page** %22, align 8
  %134 = call i64 @page_has_buffers(%struct.page* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %132
  %137 = load %struct.inode*, %struct.inode** %17, align 8
  %138 = call i64 @ocfs2_should_order_data(%struct.inode* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %142 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %141, i32 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.inode*, %struct.inode** %17, align 8
  %145 = call i32 @ocfs2_jbd2_file_inode(i32* %143, %struct.inode* %144)
  br label %146

146:                                              ; preds = %140, %136
  %147 = load %struct.page*, %struct.page** %22, align 8
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @block_commit_write(%struct.page* %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %146, %132
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  br label %89

155:                                              ; preds = %89
  br label %156

156:                                              ; preds = %155, %52
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %8, align 4
  %159 = add i32 %158, %157
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.inode*, %struct.inode** %17, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %160, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %156
  %166 = load %struct.inode*, %struct.inode** %17, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @i_size_write(%struct.inode* %166, i32 %167)
  %169 = load %struct.inode*, %struct.inode** %17, align 8
  %170 = call i32 @mark_inode_dirty(%struct.inode* %169)
  br label %171

171:                                              ; preds = %165, %156
  %172 = load %struct.inode*, %struct.inode** %17, align 8
  %173 = call i32 @ocfs2_inode_sector_count(%struct.inode* %172)
  %174 = load %struct.inode*, %struct.inode** %17, align 8
  %175 = getelementptr inbounds %struct.inode, %struct.inode* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  %176 = load %struct.inode*, %struct.inode** %17, align 8
  %177 = call i64 @i_size_read(%struct.inode* %176)
  %178 = trunc i64 %177 to i32
  %179 = call i8* @cpu_to_le64(i32 %178)
  %180 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %181 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %180, i32 0, i32 4
  store i8* %179, i8** %181, align 8
  %182 = load %struct.inode*, %struct.inode** %17, align 8
  %183 = getelementptr inbounds %struct.inode, %struct.inode* %182, i32 0, i32 1
  %184 = load %struct.inode*, %struct.inode** %17, align 8
  %185 = getelementptr inbounds %struct.inode, %struct.inode* %184, i32 0, i32 2
  %186 = bitcast %struct.TYPE_6__* %185 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %186, i8* align 4 bitcast (%struct.TYPE_6__* @CURRENT_TIME to i8*), i64 8, i1 false)
  %187 = bitcast %struct.TYPE_6__* %183 to i8*
  %188 = bitcast %struct.TYPE_6__* %185 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %187, i8* align 4 %188, i64 8, i1 false)
  %189 = load %struct.inode*, %struct.inode** %17, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i8* @cpu_to_le64(i32 %192)
  %194 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %195 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %194, i32 0, i32 2
  store i8* %193, i8** %195, align 8
  %196 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %197 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %196, i32 0, i32 3
  store i8* %193, i8** %197, align 8
  %198 = load %struct.inode*, %struct.inode** %17, align 8
  %199 = getelementptr inbounds %struct.inode, %struct.inode* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @cpu_to_le32(i32 %201)
  %203 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %204 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %20, align 8
  %206 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %205, i32 0, i32 1
  store i32 %202, i32* %206, align 4
  %207 = load i32*, i32** %21, align 8
  %208 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %209 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %208, i32 0, i32 4
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = call i32 @ocfs2_journal_dirty(i32* %207, %struct.TYPE_4__* %210)
  %212 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %213 = load i32*, i32** %21, align 8
  %214 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %212, i32* %213)
  %215 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %216 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %217 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %216, i32 0, i32 3
  %218 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %215, i32* %217)
  %219 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %220 = call i32 @ocfs2_free_write_ctxt(%struct.ocfs2_write_ctxt* %219)
  %221 = load i32, i32* %10, align 4
  ret i32 %221
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local %struct.TYPE_5__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_write_end_inline(%struct.inode*, i32, i32, i32*, %struct.ocfs2_dinode*, %struct.ocfs2_write_ctxt*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ocfs2_zero_new_buffers(%struct.page*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local i64 @ocfs2_should_order_data(%struct.inode*) #1

declare dso_local i32 @ocfs2_jbd2_file_inode(i32*, %struct.inode*) #1

declare dso_local i32 @block_commit_write(%struct.page*, i32, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_free_write_ctxt(%struct.ocfs2_write_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
