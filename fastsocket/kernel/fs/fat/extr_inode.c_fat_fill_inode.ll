; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c_fat_fill_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c_fat_fill_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32*, i32*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.msdos_dir_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.msdos_sb_info = type { i32, i32, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@ATTR_DIR = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@fat_dir_operations = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@fat_file_inode_operations = common dso_local global i32 0, align 4
@fat_file_operations = common dso_local global i32 0, align 4
@fat_aops = common dso_local global i32 0, align 4
@ATTR_SYS = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.msdos_dir_entry*)* @fat_fill_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_fill_inode(%struct.inode* %0, %struct.msdos_dir_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.msdos_dir_entry*, align 8
  %6 = alloca %struct.msdos_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.msdos_dir_entry* %1, %struct.msdos_dir_entry** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 15
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.msdos_sb_info* @MSDOS_SB(i32 %10)
  store %struct.msdos_sb_info* %11, %struct.msdos_sb_info** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %16 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 14
  store i32 %18, i32* %20, align 4
  %21 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %22 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 13
  store i32 %24, i32* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = call i32 (...) @get_seconds()
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %35 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ATTR_DIR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %113

40:                                               ; preds = %2
  %41 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %42 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %41, i32 0, i32 10
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @IS_FREE(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %113, label %46

46:                                               ; preds = %40
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, -2
  store i32 %50, i32* %48, align 8
  %51 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %52 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %53 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @S_IRWXUGO, align 4
  %56 = call i8* @fat_make_mode(%struct.msdos_sb_info* %51, i32 %54, i32 %55)
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 10
  store i8* %56, i8** %58, align 8
  %59 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %60 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 9
  store i32* %61, i32** %63, align 8
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 8
  store i32* @fat_dir_operations, i32** %65, align 8
  %66 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %67 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = load %struct.inode*, %struct.inode** %4, align 8
  %71 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %74 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 32
  br i1 %76, label %77, label %88

77:                                               ; preds = %46
  %78 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %79 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @le16_to_cpu(i32 %80)
  %82 = shl i32 %81, 16
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %83)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %77, %46
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %93)
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = call i32 @fat_calc_dir_size(%struct.inode* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %283

102:                                              ; preds = %88
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %106)
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 8
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = call i32 @fat_subdirs(%struct.inode* %109)
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 11
  store i32 %110, i32* %112, align 8
  br label %195

113:                                              ; preds = %40, %2
  %114 = load %struct.inode*, %struct.inode** %4, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %119 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %120 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %123 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %113
  %128 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %129 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %128, i32 0, i32 10
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 8
  %132 = call i32 @is_exec(i64 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* @S_IRUGO, align 4
  %136 = load i32, i32* @S_IWUGO, align 4
  %137 = or i32 %135, %136
  br label %140

138:                                              ; preds = %127, %113
  %139 = load i32, i32* @S_IRWXUGO, align 4
  br label %140

140:                                              ; preds = %138, %134
  %141 = phi i32 [ %137, %134 ], [ %139, %138 ]
  %142 = call i8* @fat_make_mode(%struct.msdos_sb_info* %118, i32 %121, i32 %141)
  %143 = load %struct.inode*, %struct.inode** %4, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 10
  store i8* %142, i8** %144, align 8
  %145 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %146 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le16_to_cpu(i32 %147)
  %149 = load %struct.inode*, %struct.inode** %4, align 8
  %150 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %149)
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 8
  %152 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %153 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 32
  br i1 %155, label %156, label %167

156:                                              ; preds = %140
  %157 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %158 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @le16_to_cpu(i32 %159)
  %161 = shl i32 %160, 16
  %162 = load %struct.inode*, %struct.inode** %4, align 8
  %163 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %162)
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %161
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %156, %140
  %168 = load %struct.inode*, %struct.inode** %4, align 8
  %169 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %168)
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.inode*, %struct.inode** %4, align 8
  %173 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %172)
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 4
  %175 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %176 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @le32_to_cpu(i32 %177)
  %179 = load %struct.inode*, %struct.inode** %4, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load %struct.inode*, %struct.inode** %4, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 9
  store i32* @fat_file_inode_operations, i32** %182, align 8
  %183 = load %struct.inode*, %struct.inode** %4, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 8
  store i32* @fat_file_operations, i32** %184, align 8
  %185 = load %struct.inode*, %struct.inode** %4, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 7
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  store i32* @fat_aops, i32** %188, align 8
  %189 = load %struct.inode*, %struct.inode** %4, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.inode*, %struct.inode** %4, align 8
  %193 = call %struct.TYPE_6__* @MSDOS_I(%struct.inode* %192)
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  store i32 %191, i32* %194, align 8
  br label %195

