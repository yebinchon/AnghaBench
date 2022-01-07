; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_delete_empty_dnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_delete_empty_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i8*, i32 }
%struct.hpfs_inode_info = type { i8* }
%struct.quad_buffer_head = type { i32 }
%struct.dnode = type { i32, i32, i8* }
%struct.hpfs_dirent = type { i32, i32, i32, i32, i32 }
%struct.fnode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.buffer_head = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"delete_empty_dnode\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"delete_empty_dnode: root dnode %08x is empty\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"bad pointer to fnode, dnode %08x, pointing to %08x, should be %08lx\00", align 1
@hpfs_pos_subst = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"delete_empty_dnode: pointer to dnode %08x not found in dnode %08x\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"delete_empty_dnode: dnode %08x, first_free == %03x\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"HPFS: out of memory for dtree balancing\0A\00", align 1
@hpfs_pos_del = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"delete_empty_dnode: empty dnode %08x\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"HPFS: warning: unbalanced dnode tree, see hpfs.txt 4 more info\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"HPFS: warning: terminating balancing operation\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"HPFS: warning: goin'on\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i8*)* @delete_empty_dnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_empty_dnode(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hpfs_inode_info*, align 8
  %6 = alloca %struct.quad_buffer_head, align 4
  %7 = alloca %struct.dnode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hpfs_dirent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hpfs_dirent*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.fnode*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.dnode*, align 8
  %20 = alloca %struct.quad_buffer_head, align 4
  %21 = alloca %struct.dnode*, align 8
  %22 = alloca %struct.quad_buffer_head, align 4
  %23 = alloca %struct.hpfs_dirent*, align 8
  %24 = alloca %struct.hpfs_dirent*, align 8
  %25 = alloca %struct.dnode*, align 8
  %26 = alloca %struct.quad_buffer_head, align 4
  %27 = alloca %struct.hpfs_dirent*, align 8
  %28 = alloca %struct.hpfs_dirent*, align 8
  %29 = alloca %struct.dnode*, align 8
  %30 = alloca %struct.quad_buffer_head, align 4
  %31 = alloca i8*, align 8
  %32 = alloca %struct.hpfs_dirent*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i8* %1, i8** %4, align 8
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %33)
  store %struct.hpfs_inode_info* %34, %struct.hpfs_inode_info** %5, align 8
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %629, %420, %409, %2
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @hpfs_stop_cycles(i32 %38, i8* %39, i32* %13, i32* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %648

43:                                               ; preds = %35
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call %struct.dnode* @hpfs_map_dnode(i32 %46, i8* %47, %struct.quad_buffer_head* %6)
  store %struct.dnode* %48, %struct.dnode** %7, align 8
  %49 = icmp ne %struct.dnode* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %648

51:                                               ; preds = %43
  %52 = load %struct.dnode*, %struct.dnode** %7, align 8
  %53 = getelementptr inbounds %struct.dnode, %struct.dnode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 56
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %646

57:                                               ; preds = %51
  %58 = load %struct.dnode*, %struct.dnode** %7, align 8
  %59 = getelementptr inbounds %struct.dnode, %struct.dnode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 52
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.dnode*, %struct.dnode** %7, align 8
  %64 = getelementptr inbounds %struct.dnode, %struct.dnode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 56
  br i1 %66, label %67, label %308

67:                                               ; preds = %62, %57
  %68 = load %struct.dnode*, %struct.dnode** %7, align 8
  %69 = getelementptr inbounds %struct.dnode, %struct.dnode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %16, align 4
  %71 = load %struct.dnode*, %struct.dnode** %7, align 8
  %72 = getelementptr inbounds %struct.dnode, %struct.dnode* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %9, align 8
  %74 = load %struct.dnode*, %struct.dnode** %7, align 8
  %75 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %74)
  store %struct.hpfs_dirent* %75, %struct.hpfs_dirent** %12, align 8
  %76 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %77 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %82 = call i8* @de_down_pointer(%struct.hpfs_dirent* %81)
  br label %84

