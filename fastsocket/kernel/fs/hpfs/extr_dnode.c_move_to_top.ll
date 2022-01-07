; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_move_to_top.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_move_to_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dnode = type { i64, i32, i64 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"move_to_top\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"move_to_top: up pointer from %08x should be %08x, is %08x\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"move_to_top: dnode %08x has no last de\00", align 1
@hpfs_pos_subst = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"move_to_top: got to root_dnode while moving from %08x to %08x\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"move_to_top: dnode %08x doesn't point down to %08x\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"out of memory for dirent - directory will be corrupted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i64, i64)* @move_to_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @move_to_top(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dnode*, align 8
  %12 = alloca %struct.quad_buffer_head, align 4
  %13 = alloca %struct.hpfs_dirent*, align 8
  %14 = alloca %struct.hpfs_dirent*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %10, align 8
  store i32 0, i32* %18, align 4
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %3, %91
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_2__* @hpfs_sb(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @hpfs_stop_cycles(i32 %33, i64 %34, i32* %17, i32* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i64 0, i64* %4, align 8
  br label %257

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call %struct.dnode* @hpfs_map_dnode(i32 %42, i64 %43, %struct.quad_buffer_head* %12)
  store %struct.dnode* %44, %struct.dnode** %11, align 8
  %45 = icmp ne %struct.dnode* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i64 0, i64* %4, align 8
  br label %257

47:                                               ; preds = %39
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_2__* @hpfs_sb(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %47
  %56 = load %struct.dnode*, %struct.dnode** %11, align 8
  %57 = getelementptr inbounds %struct.dnode, %struct.dnode* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.dnode*, %struct.dnode** %11, align 8
  %68 = getelementptr inbounds %struct.dnode, %struct.dnode* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i32, i8*, ...) @hpfs_error(i32 %64, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %65, i64 %66, i64 %69)
  %71 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  store i64 0, i64* %4, align 8
  br label %257

72:                                               ; preds = %55
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %72, %47
  %75 = load %struct.dnode*, %struct.dnode** %11, align 8
  %76 = call %struct.hpfs_dirent* @dnode_last_de(%struct.dnode* %75)
  store %struct.hpfs_dirent* %76, %struct.hpfs_dirent** %13, align 8
  %77 = icmp ne %struct.hpfs_dirent* %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = load %struct.inode*, %struct.inode** %5, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %8, align 8
  %83 = call i32 (i32, i8*, ...) @hpfs_error(i32 %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %82)
  %84 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  store i64 0, i64* %4, align 8
  br label %257

85:                                               ; preds = %74
  %86 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %87 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %95

91:                                               ; preds = %85
  %92 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %93 = call i64 @de_down_pointer(%struct.hpfs_dirent* %92)
  store i64 %93, i64* %8, align 8
  %94 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  br label %22

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %170, %95
  %97 = load %struct.dnode*, %struct.dnode** %11, align 8
  %98 = call %struct.hpfs_dirent* @dnode_pre_last_de(%struct.dnode* %97)
  store %struct.hpfs_dirent* %98, %struct.hpfs_dirent** %13, align 8
  %99 = icmp ne %struct.hpfs_dirent* %98, null
  %100 = xor i1 %99, true
  br i1 %100, label %101, label %183

101:                                              ; preds = %96
  %102 = load %struct.dnode*, %struct.dnode** %11, align 8
  %103 = getelementptr inbounds %struct.dnode, %struct.dnode* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %19, align 8
  %105 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  %106 = load %struct.inode*, %struct.inode** %5, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @hpfs_free_dnode(i32 %108, i64 %109)
  %111 = load %struct.inode*, %struct.inode** %5, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %113, 2048
  store i32 %114, i32* %112, align 4
  %115 = load %struct.inode*, %struct.inode** %5, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, 4
  store i32 %118, i32* %116, align 4
  %119 = load %struct.inode*, %struct.inode** %5, align 8
  %120 = load i32, i32* @hpfs_pos_subst, align 4
  %121 = load i64, i64* %8, align 8
  %122 = trunc i64 %121 to i32
  %123 = shl i32 %122, 4
  %124 = or i32 %123, 1
  %125 = call i32 @for_all_poss(%struct.inode* %119, i32 %120, i32 %124, i32 5)
  %126 = load i64, i64* %19, align 8
  %127 = load i64, i64* %7, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %101
  %130 = load i64, i64* %7, align 8
  store i64 %130, i64* %4, align 8
  br label %257

131:                                              ; preds = %101
  %132 = load %struct.inode*, %struct.inode** %5, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* %19, align 8
  %136 = call %struct.dnode* @hpfs_map_dnode(i32 %134, i64 %135, %struct.quad_buffer_head* %12)
  store %struct.dnode* %136, %struct.dnode** %11, align 8
  %137 = icmp ne %struct.dnode* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %131
  store i64 0, i64* %4, align 8
  br label %257

139:                                              ; preds = %131
  %140 = load %struct.dnode*, %struct.dnode** %11, align 8
  %141 = getelementptr inbounds %struct.dnode, %struct.dnode* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load %struct.inode*, %struct.inode** %5, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i64, i64* %6, align 8
  %149 = load i64, i64* %7, align 8
  %150 = call i32 (i32, i8*, ...) @hpfs_error(i32 %147, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i64 %148, i64 %149)
  %151 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  store i64 0, i64* %4, align 8
  br label %257

152:                                              ; preds = %139
  %153 = load %struct.dnode*, %struct.dnode** %11, align 8
  %154 = call %struct.hpfs_dirent* @dnode_last_de(%struct.dnode* %153)
  store %struct.hpfs_dirent* %154, %struct.hpfs_dirent** %13, align 8
  %155 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %156 = icmp ne %struct.hpfs_dirent* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %159 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %157, %152
  %163 = load %struct.inode*, %struct.inode** %5, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i64, i64* %19, align 8
  %167 = load i64, i64* %8, align 8
  %168 = call i32 (i32, i8*, ...) @hpfs_error(i32 %165, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i64 %166, i64 %167)
  %169 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  store i64 0, i64* %4, align 8
  br label %257

170:                                              ; preds = %157
  %171 = load %struct.dnode*, %struct.dnode** %11, align 8
  %172 = getelementptr inbounds %struct.dnode, %struct.dnode* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = sub nsw i32 %173, 4
  store i32 %174, i32* %172, align 8
  %175 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %176 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, 4
  store i32 %178, i32* %176, align 8
  %179 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %180 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %179, i32 0, i32 3
  store i64 0, i64* %180, align 8
  %181 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %12)
  %182 = load i64, i64* %19, align 8
  store i64 %182, i64* %8, align 8
  br label %96

183:                                              ; preds = %96
  %184 = load %struct.dnode*, %struct.dnode** %11, align 8
  %185 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %186 = call i32 @get_pos(%struct.dnode* %184, %struct.hpfs_dirent* %185)
  store i32 %186, i32* %16, align 4
  %187 = load %struct.inode*, %struct.inode** %5, align 8
  %188 = load i32, i32* @hpfs_pos_subst, align 4
  %189 = load i32, i32* %16, align 4
  %190 = call i32 @for_all_poss(%struct.inode* %187, i32 %188, i32 %189, i32 4)
  %191 = load %struct.inode*, %struct.inode** %5, align 8
  %192 = load i32, i32* @hpfs_pos_subst, align 4
  %193 = load i32, i32* %16, align 4
  %194 = add nsw i32 %193, 1
  %195 = call i32 @for_all_poss(%struct.inode* %191, i32 %192, i32 %194, i32 5)
  %196 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %197 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @GFP_NOFS, align 4
  %200 = call %struct.hpfs_dirent* @kmalloc(i32 %198, i32 %199)
  store %struct.hpfs_dirent* %200, %struct.hpfs_dirent** %14, align 8
  %201 = icmp ne %struct.hpfs_dirent* %200, null
  br i1 %201, label %208, label %202

202:                                              ; preds = %183
  %203 = load %struct.inode*, %struct.inode** %5, align 8
  %204 = getelementptr inbounds %struct.inode, %struct.inode* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i8*, ...) @hpfs_error(i32 %205, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %207 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  store i64 0, i64* %4, align 8
  br label %257

208:                                              ; preds = %183
  %209 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %210 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %211 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %212 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @memcpy(%struct.hpfs_dirent* %209, %struct.hpfs_dirent* %210, i32 %213)
  %215 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %216 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %208
  %220 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %221 = call i64 @de_down_pointer(%struct.hpfs_dirent* %220)
  br label %223

222:                                              ; preds = %208
  br label %223

223:                                              ; preds = %222, %219
  %224 = phi i64 [ %221, %219 ], [ 0, %222 ]
  store i64 %224, i64* %9, align 8
  %225 = load %struct.inode*, %struct.inode** %5, align 8
  %226 = getelementptr inbounds %struct.inode, %struct.inode* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.dnode*, %struct.dnode** %11, align 8
  %229 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %13, align 8
  %230 = call i32 @hpfs_delete_de(i32 %227, %struct.dnode* %228, %struct.hpfs_dirent* %229)
  %231 = load %struct.inode*, %struct.inode** %5, align 8
  %232 = getelementptr inbounds %struct.inode, %struct.inode* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.dnode*, %struct.dnode** %11, align 8
  %235 = load i64, i64* %9, align 8
  %236 = call i32 @set_last_pointer(i32 %233, %struct.dnode* %234, i64 %235)
  %237 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %12)
  %238 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %12)
  %239 = load %struct.inode*, %struct.inode** %5, align 8
  %240 = load i64, i64* %7, align 8
  %241 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %242 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %245 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %248 = load i64, i64* %6, align 8
  %249 = call i32 @hpfs_add_to_dnode(%struct.inode* %239, i64 %240, i32 %243, i32 %246, %struct.hpfs_dirent* %247, i64 %248)
  store i32 %249, i32* %15, align 4
  %250 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %14, align 8
  %251 = call i32 @kfree(%struct.hpfs_dirent* %250)
  %252 = load i32, i32* %15, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %223
  store i64 0, i64* %4, align 8
  br label %257

