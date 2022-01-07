; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32 }
%struct.btrfs_root = type { i32, %struct.TYPE_3__*, %struct.btrfs_block_rsv* }
%struct.TYPE_3__ = type { %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { i32 }
%struct.btrfs_trans_handle = type { i64, %struct.btrfs_block_rsv* }
%struct.TYPE_4__ = type { i32, %struct.btrfs_root* }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_INODE_ORDERED_DATA_CLOSE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@BTRFS_EXTENT_DATA_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @btrfs_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_truncate(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_block_rsv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  store %struct.btrfs_root* %15, %struct.btrfs_root** %4, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %17 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %10, align 4
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %21 = call i32 @btrfs_calc_trunc_metadata_size(%struct.btrfs_root* %20, i32 1)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @btrfs_truncate_page(i32 %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %254

33:                                               ; preds = %1
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 @btrfs_wait_ordered_range(%struct.inode* %34, i32 %40, i32 -1)
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @btrfs_ordered_update_i_size(%struct.inode* %42, i32 %45, i32* null)
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %48 = call %struct.btrfs_block_rsv* @btrfs_alloc_block_rsv(%struct.btrfs_root* %47)
  store %struct.btrfs_block_rsv* %48, %struct.btrfs_block_rsv** %5, align 8
  %49 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %50 = icmp ne %struct.btrfs_block_rsv* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %33
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %254

54:                                               ; preds = %33
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %57 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %59 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %58, i32 4)
  store %struct.btrfs_trans_handle* %59, %struct.btrfs_trans_handle** %8, align 8
  %60 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %61 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %65 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %64)
  store i32 %65, i32* %7, align 4
  br label %241

66:                                               ; preds = %54
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %68 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @btrfs_block_rsv_migrate(%struct.btrfs_block_rsv* %70, %struct.btrfs_block_rsv* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @BUG_ON(i32 %74)
  %76 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = call i32 @btrfs_orphan_add(%struct.btrfs_trans_handle* %76, %struct.inode* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %66
  %82 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %83 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %84 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %82, %struct.btrfs_root* %83)
  br label %241

85:                                               ; preds = %66
  %86 = load %struct.inode*, %struct.inode** %3, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = load i32, i32* @BTRFS_INODE_ORDERED_DATA_CLOSE, align 4
  %92 = load %struct.inode*, %struct.inode** %3, align 8
  %93 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = call i64 @test_bit(i32 %91, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %99 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %100 = load %struct.inode*, %struct.inode** %3, align 8
  %101 = call i32 @btrfs_add_ordered_operation(%struct.btrfs_trans_handle* %98, %struct.btrfs_root* %99, %struct.inode* %100)
  br label %102

102:                                              ; preds = %97, %90, %85
  br label %103

103:                                              ; preds = %102, %165
  %104 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %105 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @btrfs_block_rsv_refill(%struct.btrfs_root* %104, %struct.btrfs_block_rsv* %105, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @EAGAIN, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %165

116:                                              ; preds = %110
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %7, align 4
  br label %175

118:                                              ; preds = %103
  %119 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %120 = icmp ne %struct.btrfs_trans_handle* %119, null
  br i1 %120, label %131, label %121

121:                                              ; preds = %118
  %122 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %123 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %122, i32 1)
  store %struct.btrfs_trans_handle* %123, %struct.btrfs_trans_handle** %8, align 8
  %124 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %125 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %129 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %128)
  store i32 %129, i32* %7, align 4
  store i32 %129, i32* %6, align 4
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %8, align 8
  br label %175

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130, %118
  %132 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %133 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %134 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %133, i32 0, i32 1
  store %struct.btrfs_block_rsv* %132, %struct.btrfs_block_rsv** %134, align 8
  %135 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %136 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %137 = load %struct.inode*, %struct.inode** %3, align 8
  %138 = load %struct.inode*, %struct.inode** %3, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @BTRFS_EXTENT_DATA_KEY, align 4
  %142 = call i32 @btrfs_truncate_inode_items(%struct.btrfs_trans_handle* %135, %struct.btrfs_root* %136, %struct.inode* %137, i32 %140, i32 %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @EAGAIN, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp ne i32 %143, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %131
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %7, align 4
  br label %175

149:                                              ; preds = %131
  %150 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %151 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %150, i32 0, i32 1
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %155 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %154, i32 0, i32 1
  store %struct.btrfs_block_rsv* %153, %struct.btrfs_block_rsv** %155, align 8
  %156 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %157 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %158 = load %struct.inode*, %struct.inode** %3, align 8
  %159 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %156, %struct.btrfs_root* %157, %struct.inode* %158)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %149
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %7, align 4
  br label %175

164:                                              ; preds = %149
  br label %165

165:                                              ; preds = %164, %115
  %166 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %167 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %9, align 8
  %169 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %170 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %171 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %169, %struct.btrfs_root* %170)
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %8, align 8
  %172 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %173 = load i64, i64* %9, align 8
  %174 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_root* %172, i64 %173)
  br label %103