83:                                               ; preds = %67
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi i8* [ %82, %80 ], [ null, %83 ]
  store i8* %85, i8** %8, align 8
  %86 = load %struct.inode*, %struct.inode** %3, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call %struct.TYPE_6__* @hpfs_sb(i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %84
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i8*, i8** %8, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load %struct.inode*, %struct.inode** %3, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 (i32, i8*, i8*, ...) @hpfs_error(i32 %102, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %103)
  br label %646

105:                                              ; preds = %96, %93
  br label %106

106:                                              ; preds = %105, %84
  %107 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  %108 = load %struct.inode*, %struct.inode** %3, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = call i32 @hpfs_free_dnode(i32 %110, i8* %111)
  %113 = load %struct.inode*, %struct.inode** %3, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 2048
  store i32 %116, i32* %114, align 8
  %117 = load %struct.inode*, %struct.inode** %3, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 4
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %194

123:                                              ; preds = %106
  %124 = load %struct.inode*, %struct.inode** %3, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call %struct.TYPE_6__* @hpfs_sb(i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %123
  %132 = load i8*, i8** %9, align 8
  %133 = load %struct.inode*, %struct.inode** %3, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %132, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %131
  %138 = load %struct.inode*, %struct.inode** %3, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i8*, i8** %4, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = load %struct.inode*, %struct.inode** %3, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = ptrtoint i8* %145 to i64
  %147 = call i32 (i32, i8*, i8*, ...) @hpfs_error(i32 %140, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %141, i8* %142, i64 %146)
  br label %648

148:                                              ; preds = %131
  br label %149

149:                                              ; preds = %148, %123
  %150 = load %struct.inode*, %struct.inode** %3, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = call %struct.dnode* @hpfs_map_dnode(i32 %152, i8* %153, %struct.quad_buffer_head* %20)
  store %struct.dnode* %154, %struct.dnode** %19, align 8
  %155 = icmp ne %struct.dnode* %154, null
  br i1 %155, label %156, label %164

156:                                              ; preds = %149
  %157 = load i8*, i8** %9, align 8
  %158 = load %struct.dnode*, %struct.dnode** %19, align 8
  %159 = getelementptr inbounds %struct.dnode, %struct.dnode* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  %160 = load %struct.dnode*, %struct.dnode** %19, align 8
  %161 = getelementptr inbounds %struct.dnode, %struct.dnode* %160, i32 0, i32 1
  store i32 1, i32* %161, align 4
  %162 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %20)
  %163 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %20)
  br label %164

164:                                              ; preds = %156, %149
  %165 = load %struct.inode*, %struct.inode** %3, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = call %struct.fnode* @hpfs_map_fnode(i32 %167, i8* %168, %struct.buffer_head** %18)
  store %struct.fnode* %169, %struct.fnode** %17, align 8
  %170 = icmp ne %struct.fnode* %169, null
  br i1 %170, label %171, label %183

171:                                              ; preds = %164
  %172 = load i8*, i8** %8, align 8
  %173 = load %struct.fnode*, %struct.fnode** %17, align 8
  %174 = getelementptr inbounds %struct.fnode, %struct.fnode* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  store i8* %172, i8** %178, align 8
  %179 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %180 = call i32 @mark_buffer_dirty(%struct.buffer_head* %179)
  %181 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %182 = call i32 @brelse(%struct.buffer_head* %181)
  br label %183

183:                                              ; preds = %171, %164
  %184 = load i8*, i8** %8, align 8
  %185 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %5, align 8
  %186 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  %187 = load %struct.inode*, %struct.inode** %3, align 8
  %188 = load i32, i32* @hpfs_pos_subst, align 4
  %189 = load i8*, i8** %4, align 8
  %190 = ptrtoint i8* %189 to i32
  %191 = shl i32 %190, 4
  %192 = or i32 %191, 1
  %193 = call i32 @for_all_poss(%struct.inode* %187, i32 %188, i32 %192, i32 12)
  br label %648

