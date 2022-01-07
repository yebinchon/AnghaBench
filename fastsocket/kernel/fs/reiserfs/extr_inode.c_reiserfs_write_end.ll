; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.reiserfs_transaction_handle* }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@AOP_FLAG_CONT_EXPAND = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_5__* null, align 8
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@i_pack_on_close_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @reiserfs_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.reiserfs_transaction_handle*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.reiserfs_transaction_handle, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %21 = load %struct.page*, %struct.page** %13, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load i8*, i8** %14, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load i64, i64* @AOP_FLAG_CONT_EXPAND, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %31, %7
  %35 = load %struct.inode*, %struct.inode** %15, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @reiserfs_wait_on_write_block(i32 %37)
  %39 = load %struct.inode*, %struct.inode** %15, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @reiserfs_transaction_running(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %46, align 8
  store %struct.reiserfs_transaction_handle* %47, %struct.reiserfs_transaction_handle** %18, align 8
  br label %49

48:                                               ; preds = %34
  store %struct.reiserfs_transaction_handle* null, %struct.reiserfs_transaction_handle** %18, align 8
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %52 = sub nsw i32 %51, 1
  %53 = and i32 %50, %52
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ult i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %49
  %61 = load %struct.page*, %struct.page** %13, align 8
  %62 = call i32 @PageUptodate(%struct.page* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = load %struct.page*, %struct.page** %13, align 8
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %12, align 4
  %69 = add i32 %67, %68
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add i32 %70, %71
  %73 = call i32 @page_zero_new_buffers(%struct.page* %66, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %65, %49
  %75 = load %struct.page*, %struct.page** %13, align 8
  %76 = call i32 @flush_dcache_page(%struct.page* %75)
  %77 = load %struct.inode*, %struct.inode** %15, align 8
  %78 = load %struct.page*, %struct.page** %13, align 8
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %12, align 4
  %82 = add i32 %80, %81
  %83 = call i32 @reiserfs_commit_page(%struct.inode* %77, %struct.page* %78, i32 %79, i32 %82)
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.inode*, %struct.inode** %15, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %165

92:                                               ; preds = %74
  %93 = load %struct.inode*, %struct.inode** %15, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @reiserfs_write_lock(i32 %95)
  %97 = load %struct.inode*, %struct.inode** %15, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @have_large_tails(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %92
  %103 = load %struct.inode*, %struct.inode** %15, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.inode*, %struct.inode** %15, align 8
  %107 = call i32 @i_block_size(%struct.inode* %106)
  %108 = mul nsw i32 %107, 4
  %109 = icmp sgt i32 %105, %108
  br i1 %109, label %123, label %110

110:                                              ; preds = %102, %92
  %111 = load %struct.inode*, %struct.inode** %15, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @have_small_tails(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %110
  %117 = load %struct.inode*, %struct.inode** %15, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.inode*, %struct.inode** %15, align 8
  %121 = call i32 @i_block_size(%struct.inode* %120)
  %122 = icmp sgt i32 %119, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %116, %102
  %124 = load i32, i32* @i_pack_on_close_mask, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.inode*, %struct.inode** %15, align 8
  %127 = call %struct.TYPE_6__* @REISERFS_I(%struct.inode* %126)
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %125
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %123, %116, %110
  %132 = load %struct.inode*, %struct.inode** %15, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %20, i32 %134, i32 1)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load %struct.inode*, %struct.inode** %15, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @reiserfs_write_unlock(i32 %141)
  br label %203

143:                                              ; preds = %131
  %144 = load %struct.inode*, %struct.inode** %15, align 8
  %145 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %144)
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.inode*, %struct.inode** %15, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.inode*, %struct.inode** %15, align 8
  %150 = call i32 @mark_inode_dirty(%struct.inode* %149)
  %151 = load %struct.inode*, %struct.inode** %15, align 8
  %152 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %20, %struct.inode* %151)
  store i32 1, i32* %17, align 4
  %153 = load %struct.inode*, %struct.inode** %15, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %20, i32 %155, i32 1)
  store i32 %156, i32* %16, align 4
  %157 = load %struct.inode*, %struct.inode** %15, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @reiserfs_write_unlock(i32 %159)
  %161 = load i32, i32* %16, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %143
  br label %203

164:                                              ; preds = %143
  br label %165

165:                                              ; preds = %164, %74
  %166 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %18, align 8
  %167 = icmp ne %struct.reiserfs_transaction_handle* %166, null
  br i1 %167, label %168, label %189

168:                                              ; preds = %165
  %169 = load %struct.inode*, %struct.inode** %15, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @reiserfs_write_lock(i32 %171)
  %173 = load i32, i32* %17, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %168
  %176 = load %struct.inode*, %struct.inode** %15, align 8
  %177 = call i32 @mark_inode_dirty(%struct.inode* %176)
  br label %178

178:                                              ; preds = %175, %168
  %179 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %18, align 8
  %180 = call i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle* %179)
  store i32 %180, i32* %16, align 4
  %181 = load %struct.inode*, %struct.inode** %15, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @reiserfs_write_unlock(i32 %183)
  %185 = load i32, i32* %16, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  br label %190

188:                                              ; preds = %178
  br label %189

189:                                              ; preds = %188, %165
  br label %190

190:                                              ; preds = %224, %189, %187
  %191 = load %struct.page*, %struct.page** %13, align 8
  %192 = call i32 @unlock_page(%struct.page* %191)
  %193 = load %struct.page*, %struct.page** %13, align 8
  %194 = call i32 @page_cache_release(%struct.page* %193)
  %195 = load i32, i32* %16, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %190
  %198 = load i32, i32* %12, align 4
  br label %201

199:                                              ; preds = %190
  %200 = load i32, i32* %16, align 4
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i32 [ %198, %197 ], [ %200, %199 ]
  ret i32 %202

203:                                              ; preds = %163, %138
  %204 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %18, align 8
  %205 = icmp ne %struct.reiserfs_transaction_handle* %204, null
  br i1 %205, label %206, label %224

206:                                              ; preds = %203
  %207 = load %struct.inode*, %struct.inode** %15, align 8
  %208 = getelementptr inbounds %struct.inode, %struct.inode* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @reiserfs_write_lock(i32 %209)
  %211 = load i32, i32* %17, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %206
  %214 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %18, align 8
  %215 = load %struct.inode*, %struct.inode** %15, align 8
  %216 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %214, %struct.inode* %215)
  br label %217

217:                                              ; preds = %213, %206
  %218 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %18, align 8
  %219 = call i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle* %218)
  store i32 %219, i32* %16, align 4
  %220 = load %struct.inode*, %struct.inode** %15, align 8
  %221 = getelementptr inbounds %struct.inode, %struct.inode* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @reiserfs_write_unlock(i32 %222)
  br label %224

224:                                              ; preds = %217, %203
  br label %190
}

declare dso_local i32 @reiserfs_wait_on_write_block(i32) #1

declare dso_local i64 @reiserfs_transaction_running(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @page_zero_new_buffers(%struct.page*, i32, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @reiserfs_commit_page(%struct.inode*, %struct.page*, i32, i32) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i64 @have_large_tails(i32) #1

declare dso_local i32 @i_block_size(%struct.inode*) #1

declare dso_local i64 @have_small_tails(i32) #1

declare dso_local %struct.TYPE_6__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