255:                                              ; preds = %223
  %256 = load i64, i64* %8, align 8
  store i64 %256, i64* %4, align 8
  br label %257

257:                                              ; preds = %255, %254, %202, %162, %144, %138, %129, %78, %61, %46, %37
  %258 = load i64, i64* %4, align 8
  ret i64 %258
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(i32) #1

declare dso_local i64 @hpfs_stop_cycles(i32, i64, i32*, i32*, i8*) #1

declare dso_local %struct.dnode* @hpfs_map_dnode(i32, i64, %struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_error(i32, i8*, ...) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local %struct.hpfs_dirent* @dnode_last_de(%struct.dnode*) #1

declare dso_local i64 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local %struct.hpfs_dirent* @dnode_pre_last_de(%struct.dnode*) #1

declare dso_local i32 @hpfs_free_dnode(i32, i64) #1

declare dso_local i32 @for_all_poss(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i32 @get_pos(%struct.dnode*, %struct.hpfs_dirent*) #1

declare dso_local %struct.hpfs_dirent* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.hpfs_dirent*, %struct.hpfs_dirent*, i32) #1

declare dso_local i32 @hpfs_delete_de(i32, %struct.dnode*, %struct.hpfs_dirent*) #1

declare dso_local i32 @set_last_pointer(i32, %struct.dnode*, i64) #1

declare dso_local i32 @hpfs_add_to_dnode(%struct.inode*, i64, i32, i32, %struct.hpfs_dirent*, i64) #1

declare dso_local i32 @kfree(%struct.hpfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