194:                                              ; preds = %106
  %195 = load %struct.inode*, %struct.inode** %3, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load i8*, i8** %9, align 8
  %199 = call %struct.dnode* @hpfs_map_dnode(i32 %197, i8* %198, %struct.quad_buffer_head* %6)
  store %struct.dnode* %199, %struct.dnode** %7, align 8
  %200 = icmp ne %struct.dnode* %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %194
  br label %648

202:                                              ; preds = %194
  store i32 1, i32* %11, align 4
  %203 = load %struct.dnode*, %struct.dnode** %7, align 8
  %204 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %203)
  store %struct.hpfs_dirent* %204, %struct.hpfs_dirent** %15, align 8
  %205 = load %struct.dnode*, %struct.dnode** %7, align 8
  %206 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %205)
  store %struct.hpfs_dirent* %206, %struct.hpfs_dirent** %12, align 8
  br label %207

207:                                              ; preds = %224, %202
  %208 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %209 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %15, align 8
  %210 = icmp ult %struct.hpfs_dirent* %208, %209
  br i1 %210, label %211, label %229

211:                                              ; preds = %207
  %212 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %213 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %211
  %217 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %218 = call i8* @de_down_pointer(%struct.hpfs_dirent* %217)
  %219 = load i8*, i8** %4, align 8
  %220 = icmp eq i8* %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %236

222:                                              ; preds = %216
  br label %223

223:                                              ; preds = %222, %211
  br label %224

224:                                              ; preds = %223
  %225 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %226 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %225)
  store %struct.hpfs_dirent* %226, %struct.hpfs_dirent** %12, align 8
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %11, align 4
  br label %207

229:                                              ; preds = %207
  %230 = load %struct.inode*, %struct.inode** %3, align 8
  %231 = getelementptr inbounds %struct.inode, %struct.inode* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load i8*, i8** %4, align 8
  %234 = load i8*, i8** %9, align 8
  %235 = call i32 (i32, i8*, i8*, ...) @hpfs_error(i32 %232, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i8* %233, i8* %234)
  br label %646

236:                                              ; preds = %221
  %237 = load %struct.inode*, %struct.inode** %3, align 8
  %238 = load i32, i32* @hpfs_pos_subst, align 4
  %239 = load i8*, i8** %4, align 8
  %240 = ptrtoint i8* %239 to i32
  %241 = shl i32 %240, 4
  %242 = or i32 %241, 1
  %243 = load i8*, i8** %9, align 8
  %244 = ptrtoint i8* %243 to i32
  %245 = shl i32 %244, 4
  %246 = load i32, i32* %11, align 4
  %247 = or i32 %245, %246
  %248 = call i32 @for_all_poss(%struct.inode* %237, i32 %238, i32 %242, i32 %247)
  %249 = load i8*, i8** %8, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %283, label %251

251:                                              ; preds = %236
  %252 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %253 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %252, i32 0, i32 0
  store i32 0, i32* %253, align 4
  %254 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %255 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = sub nsw i32 %256, 4
  store i32 %257, i32* %255, align 4
  %258 = load %struct.dnode*, %struct.dnode** %7, align 8
  %259 = getelementptr inbounds %struct.dnode, %struct.dnode* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sub nsw i32 %260, 4
  store i32 %261, i32* %259, align 8
  %262 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %263 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %262)
  %264 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %265 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %264)
  %266 = bitcast %struct.hpfs_dirent* %265 to i8*
  %267 = getelementptr inbounds i8, i8* %266, i64 4
  %268 = load %struct.dnode*, %struct.dnode** %7, align 8
  %269 = bitcast %struct.dnode* %268 to i8*
  %270 = load %struct.dnode*, %struct.dnode** %7, align 8
  %271 = getelementptr inbounds %struct.dnode, %struct.dnode* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, i8* %269, i64 %273
  %275 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %276 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %275)
  %277 = bitcast %struct.hpfs_dirent* %276 to i8*
  %278 = ptrtoint i8* %274 to i64
  %279 = ptrtoint i8* %277 to i64
  %280 = sub i64 %278, %279
  %281 = trunc i64 %280 to i32
  %282 = call i32 @memmove(%struct.hpfs_dirent* %263, i8* %267, i32 %281)
  br label %307

