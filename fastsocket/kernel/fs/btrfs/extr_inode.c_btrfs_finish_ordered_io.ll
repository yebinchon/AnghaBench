; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_finish_ordered_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_finish_ordered_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_ordered_extent = type { i32, i64, i64, i32, i32, i32, i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.btrfs_root*, i32 }
%struct.btrfs_trans_handle = type { i32* }
%struct.extent_io_tree = type { i32 }
%struct.extent_state = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.extent_io_tree, %struct.btrfs_root* }

@BTRFS_ORDERED_IOERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BTRFS_ORDERED_NOCOW = common dso_local global i32 0, align 4
@BTRFS_ORDERED_COMPRESSED = common dso_local global i32 0, align 4
@BTRFS_ORDERED_PREALLOC = common dso_local global i32 0, align 4
@BTRFS_FILE_EXTENT_REG = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_ordered_extent*)* @btrfs_finish_ordered_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_finish_ordered_io(%struct.btrfs_ordered_extent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_ordered_extent*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.extent_io_tree*, align 8
  %8 = alloca %struct.extent_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.btrfs_ordered_extent* %0, %struct.btrfs_ordered_extent** %3, align 8
  %12 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %13 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %12, i32 0, i32 7
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %4, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  store %struct.btrfs_root* %18, %struct.btrfs_root** %5, align 8
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %6, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store %struct.extent_io_tree* %21, %struct.extent_io_tree** %7, align 8
  store %struct.extent_state* null, %struct.extent_state** %8, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @btrfs_is_free_space_inode(%struct.btrfs_root* %22, %struct.inode* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @BTRFS_ORDERED_IOERR, align 4
  %26 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %27 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %26, i32 0, i32 3
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %252

33:                                               ; preds = %1
  %34 = load i32, i32* @BTRFS_ORDERED_NOCOW, align 4
  %35 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %36 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %35, i32 0, i32 3
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %88

39:                                               ; preds = %33
  %40 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %41 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %40, i32 0, i32 4
  %42 = call i32 @list_empty(i32* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %49 = call i32 @btrfs_ordered_update_i_size(%struct.inode* %47, i32 0, %struct.btrfs_ordered_extent* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %87, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %57 = call %struct.btrfs_trans_handle* @btrfs_join_transaction_nolock(%struct.btrfs_root* %56)
  store %struct.btrfs_trans_handle* %57, %struct.btrfs_trans_handle** %6, align 8
  br label %61

58:                                               ; preds = %52
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %60 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root* %59)
  store %struct.btrfs_trans_handle* %60, %struct.btrfs_trans_handle** %6, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %63 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %67 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %66)
  store i32 %67, i32* %2, align 4
  br label %308

68:                                               ; preds = %61
  %69 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %70 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %74 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %73, i32 0, i32 0
  store i32* %72, i32** %74, align 8
  %75 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %76 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = call i32 @btrfs_update_inode_fallback(%struct.btrfs_trans_handle* %75, %struct.btrfs_root* %76, %struct.inode* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %68
  %82 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %83 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %82, %struct.btrfs_root* %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %68
  br label %87

87:                                               ; preds = %86, %39
  br label %252

88:                                               ; preds = %33
  %89 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %90 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %91 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %94 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %97 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = sub nsw i64 %99, 1
  %101 = call i32 @lock_extent_bits(%struct.extent_io_tree* %89, i64 %92, i64 %100, i32 0, %struct.extent_state** %8)
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %88
  %105 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %106 = call %struct.btrfs_trans_handle* @btrfs_join_transaction_nolock(%struct.btrfs_root* %105)
  store %struct.btrfs_trans_handle* %106, %struct.btrfs_trans_handle** %6, align 8
  br label %110

107:                                              ; preds = %88
  %108 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %109 = call %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root* %108)
  store %struct.btrfs_trans_handle* %109, %struct.btrfs_trans_handle** %6, align 8
  br label %110

110:                                              ; preds = %107, %104
  %111 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %112 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %116 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %115)
  store i32 %116, i32* %10, align 4
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %6, align 8
  br label %237

117:                                              ; preds = %110
  %118 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %119 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %118, i32 0, i32 0
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %123 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %122, i32 0, i32 0
  store i32* %121, i32** %123, align 8
  %124 = load i32, i32* @BTRFS_ORDERED_COMPRESSED, align 4
  %125 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %126 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %125, i32 0, i32 3
  %127 = call i64 @test_bit(i32 %124, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %117
  %130 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %131 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %129, %117
  %134 = load i32, i32* @BTRFS_ORDERED_PREALLOC, align 4
  %135 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %136 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %135, i32 0, i32 3
  %137 = call i64 @test_bit(i32 %134, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %133
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @BUG_ON(i32 %140)
  %142 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %143 = load %struct.inode*, %struct.inode** %4, align 8
  %144 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %145 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %148 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %151 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %149, %152
  %154 = call i32 @btrfs_mark_extent_written(%struct.btrfs_trans_handle* %142, %struct.inode* %143, i64 %146, i64 %153)
  store i32 %154, i32* %10, align 4
  br label %195

155:                                              ; preds = %133
  %156 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %157 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %158 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %157, i32 0, i32 0
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load %struct.btrfs_root*, %struct.btrfs_root** %160, align 8
  %162 = icmp eq %struct.btrfs_root* %156, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @BUG_ON(i32 %163)
  %165 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %166 = load %struct.inode*, %struct.inode** %4, align 8
  %167 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %168 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %171 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %174 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %177 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %180 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @BTRFS_FILE_EXTENT_REG, align 4
  %184 = call i32 @insert_reserved_file_extent(%struct.btrfs_trans_handle* %165, %struct.inode* %166, i64 %169, i32 %172, i32 %175, i64 %178, i64 %181, i32 %182, i32 0, i32 0, i32 %183)
  store i32 %184, i32* %10, align 4
  %185 = load %struct.inode*, %struct.inode** %4, align 8
  %186 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %185)
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %189 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %192 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @unpin_extent_cache(i32* %187, i64 %190, i64 %193)
  br label %195

195:                                              ; preds = %155, %139
  %196 = load i32, i32* %10, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %200 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %199, %struct.btrfs_root* %200, i32 %201)
  br label %237

203:                                              ; preds = %195
  %204 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %205 = load %struct.inode*, %struct.inode** %4, align 8
  %206 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %207 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %210 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %209, i32 0, i32 4
  %211 = call i32 @add_pending_csums(%struct.btrfs_trans_handle* %204, %struct.inode* %205, i64 %208, i32* %210)
  %212 = load %struct.inode*, %struct.inode** %4, align 8
  %213 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %214 = call i32 @btrfs_ordered_update_i_size(%struct.inode* %212, i32 0, %struct.btrfs_ordered_extent* %213)
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %203
  %218 = load i32, i32* @BTRFS_ORDERED_PREALLOC, align 4
  %219 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %220 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %219, i32 0, i32 3
  %221 = call i64 @test_bit(i32 %218, i32* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %236, label %223

223:                                              ; preds = %217, %203
  %224 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %225 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %226 = load %struct.inode*, %struct.inode** %4, align 8
  %227 = call i32 @btrfs_update_inode_fallback(%struct.btrfs_trans_handle* %224, %struct.btrfs_root* %225, %struct.inode* %226)
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %223
  %231 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %232 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %233 = load i32, i32* %10, align 4
  %234 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %231, %struct.btrfs_root* %232, i32 %233)
  br label %237

235:                                              ; preds = %223
  br label %236

236:                                              ; preds = %235, %217
  store i32 0, i32* %10, align 4
  br label %237

237:                                              ; preds = %236, %230, %198, %114
  %238 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %239 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %240 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %243 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %246 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %244, %247
  %249 = sub nsw i64 %248, 1
  %250 = load i32, i32* @GFP_NOFS, align 4
  %251 = call i32 @unlock_extent_cached(%struct.extent_io_tree* %238, i64 %241, i64 %249, %struct.extent_state** %8, i32 %250)
  br label %252

252:                                              ; preds = %237, %87, %30
  %253 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %254 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %255 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %254, i32 0, i32 0
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 0
  %258 = load %struct.btrfs_root*, %struct.btrfs_root** %257, align 8
  %259 = icmp ne %struct.btrfs_root* %253, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %252
  %261 = load %struct.inode*, %struct.inode** %4, align 8
  %262 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %263 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @btrfs_delalloc_release_metadata(%struct.inode* %261, i64 %264)
  br label %266

266:                                              ; preds = %260, %252
  %267 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %268 = icmp ne %struct.btrfs_trans_handle* %267, null
  br i1 %268, label %269, label %281

269:                                              ; preds = %266
  %270 = load i32, i32* %11, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %269
  %273 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %274 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %275 = call i32 @btrfs_end_transaction_nolock(%struct.btrfs_trans_handle* %273, %struct.btrfs_root* %274)
  br label %280

276:                                              ; preds = %269
  %277 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %278 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %279 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %277, %struct.btrfs_root* %278)
  br label %280

