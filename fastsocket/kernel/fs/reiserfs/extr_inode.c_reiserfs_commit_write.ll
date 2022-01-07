; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_commit_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_commit_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.reiserfs_transaction_handle* }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.file = type { i32 }
%struct.page = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_5__* null, align 8
@i_pack_on_close_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_commit_write(%struct.file* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.reiserfs_transaction_handle*, align 8
  %15 = alloca %struct.reiserfs_transaction_handle, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.page*, %struct.page** %7, align 8
  %17 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %10, align 8
  %21 = load %struct.page*, %struct.page** %7, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %25 = shl i64 %23, %24
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  store i64 %28, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.reiserfs_transaction_handle* null, %struct.reiserfs_transaction_handle** %14, align 8
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @reiserfs_wait_on_write_block(i32 %31)
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @reiserfs_transaction_running(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %40, align 8
  store %struct.reiserfs_transaction_handle* %41, %struct.reiserfs_transaction_handle** %14, align 8
  br label %42

42:                                               ; preds = %38, %4
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = load %struct.page*, %struct.page** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @reiserfs_commit_page(%struct.inode* %43, %struct.page* %44, i32 %45, i32 %46)
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %128

53:                                               ; preds = %42
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @reiserfs_write_lock(i32 %56)
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @have_large_tails(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %53
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = call i32 @i_block_size(%struct.inode* %67)
  %69 = mul nsw i32 %68, 4
  %70 = sext i32 %69 to i64
  %71 = icmp sgt i64 %66, %70
  br i1 %71, label %86, label %72

72:                                               ; preds = %63, %53
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @have_small_tails(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.inode*, %struct.inode** %10, align 8
  %83 = call i32 @i_block_size(%struct.inode* %82)
  %84 = sext i32 %83 to i64
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %78, %63
  %87 = load i32, i32* @i_pack_on_close_mask, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = call %struct.TYPE_6__* @REISERFS_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %88
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %86, %78, %72
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %15, i32 %97, i32 1)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.inode*, %struct.inode** %10, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @reiserfs_write_unlock(i32 %104)
  br label %155

106:                                              ; preds = %94
  %107 = load %struct.inode*, %struct.inode** %10, align 8
  %108 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %107)
  %109 = load i64, i64* %11, align 8
  %110 = load %struct.inode*, %struct.inode** %10, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.inode*, %struct.inode** %10, align 8
  %113 = call i32 @mark_inode_dirty(%struct.inode* %112)
  %114 = load %struct.inode*, %struct.inode** %10, align 8
  %115 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %15, %struct.inode* %114)
  store i32 1, i32* %13, align 4
  %116 = load %struct.inode*, %struct.inode** %10, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %15, i32 %118, i32 1)
  store i32 %119, i32* %12, align 4
  %120 = load %struct.inode*, %struct.inode** %10, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @reiserfs_write_unlock(i32 %122)
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %106
  br label %155

127:                                              ; preds = %106
  br label %128

128:                                              ; preds = %127, %42
  %129 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %14, align 8
  %130 = icmp ne %struct.reiserfs_transaction_handle* %129, null
  br i1 %130, label %131, label %152

131:                                              ; preds = %128
  %132 = load %struct.inode*, %struct.inode** %10, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @reiserfs_write_lock(i32 %134)
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %131
  %139 = load %struct.inode*, %struct.inode** %10, align 8
  %140 = call i32 @mark_inode_dirty(%struct.inode* %139)
  br label %141

141:                                              ; preds = %138, %131
  %142 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %14, align 8
  %143 = call i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle* %142)
  store i32 %143, i32* %12, align 4
  %144 = load %struct.inode*, %struct.inode** %10, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @reiserfs_write_unlock(i32 %146)
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  br label %153

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151, %128
  br label %153

153:                                              ; preds = %152, %150
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %5, align 4
  br label %178

155:                                              ; preds = %126, %101
  %156 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %14, align 8
  %157 = icmp ne %struct.reiserfs_transaction_handle* %156, null
  br i1 %157, label %158, label %176

158:                                              ; preds = %155
  %159 = load %struct.inode*, %struct.inode** %10, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @reiserfs_write_lock(i32 %161)
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %158
  %166 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %14, align 8
  %167 = load %struct.inode*, %struct.inode** %10, align 8
  %168 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %166, %struct.inode* %167)
  br label %169

169:                                              ; preds = %165, %158
  %170 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %14, align 8
  %171 = call i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle* %170)
  store i32 %171, i32* %12, align 4
  %172 = load %struct.inode*, %struct.inode** %10, align 8
  %173 = getelementptr inbounds %struct.inode, %struct.inode* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @reiserfs_write_unlock(i32 %174)
  br label %176

176:                                              ; preds = %169, %155
  %177 = load i32, i32* %12, align 4
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %176, %153
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @reiserfs_wait_on_write_block(i32) #1

declare dso_local i64 @reiserfs_transaction_running(i32) #1

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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