283:                                              ; preds = %236
  %284 = load i8*, i8** %8, align 8
  %285 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %286 = bitcast %struct.hpfs_dirent* %285 to i8*
  %287 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %288 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr i8, i8* %286, i64 %290
  %292 = getelementptr i8, i8* %291, i64 -4
  %293 = bitcast i8* %292 to i8**
  store i8* %284, i8** %293, align 8
  %294 = load %struct.inode*, %struct.inode** %3, align 8
  %295 = getelementptr inbounds %struct.inode, %struct.inode* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = load i8*, i8** %8, align 8
  %298 = call %struct.dnode* @hpfs_map_dnode(i32 %296, i8* %297, %struct.quad_buffer_head* %22)
  store %struct.dnode* %298, %struct.dnode** %21, align 8
  %299 = icmp ne %struct.dnode* %298, null
  br i1 %299, label %300, label %306

300:                                              ; preds = %283
  %301 = load i8*, i8** %9, align 8
  %302 = load %struct.dnode*, %struct.dnode** %21, align 8
  %303 = getelementptr inbounds %struct.dnode, %struct.dnode* %302, i32 0, i32 2
  store i8* %301, i8** %303, align 8
  %304 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %22)
  %305 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %22)
  br label %306

306:                                              ; preds = %300, %283
  br label %307

307:                                              ; preds = %306, %251
  br label %317

308:                                              ; preds = %62
  %309 = load %struct.inode*, %struct.inode** %3, align 8
  %310 = getelementptr inbounds %struct.inode, %struct.inode* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = load i8*, i8** %4, align 8
  %313 = load %struct.dnode*, %struct.dnode** %7, align 8
  %314 = getelementptr inbounds %struct.dnode, %struct.dnode* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = call i32 (i32, i8*, i8*, ...) @hpfs_error(i32 %311, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %312, i32 %315)
  br label %646

317:                                              ; preds = %307
  %318 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %319 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %415, label %322

322:                                              ; preds = %317
  %323 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %324 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %323)
  store %struct.hpfs_dirent* %324, %struct.hpfs_dirent** %23, align 8
  %325 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %23, align 8
  %326 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %322
  br label %644

330:                                              ; preds = %322
  %331 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %23, align 8
  %332 = call i8* @de_down_pointer(%struct.hpfs_dirent* %331)
  store i8* %332, i8** %10, align 8
  %333 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %334 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @GFP_NOFS, align 4
  %337 = call %struct.hpfs_dirent* @kmalloc(i32 %335, i32 %336)
  store %struct.hpfs_dirent* %337, %struct.hpfs_dirent** %24, align 8
  %338 = icmp ne %struct.hpfs_dirent* %337, null
  br i1 %338, label %341, label %339

339:                                              ; preds = %330
  %340 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %644

341:                                              ; preds = %330
  %342 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %343 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %344 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %345 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @memcpy(%struct.hpfs_dirent* %342, %struct.hpfs_dirent* %343, i32 %346)
  %348 = load %struct.inode*, %struct.inode** %3, align 8
  %349 = getelementptr inbounds %struct.inode, %struct.inode* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.dnode*, %struct.dnode** %7, align 8
  %352 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %353 = call i32 @hpfs_delete_de(i32 %350, %struct.dnode* %351, %struct.hpfs_dirent* %352)
  %354 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %6)
  %355 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  %356 = load %struct.inode*, %struct.inode** %3, align 8
  %357 = load i32, i32* @hpfs_pos_subst, align 4
  %358 = load i8*, i8** %9, align 8
  %359 = ptrtoint i8* %358 to i32
  %360 = shl i32 %359, 4
  %361 = load i32, i32* %11, align 4
  %362 = or i32 %360, %361
  %363 = call i32 @for_all_poss(%struct.inode* %356, i32 %357, i32 %362, i32 4)
  %364 = load %struct.inode*, %struct.inode** %3, align 8
  %365 = load i32, i32* @hpfs_pos_del, align 4
  %366 = load i8*, i8** %9, align 8
  %367 = ptrtoint i8* %366 to i32
  %368 = shl i32 %367, 4
  %369 = load i32, i32* %11, align 4
  %370 = or i32 %368, %369
  %371 = call i32 @for_all_poss(%struct.inode* %364, i32 %365, i32 %370, i32 1)
  %372 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %373 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %391