280:                                              ; preds = %276, %272
  br label %281

281:                                              ; preds = %280, %266
  %282 = load i32, i32* %10, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %299

284:                                              ; preds = %281
  %285 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %286 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %287 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %290 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %293 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %291, %294
  %296 = sub nsw i64 %295, 1
  %297 = load i32, i32* @GFP_NOFS, align 4
  %298 = call i32 @clear_extent_uptodate(%struct.extent_io_tree* %285, i64 %288, i64 %296, i32* null, i32 %297)
  br label %299

299:                                              ; preds = %284, %281
  %300 = load %struct.inode*, %struct.inode** %4, align 8
  %301 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %302 = call i32 @btrfs_remove_ordered_extent(%struct.inode* %300, %struct.btrfs_ordered_extent* %301)
  %303 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %304 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %303)
  %305 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %3, align 8
  %306 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %305)
  %307 = load i32, i32* %10, align 4
  store i32 %307, i32* %2, align 4
  br label %308

308:                                              ; preds = %299, %65
  %309 = load i32, i32* %2, align 4
  ret i32 %309
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_is_free_space_inode(%struct.btrfs_root*, %struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @btrfs_ordered_update_i_size(%struct.inode*, i32, %struct.btrfs_ordered_extent*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction_nolock(%struct.btrfs_root*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_join_transaction(%struct.btrfs_root*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_update_inode_fallback(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32) #1

declare dso_local i32 @lock_extent_bits(%struct.extent_io_tree*, i64, i64, i32, %struct.extent_state**) #1

declare dso_local i32 @btrfs_mark_extent_written(%struct.btrfs_trans_handle*, %struct.inode*, i64, i64) #1

declare dso_local i32 @insert_reserved_file_extent(%struct.btrfs_trans_handle*, %struct.inode*, i64, i32, i32, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @unpin_extent_cache(i32*, i64, i64) #1

declare dso_local i32 @add_pending_csums(%struct.btrfs_trans_handle*, %struct.inode*, i64, i32*) #1

declare dso_local i32 @unlock_extent_cached(%struct.extent_io_tree*, i64, i64, %struct.extent_state**, i32) #1

declare dso_local i32 @btrfs_delalloc_release_metadata(%struct.inode*, i64) #1

declare dso_local i32 @btrfs_end_transaction_nolock(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @clear_extent_uptodate(%struct.extent_io_tree*, i64, i64, i32*, i32) #1

declare dso_local i32 @btrfs_remove_ordered_extent(%struct.inode*, %struct.btrfs_ordered_extent*) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