195:                                              ; preds = %167, %102
  %196 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %197 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @ATTR_SYS, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %195
  %203 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %204 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %202
  %209 = load i32, i32* @S_IMMUTABLE, align 4
  %210 = load %struct.inode*, %struct.inode** %4, align 8
  %211 = getelementptr inbounds %struct.inode, %struct.inode* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %208, %202
  br label %215

215:                                              ; preds = %214, %195
  %216 = load %struct.inode*, %struct.inode** %4, align 8
  %217 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %218 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @fat_save_attrs(%struct.inode* %216, i32 %219)
  %221 = load %struct.inode*, %struct.inode** %4, align 8
  %222 = getelementptr inbounds %struct.inode, %struct.inode* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %225 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 %226, 1
  %228 = add nsw i32 %223, %227
  %229 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %230 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = sub nsw i32 %231, 1
  %233 = xor i32 %232, -1
  %234 = and i32 %228, %233
  %235 = ashr i32 %234, 9
  %236 = load %struct.inode*, %struct.inode** %4, align 8
  %237 = getelementptr inbounds %struct.inode, %struct.inode* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 8
  %238 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %239 = load %struct.inode*, %struct.inode** %4, align 8
  %240 = getelementptr inbounds %struct.inode, %struct.inode* %239, i32 0, i32 3
  %241 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %242 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %245 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @fat_time_fat2unix(%struct.msdos_sb_info* %238, i32* %240, i32 %243, i32 %246, i32 0)
  %248 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %249 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %274

253:                                              ; preds = %215
  %254 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %255 = load %struct.inode*, %struct.inode** %4, align 8
  %256 = getelementptr inbounds %struct.inode, %struct.inode* %255, i32 0, i32 5
  %257 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %258 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %261 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %264 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @fat_time_fat2unix(%struct.msdos_sb_info* %254, i32* %256, i32 %259, i32 %262, i32 %265)
  %267 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %268 = load %struct.inode*, %struct.inode** %4, align 8
  %269 = getelementptr inbounds %struct.inode, %struct.inode* %268, i32 0, i32 4
  %270 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %5, align 8
  %271 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @fat_time_fat2unix(%struct.msdos_sb_info* %267, i32* %269, i32 0, i32 %272, i32 0)
  br label %282

274:                                              ; preds = %215
  %275 = load %struct.inode*, %struct.inode** %4, align 8
  %276 = getelementptr inbounds %struct.inode, %struct.inode* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.inode*, %struct.inode** %4, align 8
  %279 = getelementptr inbounds %struct.inode, %struct.inode* %278, i32 0, i32 4
  store i32 %277, i32* %279, align 8
  %280 = load %struct.inode*, %struct.inode** %4, align 8
  %281 = getelementptr inbounds %struct.inode, %struct.inode* %280, i32 0, i32 5
  store i32 %277, i32* %281, align 4
  br label %282

282:                                              ; preds = %274, %253
  store i32 0, i32* %3, align 4
  br label %283

283:                                              ; preds = %282, %100
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(i32) #1

declare dso_local %struct.TYPE_6__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @IS_FREE(i64) #1

declare dso_local i8* @fat_make_mode(%struct.msdos_sb_info*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @fat_calc_dir_size(%struct.inode*) #1

declare dso_local i32 @fat_subdirs(%struct.inode*) #1

declare dso_local i32 @is_exec(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @fat_save_attrs(%struct.inode*, i32) #1

declare dso_local i32 @fat_time_fat2unix(%struct.msdos_sb_info*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