376:                                              ; preds = %341
  %377 = load %struct.inode*, %struct.inode** %3, align 8
  %378 = getelementptr inbounds %struct.inode, %struct.inode* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %381 = call i8* @de_down_pointer(%struct.hpfs_dirent* %380)
  %382 = call %struct.dnode* @hpfs_map_dnode(i32 %379, i8* %381, %struct.quad_buffer_head* %26)
  store %struct.dnode* %382, %struct.dnode** %25, align 8
  %383 = icmp ne %struct.dnode* %382, null
  br i1 %383, label %384, label %390

384:                                              ; preds = %376
  %385 = load i8*, i8** %10, align 8
  %386 = load %struct.dnode*, %struct.dnode** %25, align 8
  %387 = getelementptr inbounds %struct.dnode, %struct.dnode* %386, i32 0, i32 2
  store i8* %385, i8** %387, align 8
  %388 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %26)
  %389 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %26)
  br label %390

390:                                              ; preds = %384, %376
  br label %391

391:                                              ; preds = %390, %341
  %392 = load %struct.inode*, %struct.inode** %3, align 8
  %393 = load i8*, i8** %10, align 8
  %394 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %395 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %398 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %401 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %402 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %408

405:                                              ; preds = %391
  %406 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %407 = call i8* @de_down_pointer(%struct.hpfs_dirent* %406)
  br label %409

408:                                              ; preds = %391
  br label %409

409:                                              ; preds = %408, %405
  %410 = phi i8* [ %407, %405 ], [ null, %408 ]
  %411 = call i32 @hpfs_add_to_dnode(%struct.inode* %392, i8* %393, i32 %396, i32 %399, %struct.hpfs_dirent* %400, i8* %410)
  %412 = load i8*, i8** %9, align 8
  store i8* %412, i8** %4, align 8
  %413 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %24, align 8
  %414 = call i32 @kfree(%struct.hpfs_dirent* %413)
  br label %35

415:                                              ; preds = %317
  %416 = load %struct.dnode*, %struct.dnode** %7, align 8
  %417 = call %struct.hpfs_dirent* @dnode_pre_last_de(%struct.dnode* %416)
  store %struct.hpfs_dirent* %417, %struct.hpfs_dirent** %27, align 8
  %418 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %419 = icmp ne %struct.hpfs_dirent* %418, null
  br i1 %419, label %429, label %420

420:                                              ; preds = %415
  %421 = load %struct.inode*, %struct.inode** %3, align 8
  %422 = getelementptr inbounds %struct.inode, %struct.inode* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 8
  %424 = load i8*, i8** %9, align 8
  %425 = call i32 (i32, i8*, i8*, ...) @hpfs_error(i32 %423, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %424)
  %426 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %6)
  %427 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  %428 = load i8*, i8** %9, align 8
  store i8* %428, i8** %4, align 8
  br label %35

429:                                              ; preds = %415
  %430 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %431 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %435, label %434

434:                                              ; preds = %429
  br label %644

435:                                              ; preds = %429
  %436 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %437 = call i8* @de_down_pointer(%struct.hpfs_dirent* %436)
  store i8* %437, i8** %10, align 8
  %438 = load %struct.inode*, %struct.inode** %3, align 8
  %439 = getelementptr inbounds %struct.inode, %struct.inode* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 8
  %441 = load i8*, i8** %10, align 8
  %442 = call %struct.dnode* @hpfs_map_dnode(i32 %440, i8* %441, %struct.quad_buffer_head* %30)
  store %struct.dnode* %442, %struct.dnode** %29, align 8
  %443 = icmp ne %struct.dnode* %442, null
  br i1 %443, label %444, label %535

