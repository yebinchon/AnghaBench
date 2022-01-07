; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i64, i32*, i32*, %struct.super_block*, i8*, i8*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.super_block = type { i32 }
%struct.ext3_iloc = type { %struct.buffer_head*, i32 }
%struct.buffer_head = type { i32 }
%struct.ext3_inode = type { i64*, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.ext3_inode_info = type { i32, i32, i64*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i8*, i64, i32* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }

@ENOMEM = common dso_local global i64 0, align 8
@I_NEW = common dso_local global i32 0, align 4
@NO_UID32 = common dso_local global i32 0, align 4
@EXT3_ORPHAN_FS = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i64 0, align 8
@EXT3_N_BLOCKS = common dso_local global i32 0, align 4
@EXT3_GOOD_OLD_INODE_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@EXT3_XATTR_MAGIC = common dso_local global i32 0, align 4
@EXT3_STATE_XATTR = common dso_local global i32 0, align 4
@ext3_file_inode_operations = common dso_local global i32 0, align 4
@ext3_file_operations = common dso_local global i32 0, align 4
@ext3_dir_inode_operations = common dso_local global i32 0, align 4
@ext3_dir_operations = common dso_local global i32 0, align 4
@ext3_fast_symlink_inode_operations = common dso_local global i32 0, align 4
@ext3_symlink_inode_operations = common dso_local global i32 0, align 4
@ext3_special_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ext3_iget(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext3_iloc, align 8
  %7 = alloca %struct.ext3_inode*, align 8
  %8 = alloca %struct.ext3_inode_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = call %struct.TYPE_12__* @EXT3_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %11, align 8
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call %struct.inode* @iget_locked(%struct.super_block* %21, i64 %22)
  store %struct.inode* %23, %struct.inode** %10, align 8
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i64, i64* @ENOMEM, align 8
  %28 = sub nsw i64 0, %27
  %29 = call %struct.inode* @ERR_PTR(i64 %28)
  store %struct.inode* %29, %struct.inode** %3, align 8
  br label %488

30:                                               ; preds = %2
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @I_NEW, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %38, %struct.inode** %3, align 8
  br label %488

39:                                               ; preds = %30
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = call %struct.ext3_inode_info* @EXT3_I(%struct.inode* %40)
  store %struct.ext3_inode_info* %41, %struct.ext3_inode_info** %8, align 8
  %42 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %43 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %42, i32 0, i32 16
  store i32* null, i32** %43, align 8
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = call i64 @__ext3_get_inode_loc(%struct.inode* %44, %struct.ext3_iloc* %6, i32 0)
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %483

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.ext3_iloc, %struct.ext3_iloc* %6, i32 0, i32 0
  %51 = load %struct.buffer_head*, %struct.buffer_head** %50, align 8
  store %struct.buffer_head* %51, %struct.buffer_head** %9, align 8
  %52 = call %struct.ext3_inode* @ext3_raw_inode(%struct.ext3_iloc* %6)
  store %struct.ext3_inode* %52, %struct.ext3_inode** %7, align 8
  %53 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %54 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %53, i32 0, i32 21
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %60 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %59, i32 0, i32 20
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @le16_to_cpu(i32 %61)
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %66 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %65, i32 0, i32 19
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.inode*, %struct.inode** %10, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 9
  %73 = load %struct.super_block*, %struct.super_block** %72, align 8
  %74 = load i32, i32* @NO_UID32, align 4
  %75 = call i32 @test_opt(%struct.super_block* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %49
  %78 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %79 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %78, i32 0, i32 18
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @le16_to_cpu(i32 %80)
  %82 = shl i32 %81, 16
  %83 = load %struct.inode*, %struct.inode** %10, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %88 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %87, i32 0, i32 17
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  %91 = shl i32 %90, 16
  %92 = load %struct.inode*, %struct.inode** %10, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %77, %49
  %97 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %98 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %97, i32 0, i32 16
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @le16_to_cpu(i32 %99)
  %101 = load %struct.inode*, %struct.inode** %10, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %104 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %103, i32 0, i32 15
  %105 = load i64, i64* %104, align 8
  %106 = call i8* @le32_to_cpu(i64 %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.inode*, %struct.inode** %10, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %111 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %110, i32 0, i32 14
  %112 = load i64, i64* %111, align 8
  %113 = call i8* @le32_to_cpu(i64 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.inode*, %struct.inode** %10, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 14
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %119 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %118, i32 0, i32 13
  %120 = load i64, i64* %119, align 8
  %121 = call i8* @le32_to_cpu(i64 %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.inode*, %struct.inode** %10, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 13
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %127 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %126, i32 0, i32 12
  %128 = load i64, i64* %127, align 8
  %129 = call i8* @le32_to_cpu(i64 %128)
  %130 = ptrtoint i8* %129 to i32
  %131 = load %struct.inode*, %struct.inode** %10, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 12
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  %134 = load %struct.inode*, %struct.inode** %10, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 12
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  %137 = load %struct.inode*, %struct.inode** %10, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 13
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i64 0, i64* %139, align 8
  %140 = load %struct.inode*, %struct.inode** %10, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 14
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  %143 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %144 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %143, i32 0, i32 3
  store i32 0, i32* %144, align 8
  %145 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %146 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %145, i32 0, i32 15
  store i64 0, i64* %146, align 8
  %147 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %148 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %147, i32 0, i32 11
  %149 = load i64, i64* %148, align 8
  %150 = call i8* @le32_to_cpu(i64 %149)
  %151 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %152 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %151, i32 0, i32 14
  store i8* %150, i8** %152, align 8
  %153 = load %struct.inode*, %struct.inode** %10, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %178

157:                                              ; preds = %96
  %158 = load %struct.inode*, %struct.inode** %10, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %157
  %163 = load %struct.inode*, %struct.inode** %10, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 9
  %165 = load %struct.super_block*, %struct.super_block** %164, align 8
  %166 = call %struct.TYPE_12__* @EXT3_SB(%struct.super_block* %165)
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @EXT3_ORPHAN_FS, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %162, %157
  %173 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %174 = call i32 @brelse(%struct.buffer_head* %173)
  %175 = load i64, i64* @ESTALE, align 8
  %176 = sub nsw i64 0, %175
  store i64 %176, i64* %13, align 8
  br label %483

177:                                              ; preds = %162
  br label %178

178:                                              ; preds = %177, %96
  %179 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %180 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %179, i32 0, i32 10
  %181 = load i64, i64* %180, align 8
  %182 = call i8* @le32_to_cpu(i64 %181)
  %183 = load %struct.inode*, %struct.inode** %10, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 11
  store i8* %182, i8** %184, align 8
  %185 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %186 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %185, i32 0, i32 9
  %187 = load i64, i64* %186, align 8
  %188 = call i8* @le32_to_cpu(i64 %187)
  %189 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %190 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %189, i32 0, i32 13
  store i8* %188, i8** %190, align 8
  %191 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %192 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = call i8* @le32_to_cpu(i64 %193)
  %195 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %196 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %195, i32 0, i32 9
  store i8* %194, i8** %196, align 8
  %197 = load %struct.inode*, %struct.inode** %10, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = call i64 @S_ISREG(i64 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %178
  %204 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %205 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = call i8* @le32_to_cpu(i64 %206)
  %208 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %209 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %208, i32 0, i32 8
  store i8* %207, i8** %209, align 8
  br label %221

210:                                              ; preds = %178
  %211 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %212 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = call i8* @le32_to_cpu(i64 %213)
  %215 = ptrtoint i8* %214 to i32
  %216 = shl i32 %215, 32
  %217 = load %struct.inode*, %struct.inode** %10, align 8
  %218 = getelementptr inbounds %struct.inode, %struct.inode* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %210, %203
  %222 = load %struct.inode*, %struct.inode** %10, align 8
  %223 = getelementptr inbounds %struct.inode, %struct.inode* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %226 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  %227 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %228 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = call i8* @le32_to_cpu(i64 %229)
  %231 = load %struct.inode*, %struct.inode** %10, align 8
  %232 = getelementptr inbounds %struct.inode, %struct.inode* %231, i32 0, i32 10
  store i8* %230, i8** %232, align 8
  %233 = getelementptr inbounds %struct.ext3_iloc, %struct.ext3_iloc* %6, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %236 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %235, i32 0, i32 7
  store i32 %234, i32* %236, align 8
  store i32 0, i32* %14, align 4
  br label %237

237:                                              ; preds = %255, %221
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* @EXT3_N_BLOCKS, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %258

241:                                              ; preds = %237
  %242 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %243 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %242, i32 0, i32 0
  %244 = load i64*, i64** %243, align 8
  %245 = load i32, i32* %14, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %244, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %250 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %249, i32 0, i32 2
  %251 = load i64*, i64** %250, align 8
  %252 = load i32, i32* %14, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i64, i64* %251, i64 %253
  store i64 %248, i64* %254, align 8
  br label %255

255:                                              ; preds = %241
  %256 = load i32, i32* %14, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %14, align 4
  br label %237

258:                                              ; preds = %237
  %259 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %260 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %259, i32 0, i32 6
  %261 = call i32 @INIT_LIST_HEAD(i32* %260)
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %263 = icmp ne %struct.TYPE_11__* %262, null
  br i1 %263, label %264, label %303

264:                                              ; preds = %258
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = call i32 @spin_lock(i32* %266)
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 3
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %269, align 8
  %271 = icmp ne %struct.TYPE_10__* %270, null
  br i1 %271, label %272, label %276

272:                                              ; preds = %264
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 3
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %274, align 8
  store %struct.TYPE_10__* %275, %struct.TYPE_10__** %12, align 8
  br label %280

276:                                              ; preds = %264
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 2
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %278, align 8
  store %struct.TYPE_10__* %279, %struct.TYPE_10__** %12, align 8
  br label %280

280:                                              ; preds = %276, %272
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %282 = icmp ne %struct.TYPE_10__* %281, null
  br i1 %282, label %283, label %287

283:                                              ; preds = %280
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %15, align 4
  br label %291

287:                                              ; preds = %280
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %15, align 4
  br label %291

291:                                              ; preds = %287, %283
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = call i32 @spin_unlock(i32* %293)
  %295 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %296 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %295, i32 0, i32 5
  %297 = load i32, i32* %15, align 4
  %298 = call i32 @atomic_set(i32* %296, i32 %297)
  %299 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %300 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %299, i32 0, i32 4
  %301 = load i32, i32* %15, align 4
  %302 = call i32 @atomic_set(i32* %300, i32 %301)
  br label %303

303:                                              ; preds = %291, %258
  %304 = load %struct.inode*, %struct.inode** %10, align 8
  %305 = getelementptr inbounds %struct.inode, %struct.inode* %304, i32 0, i32 6
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.inode*, %struct.inode** %10, align 8
  %308 = getelementptr inbounds %struct.inode, %struct.inode* %307, i32 0, i32 9
  %309 = load %struct.super_block*, %struct.super_block** %308, align 8
  %310 = call i64 @EXT3_FIRST_INO(%struct.super_block* %309)
  %311 = add nsw i64 %310, 1
  %312 = icmp sge i64 %306, %311
  br i1 %312, label %313, label %378

313:                                              ; preds = %303
  %314 = load %struct.inode*, %struct.inode** %10, align 8
  %315 = getelementptr inbounds %struct.inode, %struct.inode* %314, i32 0, i32 9
  %316 = load %struct.super_block*, %struct.super_block** %315, align 8
  %317 = call i64 @EXT3_INODE_SIZE(%struct.super_block* %316)
  %318 = load i64, i64* @EXT3_GOOD_OLD_INODE_SIZE, align 8
  %319 = icmp sgt i64 %317, %318
  br i1 %319, label %320, label %378

320:                                              ; preds = %313
  %321 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %322 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @le16_to_cpu(i32 %323)
  %325 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %326 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %325, i32 0, i32 1
  store i32 %324, i32* %326, align 4
  %327 = load i64, i64* @EXT3_GOOD_OLD_INODE_SIZE, align 8
  %328 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %329 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = add nsw i64 %327, %331
  %333 = load %struct.inode*, %struct.inode** %10, align 8
  %334 = getelementptr inbounds %struct.inode, %struct.inode* %333, i32 0, i32 9
  %335 = load %struct.super_block*, %struct.super_block** %334, align 8
  %336 = call i64 @EXT3_INODE_SIZE(%struct.super_block* %335)
  %337 = icmp sgt i64 %332, %336
  br i1 %337, label %338, label %343

338:                                              ; preds = %320
  %339 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %340 = call i32 @brelse(%struct.buffer_head* %339)
  %341 = load i64, i64* @EIO, align 8
  %342 = sub nsw i64 0, %341
  store i64 %342, i64* %13, align 8
  br label %483

343:                                              ; preds = %320
  %344 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %345 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %343
  %349 = load i64, i64* @EXT3_GOOD_OLD_INODE_SIZE, align 8
  %350 = sub i64 144, %349
  %351 = trunc i64 %350 to i32
  %352 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %353 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %352, i32 0, i32 1
  store i32 %351, i32* %353, align 4
  br label %377

354:                                              ; preds = %343
  %355 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %356 = bitcast %struct.ext3_inode* %355 to i8*
  %357 = load i64, i64* @EXT3_GOOD_OLD_INODE_SIZE, align 8
  %358 = getelementptr i8, i8* %356, i64 %357
  %359 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %360 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr i8, i8* %358, i64 %362
  %364 = bitcast i8* %363 to i64*
  store i64* %364, i64** %16, align 8
  %365 = load i64*, i64** %16, align 8
  %366 = load i64, i64* %365, align 8
  %367 = load i32, i32* @EXT3_XATTR_MAGIC, align 4
  %368 = call i64 @cpu_to_le32(i32 %367)
  %369 = icmp eq i64 %366, %368
  br i1 %369, label %370, label %376

370:                                              ; preds = %354
  %371 = load i32, i32* @EXT3_STATE_XATTR, align 4
  %372 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %373 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 8
  %375 = or i32 %374, %371
  store i32 %375, i32* %373, align 8
  br label %376

376:                                              ; preds = %370, %354
  br label %377

377:                                              ; preds = %376, %348
  br label %381

378:                                              ; preds = %313, %303
  %379 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %380 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %379, i32 0, i32 1
  store i32 0, i32* %380, align 4
  br label %381

381:                                              ; preds = %378, %377
  %382 = load %struct.inode*, %struct.inode** %10, align 8
  %383 = getelementptr inbounds %struct.inode, %struct.inode* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = sext i32 %384 to i64
  %386 = call i64 @S_ISREG(i64 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %395

388:                                              ; preds = %381
  %389 = load %struct.inode*, %struct.inode** %10, align 8
  %390 = getelementptr inbounds %struct.inode, %struct.inode* %389, i32 0, i32 7
  store i32* @ext3_file_inode_operations, i32** %390, align 8
  %391 = load %struct.inode*, %struct.inode** %10, align 8
  %392 = getelementptr inbounds %struct.inode, %struct.inode* %391, i32 0, i32 8
  store i32* @ext3_file_operations, i32** %392, align 8
  %393 = load %struct.inode*, %struct.inode** %10, align 8
  %394 = call i32 @ext3_set_aops(%struct.inode* %393)
  br label %474

395:                                              ; preds = %381
  %396 = load %struct.inode*, %struct.inode** %10, align 8
  %397 = getelementptr inbounds %struct.inode, %struct.inode* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = sext i32 %398 to i64
  %400 = call i64 @S_ISDIR(i64 %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %407

402:                                              ; preds = %395
  %403 = load %struct.inode*, %struct.inode** %10, align 8
  %404 = getelementptr inbounds %struct.inode, %struct.inode* %403, i32 0, i32 7
  store i32* @ext3_dir_inode_operations, i32** %404, align 8
  %405 = load %struct.inode*, %struct.inode** %10, align 8
  %406 = getelementptr inbounds %struct.inode, %struct.inode* %405, i32 0, i32 8
  store i32* @ext3_dir_operations, i32** %406, align 8
  br label %473

407:                                              ; preds = %395
  %408 = load %struct.inode*, %struct.inode** %10, align 8
  %409 = getelementptr inbounds %struct.inode, %struct.inode* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = sext i32 %410 to i64
  %412 = call i64 @S_ISLNK(i64 %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %434

414:                                              ; preds = %407
  %415 = load %struct.inode*, %struct.inode** %10, align 8
  %416 = call i64 @ext3_inode_is_fast_symlink(%struct.inode* %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %428

418:                                              ; preds = %414
  %419 = load %struct.inode*, %struct.inode** %10, align 8
  %420 = getelementptr inbounds %struct.inode, %struct.inode* %419, i32 0, i32 7
  store i32* @ext3_fast_symlink_inode_operations, i32** %420, align 8
  %421 = load %struct.ext3_inode_info*, %struct.ext3_inode_info** %8, align 8
  %422 = getelementptr inbounds %struct.ext3_inode_info, %struct.ext3_inode_info* %421, i32 0, i32 2
  %423 = load i64*, i64** %422, align 8
  %424 = load %struct.inode*, %struct.inode** %10, align 8
  %425 = getelementptr inbounds %struct.inode, %struct.inode* %424, i32 0, i32 5
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @nd_terminate_link(i64* %423, i32 %426, i32 7)
  br label %433

428:                                              ; preds = %414
  %429 = load %struct.inode*, %struct.inode** %10, align 8
  %430 = getelementptr inbounds %struct.inode, %struct.inode* %429, i32 0, i32 7
  store i32* @ext3_symlink_inode_operations, i32** %430, align 8
  %431 = load %struct.inode*, %struct.inode** %10, align 8
  %432 = call i32 @ext3_set_aops(%struct.inode* %431)
  br label %433

433:                                              ; preds = %428, %418
  br label %472

434:                                              ; preds = %407
  %435 = load %struct.inode*, %struct.inode** %10, align 8
  %436 = getelementptr inbounds %struct.inode, %struct.inode* %435, i32 0, i32 7
  store i32* @ext3_special_inode_operations, i32** %436, align 8
  %437 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %438 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %437, i32 0, i32 0
  %439 = load i64*, i64** %438, align 8
  %440 = getelementptr inbounds i64, i64* %439, i64 0
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %457

443:                                              ; preds = %434
  %444 = load %struct.inode*, %struct.inode** %10, align 8
  %445 = load %struct.inode*, %struct.inode** %10, align 8
  %446 = getelementptr inbounds %struct.inode, %struct.inode* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = sext i32 %447 to i64
  %449 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %450 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %449, i32 0, i32 0
  %451 = load i64*, i64** %450, align 8
  %452 = getelementptr inbounds i64, i64* %451, i64 0
  %453 = load i64, i64* %452, align 8
  %454 = call i8* @le32_to_cpu(i64 %453)
  %455 = call i32 @old_decode_dev(i8* %454)
  %456 = call i32 @init_special_inode(%struct.inode* %444, i64 %448, i32 %455)
  br label %471

457:                                              ; preds = %434
  %458 = load %struct.inode*, %struct.inode** %10, align 8
  %459 = load %struct.inode*, %struct.inode** %10, align 8
  %460 = getelementptr inbounds %struct.inode, %struct.inode* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = sext i32 %461 to i64
  %463 = load %struct.ext3_inode*, %struct.ext3_inode** %7, align 8
  %464 = getelementptr inbounds %struct.ext3_inode, %struct.ext3_inode* %463, i32 0, i32 0
  %465 = load i64*, i64** %464, align 8
  %466 = getelementptr inbounds i64, i64* %465, i64 1
  %467 = load i64, i64* %466, align 8
  %468 = call i8* @le32_to_cpu(i64 %467)
  %469 = call i32 @new_decode_dev(i8* %468)
  %470 = call i32 @init_special_inode(%struct.inode* %458, i64 %462, i32 %469)
  br label %471

471:                                              ; preds = %457, %443
  br label %472

472:                                              ; preds = %471, %433
  br label %473

473:                                              ; preds = %472, %402
  br label %474

474:                                              ; preds = %473, %388
  %475 = getelementptr inbounds %struct.ext3_iloc, %struct.ext3_iloc* %6, i32 0, i32 0
  %476 = load %struct.buffer_head*, %struct.buffer_head** %475, align 8
  %477 = call i32 @brelse(%struct.buffer_head* %476)
  %478 = load %struct.inode*, %struct.inode** %10, align 8
  %479 = call i32 @ext3_set_inode_flags(%struct.inode* %478)
  %480 = load %struct.inode*, %struct.inode** %10, align 8
  %481 = call i32 @unlock_new_inode(%struct.inode* %480)
  %482 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %482, %struct.inode** %3, align 8
  br label %488

483:                                              ; preds = %338, %172, %48
  %484 = load %struct.inode*, %struct.inode** %10, align 8
  %485 = call i32 @iget_failed(%struct.inode* %484)
  %486 = load i64, i64* %13, align 8
  %487 = call %struct.inode* @ERR_PTR(i64 %486)
  store %struct.inode* %487, %struct.inode** %3, align 8
  br label %488

488:                                              ; preds = %483, %474, %37, %26
  %489 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %489
}

declare dso_local %struct.TYPE_12__* @EXT3_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i64) #1

declare dso_local %struct.ext3_inode_info* @EXT3_I(%struct.inode*) #1

declare dso_local i64 @__ext3_get_inode_loc(%struct.inode*, %struct.ext3_iloc*, i32) #1

declare dso_local %struct.ext3_inode* @ext3_raw_inode(%struct.ext3_iloc*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @test_opt(%struct.super_block*, i32) #1

declare dso_local i8* @le32_to_cpu(i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @S_ISREG(i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @EXT3_FIRST_INO(%struct.super_block*) #1

declare dso_local i64 @EXT3_INODE_SIZE(%struct.super_block*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ext3_set_aops(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i64) #1

declare dso_local i64 @S_ISLNK(i64) #1

declare dso_local i64 @ext3_inode_is_fast_symlink(%struct.inode*) #1

declare dso_local i32 @nd_terminate_link(i64*, i32, i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i64, i32) #1

declare dso_local i32 @old_decode_dev(i8*) #1

declare dso_local i32 @new_decode_dev(i8*) #1

declare dso_local i32 @ext3_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
