; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_handle_uninitialized_extents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_handle_uninitialized_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ext4_ext_path = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [107 x i8] c"ext4_ext_handle_uninitialized_extents: inode %lu, logicalblock %llu, max_blocks %u, flags %d, allocated %u\00", align 1
@EXT4_GET_BLOCKS_METADATA_NOFAIL = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_DIO_CREATE_EXT = common dso_local global i32 0, align 4
@DIO_AIO_UNWRITTEN = common dso_local global i64 0, align 8
@EXT4_STATE_DIO_UNWRITTEN = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_DIO_CONVERT_EXT = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_UNINIT_EXT = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_CREATE = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_DELALLOC_RESERVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i64, i32, %struct.ext4_ext_path*, i32, i32, %struct.buffer_head*, i64)* @ext4_ext_handle_uninitialized_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_handle_uninitialized_extents(i32* %0, %struct.inode* %1, i64 %2, i32 %3, %struct.ext4_ext_path* %4, i32 %5, i32 %6, %struct.buffer_head* %7, i64 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_ext_path*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.inode* %1, %struct.inode** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.ext4_ext_path* %4, %struct.ext4_ext_path** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.buffer_head* %7, %struct.buffer_head** %17, align 8
  store i64 %8, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %22 = load %struct.inode*, %struct.inode** %11, align 8
  %23 = call %struct.TYPE_6__* @EXT4_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %21, align 8
  %26 = load %struct.inode*, %struct.inode** %11, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @ext_debug(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.inode*, %struct.inode** %11, align 8
  %35 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %36 = call i32 @ext4_ext_show_leaf(%struct.inode* %34, %struct.ext4_ext_path* %35)
  %37 = load i32, i32* @EXT4_GET_BLOCKS_METADATA_NOFAIL, align 4
  %38 = load i32, i32* %15, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @EXT4_GET_BLOCKS_METADATA_NOFAIL, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load i32, i32* @EXT4_GET_BLOCKS_DIO_CREATE_EXT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %9
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.inode*, %struct.inode** %11, align 8
  %49 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @ext4_split_unwritten_extents(i32* %47, %struct.inode* %48, %struct.ext4_ext_path* %49, i64 %50, i32 %51, i32 %52)
  store i32 %53, i32* %19, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %55 = icmp ne %struct.TYPE_5__* %54, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %46
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DIO_AIO_UNWRITTEN, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i64, i64* @DIO_AIO_UNWRITTEN, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.inode*, %struct.inode** %11, align 8
  %67 = call %struct.TYPE_6__* @EXT4_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = call i32 @atomic_inc(i32* %68)
  br label %74

70:                                               ; preds = %56, %46
  %71 = load %struct.inode*, %struct.inode** %11, align 8
  %72 = load i32, i32* @EXT4_STATE_DIO_UNWRITTEN, align 4
  %73 = call i32 @ext4_set_inode_state(%struct.inode* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %62
  br label %143

75:                                               ; preds = %9
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @EXT4_GET_BLOCKS_METADATA_NOFAIL, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = load i32, i32* @EXT4_GET_BLOCKS_DIO_CONVERT_EXT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %75
  %83 = load i32*, i32** %10, align 8
  %84 = load %struct.inode*, %struct.inode** %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %88 = call i32 @ext4_convert_unwritten_extents_dio(i32* %83, %struct.inode* %84, i64 %85, i32 %86, %struct.ext4_ext_path* %87)
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %82
  %92 = load i32*, i32** %10, align 8
  %93 = load %struct.inode*, %struct.inode** %11, align 8
  %94 = call i32 @ext4_update_inode_fsync_trans(i32* %92, %struct.inode* %93, i32 1)
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.inode*, %struct.inode** %11, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @check_eofblocks_fl(i32* %95, %struct.inode* %96, i64 %97, %struct.ext4_ext_path* %98, i32 %99)
  store i32 %100, i32* %20, align 4
  br label %103

101:                                              ; preds = %82
  %102 = load i32, i32* %19, align 4
  store i32 %102, i32* %20, align 4
  br label %103

103:                                              ; preds = %101, %91
  br label %204

104:                                              ; preds = %75
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* @EXT4_GET_BLOCKS_UNINIT_EXT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %181

110:                                              ; preds = %104
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %117 = call i32 @set_buffer_unwritten(%struct.buffer_head* %116)
  br label %184

118:                                              ; preds = %110
  %119 = load i32*, i32** %10, align 8
  %120 = load %struct.inode*, %struct.inode** %11, align 8
  %121 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @ext4_ext_convert_to_initialized(i32* %119, %struct.inode* %120, %struct.ext4_ext_path* %121, i64 %122, i32 %123, i32 %124)
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %19, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %118
  %129 = load i32*, i32** %10, align 8
  %130 = load %struct.inode*, %struct.inode** %11, align 8
  %131 = call i32 @ext4_update_inode_fsync_trans(i32* %129, %struct.inode* %130, i32 1)
  %132 = load i32*, i32** %10, align 8
  %133 = load %struct.inode*, %struct.inode** %11, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @check_eofblocks_fl(i32* %132, %struct.inode* %133, i64 %134, %struct.ext4_ext_path* %135, i32 %136)
  store i32 %137, i32* %20, align 4
  %138 = load i32, i32* %20, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  br label %204

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %142, %74
  %144 = load i32, i32* %19, align 4
  %145 = icmp sle i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32, i32* %19, align 4
  store i32 %147, i32* %20, align 4
  br label %204

148:                                              ; preds = %143
  %149 = load i32, i32* %19, align 4
  store i32 %149, i32* %16, align 4
  br label %150

150:                                              ; preds = %148
  %151 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %152 = call i32 @set_buffer_new(%struct.buffer_head* %151)
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp ugt i32 %153, %154
  br i1 %155, label %156, label %171

156:                                              ; preds = %150
  %157 = load %struct.inode*, %struct.inode** %11, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i64, i64* %18, align 8
  %163 = load i32, i32* %13, align 4
  %164 = zext i32 %163 to i64
  %165 = add nsw i64 %162, %164
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %13, align 4
  %168 = sub i32 %166, %167
  %169 = call i32 @unmap_underlying_metadata_blocks(i32 %161, i64 %165, i32 %168)
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %16, align 4
  br label %171

171:                                              ; preds = %156, %150
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* @EXT4_GET_BLOCKS_DELALLOC_RESERVE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load %struct.inode*, %struct.inode** %11, align 8
  %178 = load i32, i32* %16, align 4
  %179 = call i32 @ext4_da_update_reserve_space(%struct.inode* %177, i32 %178, i32 0)
  br label %180

180:                                              ; preds = %176, %171
  br label %181

181:                                              ; preds = %180, %109
  %182 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %183 = call i32 @set_buffer_mapped(%struct.buffer_head* %182)
  br label %184

184:                                              ; preds = %181, %115
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %13, align 4
  %187 = icmp ugt i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i32, i32* %13, align 4
  store i32 %189, i32* %16, align 4
  br label %190

190:                                              ; preds = %188, %184
  %191 = load %struct.inode*, %struct.inode** %11, align 8
  %192 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %193 = call i32 @ext4_ext_show_leaf(%struct.inode* %191, %struct.ext4_ext_path* %192)
  %194 = load %struct.inode*, %struct.inode** %11, align 8
  %195 = getelementptr inbounds %struct.inode, %struct.inode* %194, i32 0, i32 0
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %200 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 8
  %201 = load i64, i64* %18, align 8
  %202 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %203 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %202, i32 0, i32 0
  store i64 %201, i64* %203, align 8
  br label %204

204:                                              ; preds = %190, %146, %140, %103
  %205 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %206 = icmp ne %struct.ext4_ext_path* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %209 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %208)
  %210 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %211 = call i32 @kfree(%struct.ext4_ext_path* %210)
  br label %212

212:                                              ; preds = %207, %204
  %213 = load i32, i32* %20, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = load i32, i32* %20, align 4
  br label %219

217:                                              ; preds = %212
  %218 = load i32, i32* %16, align 4
  br label %219

219:                                              ; preds = %217, %215
  %220 = phi i32 [ %216, %215 ], [ %218, %217 ]
  ret i32 %220
}

declare dso_local %struct.TYPE_6__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext_debug(i8*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ext4_ext_show_leaf(%struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_split_unwritten_extents(i32*, %struct.inode*, %struct.ext4_ext_path*, i64, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_convert_unwritten_extents_dio(i32*, %struct.inode*, i64, i32, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @check_eofblocks_fl(i32*, %struct.inode*, i64, %struct.ext4_ext_path*, i32) #1

declare dso_local i32 @set_buffer_unwritten(%struct.buffer_head*) #1

declare dso_local i32 @ext4_ext_convert_to_initialized(i32*, %struct.inode*, %struct.ext4_ext_path*, i64, i32, i32) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @unmap_underlying_metadata_blocks(i32, i64, i32) #1

declare dso_local i32 @ext4_da_update_reserve_space(%struct.inode*, i32, i32) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