444:                                              ; preds = %435
  %445 = load %struct.dnode*, %struct.dnode** %29, align 8
  %446 = call %struct.hpfs_dirent* @dnode_last_de(%struct.dnode* %445)
  store %struct.hpfs_dirent* %446, %struct.hpfs_dirent** %32, align 8
  %447 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %448 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %454

451:                                              ; preds = %444
  %452 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %453 = call i8* @de_down_pointer(%struct.hpfs_dirent* %452)
  br label %455

454:                                              ; preds = %444
  br label %455

455:                                              ; preds = %454, %451
  %456 = phi i8* [ %453, %451 ], [ null, %454 ]
  store i8* %456, i8** %31, align 8
  %457 = load i8*, i8** %31, align 8
  %458 = icmp ne i8* %457, null
  br i1 %458, label %502, label %459

459:                                              ; preds = %455
  %460 = load i8*, i8** %8, align 8
  %461 = icmp ne i8* %460, null
  br i1 %461, label %462, label %502

462:                                              ; preds = %459
  %463 = load %struct.dnode*, %struct.dnode** %29, align 8
  %464 = getelementptr inbounds %struct.dnode, %struct.dnode* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = icmp sgt i32 %465, 2044
  br i1 %466, label %467, label %480

467:                                              ; preds = %462
  %468 = load %struct.inode*, %struct.inode** %3, align 8
  %469 = getelementptr inbounds %struct.inode, %struct.inode* %468, i32 0, i32 3
  %470 = load i32, i32* %469, align 8
  %471 = call %struct.TYPE_6__* @hpfs_sb(i32 %470)
  %472 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = icmp sge i32 %473, 2
  br i1 %474, label %475, label %478

475:                                              ; preds = %467
  %476 = call i32 @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0))
  %477 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  br label %478

478:                                              ; preds = %475, %467
  %479 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %30)
  br label %644

480:                                              ; preds = %462
  %481 = load %struct.inode*, %struct.inode** %3, align 8
  %482 = getelementptr inbounds %struct.inode, %struct.inode* %481, i32 0, i32 3
  %483 = load i32, i32* %482, align 8
  %484 = call %struct.TYPE_6__* @hpfs_sb(i32 %483)
  %485 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 4
  %487 = icmp sge i32 %486, 2
  br i1 %487, label %488, label %491

488:                                              ; preds = %480
  %489 = call i32 @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0))
  %490 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %491

491:                                              ; preds = %488, %480
  %492 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %493 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 4
  %495 = add nsw i32 %494, 4
  store i32 %495, i32* %493, align 4
  %496 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %497 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %496, i32 0, i32 0
  store i32 1, i32* %497, align 4
  %498 = load %struct.dnode*, %struct.dnode** %29, align 8
  %499 = getelementptr inbounds %struct.dnode, %struct.dnode* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = add nsw i32 %500, 4
  store i32 %501, i32* %499, align 8
  br label %502

502:                                              ; preds = %491, %459, %455
  %503 = load i8*, i8** %31, align 8
  %504 = icmp ne i8* %503, null
  br i1 %504, label %505, label %519

505:                                              ; preds = %502
  %506 = load i8*, i8** %8, align 8
  %507 = icmp ne i8* %506, null
  br i1 %507, label %519, label %508

508:                                              ; preds = %505
  %509 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %510 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = sub nsw i32 %511, 4
  store i32 %512, i32* %510, align 4
  %513 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %514 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %513, i32 0, i32 0
  store i32 0, i32* %514, align 4
  %515 = load %struct.dnode*, %struct.dnode** %29, align 8
  %516 = getelementptr inbounds %struct.dnode, %struct.dnode* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = sub nsw i32 %517, 4
  store i32 %518, i32* %516, align 8
  br label %534

519:                                              ; preds = %505, %502
  %520 = load i8*, i8** %8, align 8
  %521 = icmp ne i8* %520, null
  br i1 %521, label %522, label %533

