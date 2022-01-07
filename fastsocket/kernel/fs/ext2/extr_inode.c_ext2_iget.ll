; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_5__*, i32, i32*, i8*, i8*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.super_block = type { i32 }
%struct.ext2_inode_info = type { i64, i64*, i64, i64, i8*, i8*, i8*, i32, i32, i8*, i8*, i32* }
%struct.buffer_head = type { i32 }
%struct.ext2_inode = type { i64*, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@EIO = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@I_NEW = common dso_local global i32 0, align 4
@NO_UID32 = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i64 0, align 8
@EXT2_N_BLOCKS = common dso_local global i32 0, align 4
@ext2_file_inode_operations = common dso_local global i32 0, align 4
@ext2_aops_xip = common dso_local global i32 0, align 4
@ext2_xip_file_operations = common dso_local global i32 0, align 4
@NOBH = common dso_local global i32 0, align 4
@ext2_nobh_aops = common dso_local global i32 0, align 4
@ext2_file_operations = common dso_local global i32 0, align 4
@ext2_aops = common dso_local global i32 0, align 4
@ext2_dir_inode_operations = common dso_local global i32 0, align 4
@ext2_dir_operations = common dso_local global i32 0, align 4
@ext2_fast_symlink_inode_operations = common dso_local global i32 0, align 4
@ext2_symlink_inode_operations = common dso_local global i32 0, align 4
@ext2_special_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ext2_iget(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext2_inode_info*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ext2_inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* @EIO, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %10, align 8
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call %struct.inode* @iget_locked(%struct.super_block* %14, i64 %15)
  store %struct.inode* %16, %struct.inode** %9, align 8
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* @ENOMEM, align 8
  %21 = sub nsw i64 0, %20
  %22 = call %struct.inode* @ERR_PTR(i64 %21)
  store %struct.inode* %22, %struct.inode** %3, align 8
  br label %437

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @I_NEW, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %31, %struct.inode** %3, align 8
  br label %437

32:                                               ; preds = %23
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = call %struct.ext2_inode_info* @EXT2_I(%struct.inode* %33)
  store %struct.ext2_inode_info* %34, %struct.ext2_inode_info** %6, align 8
  %35 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %36 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %35, i32 0, i32 11
  store i32* null, i32** %36, align 8
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call %struct.ext2_inode* @ext2_get_inode(i32 %39, i64 %40, %struct.buffer_head** %7)
  store %struct.ext2_inode* %41, %struct.ext2_inode** %8, align 8
  %42 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %43 = call i64 @IS_ERR(%struct.ext2_inode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %47 = call i64 @PTR_ERR(%struct.ext2_inode* %46)
  store i64 %47, i64* %10, align 8
  br label %432

48:                                               ; preds = %32
  %49 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %50 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %49, i32 0, i32 20
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %56 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %55, i32 0, i32 19
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %62 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %61, i32 0, i32 18
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @NO_UID32, align 4
  %71 = call i64 @test_opt(i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %48
  %74 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %75 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %74, i32 0, i32 17
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = shl i32 %77, 16
  %79 = load %struct.inode*, %struct.inode** %9, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %84 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %83, i32 0, i32 16
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = shl i32 %86, 16
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %73, %48
  %93 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %94 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %93, i32 0, i32 15
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = load %struct.inode*, %struct.inode** %9, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %100 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %99, i32 0, i32 14
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @le32_to_cpu(i64 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.inode*, %struct.inode** %9, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %107 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %106, i32 0, i32 13
  %108 = load i64, i64* %107, align 8
  %109 = call i8* @le32_to_cpu(i64 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.inode*, %struct.inode** %9, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 14
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %115 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %114, i32 0, i32 12
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @le32_to_cpu(i64 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.inode*, %struct.inode** %9, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 12
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %123 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %122, i32 0, i32 11
  %124 = load i64, i64* %123, align 8
  %125 = call i8* @le32_to_cpu(i64 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.inode*, %struct.inode** %9, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 13
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.inode*, %struct.inode** %9, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 12
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load %struct.inode*, %struct.inode** %9, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 13
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i64 0, i64* %135, align 8
  %136 = load %struct.inode*, %struct.inode** %9, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 14
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  store i64 0, i64* %138, align 8
  %139 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %140 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %139, i32 0, i32 10
  %141 = load i64, i64* %140, align 8
  %142 = call i8* @le32_to_cpu(i64 %141)
  %143 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %144 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  %145 = load %struct.inode*, %struct.inode** %9, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %92
  %150 = load %struct.inode*, %struct.inode** %9, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %156 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %155, i32 0, i32 4
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %154, %149
  %160 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %161 = call i32 @brelse(%struct.buffer_head* %160)
  %162 = load i64, i64* @ESTALE, align 8
  %163 = sub nsw i64 0, %162
  store i64 %163, i64* %10, align 8
  br label %432

164:                                              ; preds = %154, %92
  %165 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %166 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %165, i32 0, i32 9
  %167 = load i64, i64* %166, align 8
  %168 = call i8* @le32_to_cpu(i64 %167)
  %169 = load %struct.inode*, %struct.inode** %9, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 11
  store i8* %168, i8** %170, align 8
  %171 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %172 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %171, i32 0, i32 8
  %173 = load i64, i64* %172, align 8
  %174 = call i8* @le32_to_cpu(i64 %173)
  %175 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %176 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %175, i32 0, i32 10
  store i8* %174, i8** %176, align 8
  %177 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %178 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %177, i32 0, i32 7
  %179 = load i64, i64* %178, align 8
  %180 = call i8* @le32_to_cpu(i64 %179)
  %181 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %182 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %181, i32 0, i32 9
  store i8* %180, i8** %182, align 8
  %183 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %184 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %187 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %186, i32 0, i32 8
  store i32 %185, i32* %187, align 4
  %188 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %189 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %192 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %191, i32 0, i32 7
  store i32 %190, i32* %192, align 8
  %193 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %194 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = call i8* @le32_to_cpu(i64 %195)
  %197 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %198 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %197, i32 0, i32 6
  store i8* %196, i8** %198, align 8
  %199 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %200 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %199, i32 0, i32 5
  store i8* null, i8** %200, align 8
  %201 = load %struct.inode*, %struct.inode** %9, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = call i64 @S_ISREG(i64 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %164
  %208 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %209 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = call i8* @le32_to_cpu(i64 %210)
  %212 = ptrtoint i8* %211 to i32
  %213 = shl i32 %212, 32
  %214 = load %struct.inode*, %struct.inode** %9, align 8
  %215 = getelementptr inbounds %struct.inode, %struct.inode* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 4
  br label %225

218:                                              ; preds = %164
  %219 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %220 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = call i8* @le32_to_cpu(i64 %221)
  %223 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %224 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %223, i32 0, i32 5
  store i8* %222, i8** %224, align 8
  br label %225

225:                                              ; preds = %218, %207
  %226 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %227 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %226, i32 0, i32 4
  store i8* null, i8** %227, align 8
  %228 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %229 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = call i8* @le32_to_cpu(i64 %230)
  %232 = load %struct.inode*, %struct.inode** %9, align 8
  %233 = getelementptr inbounds %struct.inode, %struct.inode* %232, i32 0, i32 10
  store i8* %231, i8** %233, align 8
  %234 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %235 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %234, i32 0, i32 3
  store i64 0, i64* %235, align 8
  %236 = load i64, i64* %5, align 8
  %237 = sub i64 %236, 1
  %238 = load %struct.inode*, %struct.inode** %9, align 8
  %239 = getelementptr inbounds %struct.inode, %struct.inode* %238, i32 0, i32 8
  %240 = load i32, i32* %239, align 8
  %241 = call i64 @EXT2_INODES_PER_GROUP(i32 %240)
  %242 = udiv i64 %237, %241
  %243 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %244 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %243, i32 0, i32 0
  store i64 %242, i64* %244, align 8
  %245 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %246 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %245, i32 0, i32 2
  store i64 0, i64* %246, align 8
  store i32 0, i32* %11, align 4
  br label %247

247:                                              ; preds = %265, %225
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* @EXT2_N_BLOCKS, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %268

251:                                              ; preds = %247
  %252 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %253 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %252, i32 0, i32 0
  %254 = load i64*, i64** %253, align 8
  %255 = load i32, i32* %11, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i64, i64* %254, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %260 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %259, i32 0, i32 1
  %261 = load i64*, i64** %260, align 8
  %262 = load i32, i32* %11, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i64, i64* %261, i64 %263
  store i64 %258, i64* %264, align 8
  br label %265

265:                                              ; preds = %251
  %266 = load i32, i32* %11, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %11, align 4
  br label %247

268:                                              ; preds = %247
  %269 = load %struct.inode*, %struct.inode** %9, align 8
  %270 = getelementptr inbounds %struct.inode, %struct.inode* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = call i64 @S_ISREG(i64 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %313

275:                                              ; preds = %268
  %276 = load %struct.inode*, %struct.inode** %9, align 8
  %277 = getelementptr inbounds %struct.inode, %struct.inode* %276, i32 0, i32 6
  store i32* @ext2_file_inode_operations, i32** %277, align 8
  %278 = load %struct.inode*, %struct.inode** %9, align 8
  %279 = getelementptr inbounds %struct.inode, %struct.inode* %278, i32 0, i32 8
  %280 = load i32, i32* %279, align 8
  %281 = call i64 @ext2_use_xip(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %275
  %284 = load %struct.inode*, %struct.inode** %9, align 8
  %285 = getelementptr inbounds %struct.inode, %struct.inode* %284, i32 0, i32 7
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 0
  store i32* @ext2_aops_xip, i32** %287, align 8
  %288 = load %struct.inode*, %struct.inode** %9, align 8
  %289 = getelementptr inbounds %struct.inode, %struct.inode* %288, i32 0, i32 9
  store i32* @ext2_xip_file_operations, i32** %289, align 8
  br label %312

290:                                              ; preds = %275
  %291 = load %struct.inode*, %struct.inode** %9, align 8
  %292 = getelementptr inbounds %struct.inode, %struct.inode* %291, i32 0, i32 8
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @NOBH, align 4
  %295 = call i64 @test_opt(i32 %293, i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %290
  %298 = load %struct.inode*, %struct.inode** %9, align 8
  %299 = getelementptr inbounds %struct.inode, %struct.inode* %298, i32 0, i32 7
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 0
  store i32* @ext2_nobh_aops, i32** %301, align 8
  %302 = load %struct.inode*, %struct.inode** %9, align 8
  %303 = getelementptr inbounds %struct.inode, %struct.inode* %302, i32 0, i32 9
  store i32* @ext2_file_operations, i32** %303, align 8
  br label %311

304:                                              ; preds = %290
  %305 = load %struct.inode*, %struct.inode** %9, align 8
  %306 = getelementptr inbounds %struct.inode, %struct.inode* %305, i32 0, i32 7
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 0
  store i32* @ext2_aops, i32** %308, align 8
  %309 = load %struct.inode*, %struct.inode** %9, align 8
  %310 = getelementptr inbounds %struct.inode, %struct.inode* %309, i32 0, i32 9
  store i32* @ext2_file_operations, i32** %310, align 8
  br label %311

311:                                              ; preds = %304, %297
  br label %312

312:                                              ; preds = %311, %283
  br label %424

313:                                              ; preds = %268
  %314 = load %struct.inode*, %struct.inode** %9, align 8
  %315 = getelementptr inbounds %struct.inode, %struct.inode* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = sext i32 %316 to i64
  %318 = call i64 @S_ISDIR(i64 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %342

320:                                              ; preds = %313
  %321 = load %struct.inode*, %struct.inode** %9, align 8
  %322 = getelementptr inbounds %struct.inode, %struct.inode* %321, i32 0, i32 6
  store i32* @ext2_dir_inode_operations, i32** %322, align 8
  %323 = load %struct.inode*, %struct.inode** %9, align 8
  %324 = getelementptr inbounds %struct.inode, %struct.inode* %323, i32 0, i32 9
  store i32* @ext2_dir_operations, i32** %324, align 8
  %325 = load %struct.inode*, %struct.inode** %9, align 8
  %326 = getelementptr inbounds %struct.inode, %struct.inode* %325, i32 0, i32 8
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @NOBH, align 4
  %329 = call i64 @test_opt(i32 %327, i32 %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %320
  %332 = load %struct.inode*, %struct.inode** %9, align 8
  %333 = getelementptr inbounds %struct.inode, %struct.inode* %332, i32 0, i32 7
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 0
  store i32* @ext2_nobh_aops, i32** %335, align 8
  br label %341

336:                                              ; preds = %320
  %337 = load %struct.inode*, %struct.inode** %9, align 8
  %338 = getelementptr inbounds %struct.inode, %struct.inode* %337, i32 0, i32 7
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 0
  store i32* @ext2_aops, i32** %340, align 8
  br label %341

341:                                              ; preds = %336, %331
  br label %423

342:                                              ; preds = %313
  %343 = load %struct.inode*, %struct.inode** %9, align 8
  %344 = getelementptr inbounds %struct.inode, %struct.inode* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = sext i32 %345 to i64
  %347 = call i64 @S_ISLNK(i64 %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %384

349:                                              ; preds = %342
  %350 = load %struct.inode*, %struct.inode** %9, align 8
  %351 = call i64 @ext2_inode_is_fast_symlink(%struct.inode* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %363

353:                                              ; preds = %349
  %354 = load %struct.inode*, %struct.inode** %9, align 8
  %355 = getelementptr inbounds %struct.inode, %struct.inode* %354, i32 0, i32 6
  store i32* @ext2_fast_symlink_inode_operations, i32** %355, align 8
  %356 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %357 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %356, i32 0, i32 1
  %358 = load i64*, i64** %357, align 8
  %359 = load %struct.inode*, %struct.inode** %9, align 8
  %360 = getelementptr inbounds %struct.inode, %struct.inode* %359, i32 0, i32 5
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @nd_terminate_link(i64* %358, i32 %361, i32 7)
  br label %383

363:                                              ; preds = %349
  %364 = load %struct.inode*, %struct.inode** %9, align 8
  %365 = getelementptr inbounds %struct.inode, %struct.inode* %364, i32 0, i32 6
  store i32* @ext2_symlink_inode_operations, i32** %365, align 8
  %366 = load %struct.inode*, %struct.inode** %9, align 8
  %367 = getelementptr inbounds %struct.inode, %struct.inode* %366, i32 0, i32 8
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @NOBH, align 4
  %370 = call i64 @test_opt(i32 %368, i32 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %363
  %373 = load %struct.inode*, %struct.inode** %9, align 8
  %374 = getelementptr inbounds %struct.inode, %struct.inode* %373, i32 0, i32 7
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 0
  store i32* @ext2_nobh_aops, i32** %376, align 8
  br label %382

377:                                              ; preds = %363
  %378 = load %struct.inode*, %struct.inode** %9, align 8
  %379 = getelementptr inbounds %struct.inode, %struct.inode* %378, i32 0, i32 7
  %380 = load %struct.TYPE_5__*, %struct.TYPE_5__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 0
  store i32* @ext2_aops, i32** %381, align 8
  br label %382

382:                                              ; preds = %377, %372
  br label %383

383:                                              ; preds = %382, %353
  br label %422

384:                                              ; preds = %342
  %385 = load %struct.inode*, %struct.inode** %9, align 8
  %386 = getelementptr inbounds %struct.inode, %struct.inode* %385, i32 0, i32 6
  store i32* @ext2_special_inode_operations, i32** %386, align 8
  %387 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %388 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %387, i32 0, i32 0
  %389 = load i64*, i64** %388, align 8
  %390 = getelementptr inbounds i64, i64* %389, i64 0
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %407

393:                                              ; preds = %384
  %394 = load %struct.inode*, %struct.inode** %9, align 8
  %395 = load %struct.inode*, %struct.inode** %9, align 8
  %396 = getelementptr inbounds %struct.inode, %struct.inode* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = sext i32 %397 to i64
  %399 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %400 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %399, i32 0, i32 0
  %401 = load i64*, i64** %400, align 8
  %402 = getelementptr inbounds i64, i64* %401, i64 0
  %403 = load i64, i64* %402, align 8
  %404 = call i8* @le32_to_cpu(i64 %403)
  %405 = call i32 @old_decode_dev(i8* %404)
  %406 = call i32 @init_special_inode(%struct.inode* %394, i64 %398, i32 %405)
  br label %421

407:                                              ; preds = %384
  %408 = load %struct.inode*, %struct.inode** %9, align 8
  %409 = load %struct.inode*, %struct.inode** %9, align 8
  %410 = getelementptr inbounds %struct.inode, %struct.inode* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = sext i32 %411 to i64
  %413 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %414 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %413, i32 0, i32 0
  %415 = load i64*, i64** %414, align 8
  %416 = getelementptr inbounds i64, i64* %415, i64 1
  %417 = load i64, i64* %416, align 8
  %418 = call i8* @le32_to_cpu(i64 %417)
  %419 = call i32 @new_decode_dev(i8* %418)
  %420 = call i32 @init_special_inode(%struct.inode* %408, i64 %412, i32 %419)
  br label %421

421:                                              ; preds = %407, %393
  br label %422

422:                                              ; preds = %421, %383
  br label %423

423:                                              ; preds = %422, %341
  br label %424

424:                                              ; preds = %423, %312
  %425 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %426 = call i32 @brelse(%struct.buffer_head* %425)
  %427 = load %struct.inode*, %struct.inode** %9, align 8
  %428 = call i32 @ext2_set_inode_flags(%struct.inode* %427)
  %429 = load %struct.inode*, %struct.inode** %9, align 8
  %430 = call i32 @unlock_new_inode(%struct.inode* %429)
  %431 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %431, %struct.inode** %3, align 8
  br label %437

432:                                              ; preds = %159, %45
  %433 = load %struct.inode*, %struct.inode** %9, align 8
  %434 = call i32 @iget_failed(%struct.inode* %433)
  %435 = load i64, i64* %10, align 8
  %436 = call %struct.inode* @ERR_PTR(i64 %435)
  store %struct.inode* %436, %struct.inode** %3, align 8
  br label %437

437:                                              ; preds = %432, %424, %30, %19
  %438 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %438
}

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i64) #1

declare dso_local %struct.ext2_inode_info* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.ext2_inode* @ext2_get_inode(i32, i64, %struct.buffer_head**) #1

declare dso_local i64 @IS_ERR(%struct.ext2_inode*) #1

declare dso_local i64 @PTR_ERR(%struct.ext2_inode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i8* @le32_to_cpu(i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @S_ISREG(i64) #1

declare dso_local i64 @EXT2_INODES_PER_GROUP(i32) #1

declare dso_local i64 @ext2_use_xip(i32) #1

declare dso_local i64 @S_ISDIR(i64) #1

declare dso_local i64 @S_ISLNK(i64) #1

declare dso_local i64 @ext2_inode_is_fast_symlink(%struct.inode*) #1

declare dso_local i32 @nd_terminate_link(i64*, i32, i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i64, i32) #1

declare dso_local i32 @old_decode_dev(i8*) #1

declare dso_local i32 @new_decode_dev(i8*) #1

declare dso_local i32 @ext2_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