175:                                              ; preds = %162, %147, %127, %116
  %176 = load i32, i32* %6, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %197

178:                                              ; preds = %175
  %179 = load %struct.inode*, %struct.inode** %3, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp sgt i64 %181, 0
  br i1 %182, label %183, label %197

183:                                              ; preds = %178
  %184 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %185 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %184, i32 0, i32 2
  %186 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %185, align 8
  %187 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %188 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %187, i32 0, i32 1
  store %struct.btrfs_block_rsv* %186, %struct.btrfs_block_rsv** %188, align 8
  %189 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %190 = load %struct.inode*, %struct.inode** %3, align 8
  %191 = call i32 @btrfs_orphan_del(%struct.btrfs_trans_handle* %189, %struct.inode* %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %183
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %7, align 4
  br label %196

196:                                              ; preds = %194, %183
  br label %209

197:                                              ; preds = %178, %175
  %198 = load i32, i32* %6, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %197
  %201 = load %struct.inode*, %struct.inode** %3, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load %struct.inode*, %struct.inode** %3, align 8
  %207 = call i32 @btrfs_orphan_del(%struct.btrfs_trans_handle* null, %struct.inode* %206)
  store i32 %207, i32* %6, align 4
  br label %208

208:                                              ; preds = %205, %200, %197
  br label %209

209:                                              ; preds = %208, %196
  %210 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %211 = icmp ne %struct.btrfs_trans_handle* %210, null
  br i1 %211, label %212, label %240

212:                                              ; preds = %209
  %213 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %214 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %213, i32 0, i32 1
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  %217 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %218 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %217, i32 0, i32 1
  store %struct.btrfs_block_rsv* %216, %struct.btrfs_block_rsv** %218, align 8
  %219 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %220 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %221 = load %struct.inode*, %struct.inode** %3, align 8
  %222 = call i32 @btrfs_update_inode(%struct.btrfs_trans_handle* %219, %struct.btrfs_root* %220, %struct.inode* %221)
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %6, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %212
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %225
  %229 = load i32, i32* %6, align 4
  store i32 %229, i32* %7, align 4
  br label %230

230:                                              ; preds = %228, %225, %212
  %231 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %232 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %9, align 8
  %234 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %235 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %236 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %234, %struct.btrfs_root* %235)
  store i32 %236, i32* %6, align 4
  %237 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %238 = load i64, i64* %9, align 8
  %239 = call i32 @btrfs_btree_balance_dirty(%struct.btrfs_root* %237, i64 %238)
  br label %240

240:                                              ; preds = %230, %209
  br label %241

241:                                              ; preds = %240, %81, %63
  %242 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %243 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %244 = call i32 @btrfs_free_block_rsv(%struct.btrfs_root* %242, %struct.btrfs_block_rsv* %243)
  %245 = load i32, i32* %6, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %241
  %248 = load i32, i32* %7, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %252, label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %6, align 4
  store i32 %251, i32* %7, align 4
  br label %252

252:                                              ; preds = %250, %247, %241
  %253 = load i32, i32* %7, align 4
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %252, %51, %31
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_calc_trunc_metadata_size(%struct.btrfs_root*, i32) #1

declare dso_local i32 @btrfs_truncate_page(i32, i32) #1

declare dso_local i32 @btrfs_wait_ordered_range(%struct.inode*, i32, i32) #1

declare dso_local i32 @btrfs_ordered_update_i_size(%struct.inode*, i32, i32*) #1

declare dso_local %struct.btrfs_block_rsv* @btrfs_alloc_block_rsv(%struct.btrfs_root*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_block_rsv_migrate(%struct.btrfs_block_rsv*, %struct.btrfs_block_rsv*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_orphan_add(%struct.btrfs_trans_handle*, %struct.inode*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @btrfs_add_ordered_operation(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_block_rsv_refill(%struct.btrfs_root*, %struct.btrfs_block_rsv*, i32) #1

declare dso_local i32 @btrfs_truncate_inode_items(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*, i32, i32) #1

declare dso_local i32 @btrfs_update_inode(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_btree_balance_dirty(%struct.btrfs_root*, i64) #1

declare dso_local i32 @btrfs_orphan_del(%struct.btrfs_trans_handle*, %struct.inode*) #1

declare dso_local i32 @btrfs_free_block_rsv(%struct.btrfs_root*, %struct.btrfs_block_rsv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