522:                                              ; preds = %519
  %523 = load i8*, i8** %8, align 8
  %524 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %525 = bitcast %struct.hpfs_dirent* %524 to i8*
  %526 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %32, align 8
  %527 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr i8, i8* %525, i64 %529
  %531 = getelementptr i8, i8* %530, i64 -4
  %532 = bitcast i8* %531 to i8**
  store i8* %523, i8** %532, align 8
  br label %533

533:                                              ; preds = %522, %519
  br label %534

534:                                              ; preds = %533, %508
  br label %536

535:                                              ; preds = %435
  br label %644

536:                                              ; preds = %534
  %537 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %538 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 4
  %540 = load i32, i32* @GFP_NOFS, align 4
  %541 = call %struct.hpfs_dirent* @kmalloc(i32 %539, i32 %540)
  store %struct.hpfs_dirent* %541, %struct.hpfs_dirent** %28, align 8
  %542 = icmp ne %struct.hpfs_dirent* %541, null
  br i1 %542, label %546, label %543

543:                                              ; preds = %536
  %544 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %545 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %30)
  br label %644

546:                                              ; preds = %536
  %547 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %30)
  %548 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %30)
  %549 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %28, align 8
  %550 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %551 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %552 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 4
  %554 = call i32 @memcpy(%struct.hpfs_dirent* %549, %struct.hpfs_dirent* %550, i32 %553)
  %555 = load %struct.inode*, %struct.inode** %3, align 8
  %556 = getelementptr inbounds %struct.inode, %struct.inode* %555, i32 0, i32 3
  %557 = load i32, i32* %556, align 8
  %558 = load %struct.dnode*, %struct.dnode** %7, align 8
  %559 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %560 = call i32 @hpfs_delete_de(i32 %557, %struct.dnode* %558, %struct.hpfs_dirent* %559)
  %561 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %562 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 4
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %576, label %565

565:                                              ; preds = %546
  %566 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %567 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %566, i32 0, i32 1
  %568 = load i32, i32* %567, align 4
  %569 = add nsw i32 %568, 4
  store i32 %569, i32* %567, align 4
  %570 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %571 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %570, i32 0, i32 0
  store i32 1, i32* %571, align 4
  %572 = load %struct.dnode*, %struct.dnode** %7, align 8
  %573 = getelementptr inbounds %struct.dnode, %struct.dnode* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 8
  %575 = add nsw i32 %574, 4
  store i32 %575, i32* %573, align 8
  br label %576

576:                                              ; preds = %565, %546
  %577 = load i8*, i8** %10, align 8
  %578 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %579 = bitcast %struct.hpfs_dirent* %578 to i8*
  %580 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %27, align 8
  %581 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %580, i32 0, i32 1
  %582 = load i32, i32* %581, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr i8, i8* %579, i64 %583
  %585 = getelementptr i8, i8* %584, i64 -4
  %586 = bitcast i8* %585 to i8**
  store i8* %577, i8** %586, align 8
  %587 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %6)
  %588 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  %589 = load %struct.inode*, %struct.inode** %3, align 8
  %590 = load i32, i32* @hpfs_pos_subst, align 4
  %591 = load i8*, i8** %9, align 8
  %592 = ptrtoint i8* %591 to i32
  %593 = shl i32 %592, 4
  %594 = load i32, i32* %11, align 4
  %595 = sub nsw i32 %594, 1
  %596 = or i32 %593, %595
  %597 = call i32 @for_all_poss(%struct.inode* %589, i32 %590, i32 %596, i32 4)
  %598 = load %struct.inode*, %struct.inode** %3, align 8
  %599 = load i32, i32* @hpfs_pos_subst, align 4
  %600 = load i8*, i8** %9, align 8
  %601 = ptrtoint i8* %600 to i32
  %602 = shl i32 %601, 4
  %603 = load i32, i32* %11, align 4
  %604 = or i32 %602, %603
  %605 = load i8*, i8** %9, align 8
  %606 = ptrtoint i8* %605 to i32
  %607 = shl i32 %606, 4
  %608 = load i32, i32* %11, align 4
  %609 = sub nsw i32 %608, 1
  %610 = or i32 %607, %609
  %611 = call i32 @for_all_poss(%struct.inode* %598, i32 %599, i32 %604, i32 %610)
  %612 = load i8*, i8** %8, align 8
  %613 = icmp ne i8* %612, null
  br i1 %613, label %614, label %629

614:                                              ; preds = %576
  %615 = load %struct.inode*, %struct.inode** %3, align 8
  %616 = getelementptr inbounds %struct.inode, %struct.inode* %615, i32 0, i32 3
  %617 = load i32, i32* %616, align 8
  %618 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %12, align 8
  %619 = call i8* @de_down_pointer(%struct.hpfs_dirent* %618)
  %620 = call %struct.dnode* @hpfs_map_dnode(i32 %617, i8* %619, %struct.quad_buffer_head* %30)
  store %struct.dnode* %620, %struct.dnode** %29, align 8
  %621 = icmp ne %struct.dnode* %620, null
  br i1 %621, label %622, label %628

622:                                              ; preds = %614
  %623 = load i8*, i8** %10, align 8
  %624 = load %struct.dnode*, %struct.dnode** %29, align 8
  %625 = getelementptr inbounds %struct.dnode, %struct.dnode* %624, i32 0, i32 2
  store i8* %623, i8** %625, align 8
  %626 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %30)
  %627 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %30)
  br label %628

628:                                              ; preds = %622, %614
  br label %629

629:                                              ; preds = %628, %576
  %630 = load %struct.inode*, %struct.inode** %3, align 8
  %631 = load i8*, i8** %10, align 8
  %632 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %28, align 8
  %633 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %632, i32 0, i32 3
  %634 = load i32, i32* %633, align 4
  %635 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %28, align 8
  %636 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %635, i32 0, i32 2
  %637 = load i32, i32* %636, align 4
  %638 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %28, align 8
  %639 = load i8*, i8** %31, align 8
  %640 = call i32 @hpfs_add_to_dnode(%struct.inode* %630, i8* %631, i32 %634, i32 %637, %struct.hpfs_dirent* %638, i8* %639)
  %641 = load i8*, i8** %9, align 8
  store i8* %641, i8** %4, align 8
  %642 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %28, align 8
  %643 = call i32 @kfree(%struct.hpfs_dirent* %642)
  br label %35

644:                                              ; preds = %543, %535, %478, %434, %339, %329
  %645 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %6)
  br label %646

646:                                              ; preds = %644, %308, %229, %99, %56
  %647 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  br label %648

648:                                              ; preds = %646, %201, %183, %137, %50, %42
  ret void
}

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local i64 @hpfs_stop_cycles(i32, i8*, i32*, i32*, i8*) #1

declare dso_local %struct.dnode* @hpfs_map_dnode(i32, i8*, %struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local i8* @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local %struct.TYPE_6__* @hpfs_sb(i32) #1

declare dso_local i32 @hpfs_error(i32, i8*, i8*, ...) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_free_dnode(i32, i8*) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local %struct.fnode* @hpfs_map_fnode(i32, i8*, %struct.buffer_head**) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @for_all_poss(%struct.inode*, i32, i32, i32) #1

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local i32 @memmove(%struct.hpfs_dirent*, i8*, i32) #1

declare dso_local %struct.hpfs_dirent* @kmalloc(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @memcpy(%struct.hpfs_dirent*, %struct.hpfs_dirent*, i32) #1

declare dso_local i32 @hpfs_delete_de(i32, %struct.dnode*, %struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_add_to_dnode(%struct.inode*, i8*, i32, i32, %struct.hpfs_dirent*, i8*) #1

declare dso_local i32 @kfree(%struct.hpfs_dirent*) #1

declare dso_local %struct.hpfs_dirent* @dnode_pre_last_de(%struct.dnode*) #1

declare dso_local %struct.hpfs_dirent* @dnode_last_de(%struct.dnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
