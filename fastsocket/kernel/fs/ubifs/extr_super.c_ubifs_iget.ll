; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_super.c_ubifs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32*, i32*, %struct.TYPE_8__*, i8*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.super_block = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_ino_node = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ubifs_inode = type { i64, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%union.ubifs_dev_desc = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"inode %lu\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@UBIFS_MAX_INO_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@S_NOCMTIME = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@UBIFS_XATTR_FL = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@ubifs_file_address_operations = common dso_local global i32 0, align 4
@ubifs_file_inode_operations = common dso_local global i32 0, align 4
@ubifs_file_operations = common dso_local global i32 0, align 4
@ubifs_dir_inode_operations = common dso_local global i32 0, align 4
@ubifs_dir_operations = common dso_local global i32 0, align 4
@ubifs_symlink_inode_operations = common dso_local global i32 0, align 4
@UBIFS_MAX_INO_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"inode %lu validation failed, error %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to read inode %lu, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ubifs_iget(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.ubifs_key, align 4
  %8 = alloca %struct.ubifs_ino_node*, align 8
  %9 = alloca %struct.ubifs_info*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ubifs_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.ubifs_dev_desc*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %15, align 8
  store %struct.ubifs_info* %16, %struct.ubifs_info** %9, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @dbg_gen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.inode* @iget_locked(%struct.super_block* %19, i64 %20)
  store %struct.inode* %21, %struct.inode** %10, align 8
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = icmp ne %struct.inode* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.inode* @ERR_PTR(i32 %26)
  store %struct.inode* %27, %struct.inode** %3, align 8
  br label %446

28:                                               ; preds = %2
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @I_NEW, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %36, %struct.inode** %3, align 8
  br label %446

37:                                               ; preds = %28
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  %39 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %38)
  store %struct.ubifs_inode* %39, %struct.ubifs_inode** %11, align 8
  %40 = load i32, i32* @UBIFS_MAX_INO_NODE_SZ, align 4
  %41 = load i32, i32* @GFP_NOFS, align 4
  %42 = call i8* @kmalloc(i32 %40, i32 %41)
  %43 = bitcast i8* %42 to %struct.ubifs_ino_node*
  store %struct.ubifs_ino_node* %43, %struct.ubifs_ino_node** %8, align 8
  %44 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %45 = icmp ne %struct.ubifs_ino_node* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %436

49:                                               ; preds = %37
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ino_key_init(%struct.ubifs_info* %50, %union.ubifs_key* %7, i32 %53)
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %56 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %57 = call i32 @ubifs_tnc_lookup(%struct.ubifs_info* %55, %union.ubifs_key* %7, %struct.ubifs_ino_node* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %433

61:                                               ; preds = %49
  %62 = load i32, i32* @S_NOCMTIME, align 4
  %63 = load i32, i32* @S_NOATIME, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %70 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %69, i32 0, i32 18
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @le32_to_cpu(i32 %71)
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 13
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %76 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %75, i32 0, i32 17
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @le32_to_cpu(i32 %77)
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 12
  store i8* %78, i8** %80, align 8
  %81 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %82 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %81, i32 0, i32 16
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @le32_to_cpu(i32 %83)
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 11
  store i8* %84, i8** %86, align 8
  %87 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %88 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %87, i32 0, i32 15
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @le64_to_cpu(i32 %89)
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 10
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i8* %90, i8** %93, align 8
  %94 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %95 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %94, i32 0, i32 14
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @le32_to_cpu(i32 %96)
  %98 = load %struct.inode*, %struct.inode** %10, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 10
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i8* %97, i8** %100, align 8
  %101 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %102 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %101, i32 0, i32 13
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @le64_to_cpu(i32 %103)
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 9
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  store i8* %104, i8** %107, align 8
  %108 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %109 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %108, i32 0, i32 12
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @le32_to_cpu(i32 %110)
  %112 = load %struct.inode*, %struct.inode** %10, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 9
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  %115 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %116 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %115, i32 0, i32 11
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @le64_to_cpu(i32 %117)
  %119 = load %struct.inode*, %struct.inode** %10, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  %122 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %123 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @le32_to_cpu(i32 %124)
  %126 = load %struct.inode*, %struct.inode** %10, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  store i8* %125, i8** %128, align 8
  %129 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %130 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 8
  %132 = call i8* @le32_to_cpu(i32 %131)
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.inode*, %struct.inode** %10, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %137 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @le64_to_cpu(i32 %138)
  %140 = load %struct.inode*, %struct.inode** %10, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 7
  store i8* %139, i8** %141, align 8
  %142 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %143 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = call i8* @le32_to_cpu(i32 %144)
  %146 = ptrtoint i8* %145 to i64
  %147 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %148 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %150 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @le32_to_cpu(i32 %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %155 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %157 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @le16_to_cpu(i32 %158)
  %160 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %161 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %160, i32 0, i32 10
  store i32 %159, i32* %161, align 8
  %162 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %163 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @le64_to_cpu(i32 %164)
  %166 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %167 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %166, i32 0, i32 9
  store i8* %165, i8** %167, align 8
  %168 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %169 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = call i8* @le32_to_cpu(i32 %170)
  %172 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %173 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %172, i32 0, i32 8
  store i8* %171, i8** %173, align 8
  %174 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %175 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @le32_to_cpu(i32 %176)
  %178 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %179 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %178, i32 0, i32 7
  store i8* %177, i8** %179, align 8
  %180 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %181 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i8* @le32_to_cpu(i32 %182)
  %184 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %185 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %184, i32 0, i32 6
  store i8* %183, i8** %185, align 8
  %186 = load %struct.inode*, %struct.inode** %10, align 8
  %187 = getelementptr inbounds %struct.inode, %struct.inode* %186, i32 0, i32 7
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %190 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %189, i32 0, i32 4
  store i8* %188, i8** %190, align 8
  %191 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %192 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %191, i32 0, i32 5
  store i8* %188, i8** %192, align 8
  %193 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %194 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @UBIFS_XATTR_FL, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 1, i32 0
  %201 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %202 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 4
  %203 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %204 = load %struct.inode*, %struct.inode** %10, align 8
  %205 = call i32 @validate_inode(%struct.ubifs_info* %203, %struct.inode* %204)
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* %6, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %61
  br label %419

209:                                              ; preds = %61
  %210 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %211 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %210, i32 0, i32 0
  %212 = load %struct.inode*, %struct.inode** %10, align 8
  %213 = getelementptr inbounds %struct.inode, %struct.inode* %212, i32 0, i32 6
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  store i32* %211, i32** %215, align 8
  %216 = load %struct.inode*, %struct.inode** %10, align 8
  %217 = getelementptr inbounds %struct.inode, %struct.inode* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @S_IFMT, align 4
  %220 = and i32 %218, %219
  switch i32 %220, label %410 [
    i32 129, label %221
    i32 132, label %277
    i32 130, label %288
    i32 134, label %337
    i32 133, label %337
    i32 128, label %396
    i32 131, label %396
  ]

221:                                              ; preds = %209
  %222 = load %struct.inode*, %struct.inode** %10, align 8
  %223 = getelementptr inbounds %struct.inode, %struct.inode* %222, i32 0, i32 6
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  store i32* @ubifs_file_address_operations, i32** %225, align 8
  %226 = load %struct.inode*, %struct.inode** %10, align 8
  %227 = getelementptr inbounds %struct.inode, %struct.inode* %226, i32 0, i32 4
  store i32* @ubifs_file_inode_operations, i32** %227, align 8
  %228 = load %struct.inode*, %struct.inode** %10, align 8
  %229 = getelementptr inbounds %struct.inode, %struct.inode* %228, i32 0, i32 5
  store i32* @ubifs_file_operations, i32** %229, align 8
  %230 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %231 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %269

234:                                              ; preds = %221
  %235 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %236 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = add i64 %237, 1
  %239 = trunc i64 %238 to i32
  %240 = load i32, i32* @GFP_NOFS, align 4
  %241 = call i8* @kmalloc(i32 %239, i32 %240)
  %242 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %243 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %242, i32 0, i32 3
  store i8* %241, i8** %243, align 8
  %244 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %245 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %244, i32 0, i32 3
  %246 = load i8*, i8** %245, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %251, label %248

248:                                              ; preds = %234
  %249 = load i32, i32* @ENOMEM, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %6, align 4
  br label %433

251:                                              ; preds = %234
  %252 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %253 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %252, i32 0, i32 3
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %256 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %259 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @memcpy(i8* %254, i64 %257, i64 %260)
  %262 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %263 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %262, i32 0, i32 3
  %264 = load i8*, i8** %263, align 8
  %265 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %266 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds i8, i8* %264, i64 %267
  store i8 0, i8* %268, align 1
  br label %276

269:                                              ; preds = %221
  %270 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %271 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %269
  store i32 10, i32* %6, align 4
  br label %419

275:                                              ; preds = %269
  br label %276

276:                                              ; preds = %275, %251
  br label %411

277:                                              ; preds = %209
  %278 = load %struct.inode*, %struct.inode** %10, align 8
  %279 = getelementptr inbounds %struct.inode, %struct.inode* %278, i32 0, i32 4
  store i32* @ubifs_dir_inode_operations, i32** %279, align 8
  %280 = load %struct.inode*, %struct.inode** %10, align 8
  %281 = getelementptr inbounds %struct.inode, %struct.inode* %280, i32 0, i32 5
  store i32* @ubifs_dir_operations, i32** %281, align 8
  %282 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %283 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %277
  store i32 11, i32* %6, align 4
  br label %419

287:                                              ; preds = %277
  br label %411

288:                                              ; preds = %209
  %289 = load %struct.inode*, %struct.inode** %10, align 8
  %290 = getelementptr inbounds %struct.inode, %struct.inode* %289, i32 0, i32 4
  store i32* @ubifs_symlink_inode_operations, i32** %290, align 8
  %291 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %292 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp ule i64 %293, 0
  br i1 %294, label %301, label %295

295:                                              ; preds = %288
  %296 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %297 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @UBIFS_MAX_INO_DATA, align 8
  %300 = icmp ugt i64 %298, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %295, %288
  store i32 12, i32* %6, align 4
  br label %419

302:                                              ; preds = %295
  %303 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %304 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = add i64 %305, 1
  %307 = trunc i64 %306 to i32
  %308 = load i32, i32* @GFP_NOFS, align 4
  %309 = call i8* @kmalloc(i32 %307, i32 %308)
  %310 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %311 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %310, i32 0, i32 3
  store i8* %309, i8** %311, align 8
  %312 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %313 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %312, i32 0, i32 3
  %314 = load i8*, i8** %313, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %319, label %316

316:                                              ; preds = %302
  %317 = load i32, i32* @ENOMEM, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %6, align 4
  br label %433

319:                                              ; preds = %302
  %320 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %321 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %320, i32 0, i32 3
  %322 = load i8*, i8** %321, align 8
  %323 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %324 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %327 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = call i32 @memcpy(i8* %322, i64 %325, i64 %328)
  %330 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %331 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %330, i32 0, i32 3
  %332 = load i8*, i8** %331, align 8
  %333 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %334 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = getelementptr inbounds i8, i8* %332, i64 %335
  store i8 0, i8* %336, align 1
  br label %411

337:                                              ; preds = %209, %209
  %338 = load i32, i32* @GFP_NOFS, align 4
  %339 = call i8* @kmalloc(i32 4, i32 %338)
  %340 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %341 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %340, i32 0, i32 3
  store i8* %339, i8** %341, align 8
  %342 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %343 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %342, i32 0, i32 3
  %344 = load i8*, i8** %343, align 8
  %345 = icmp ne i8* %344, null
  br i1 %345, label %349, label %346

346:                                              ; preds = %337
  %347 = load i32, i32* @ENOMEM, align 4
  %348 = sub nsw i32 0, %347
  store i32 %348, i32* %6, align 4
  br label %433

349:                                              ; preds = %337
  %350 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %351 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = inttoptr i64 %352 to %union.ubifs_dev_desc*
  store %union.ubifs_dev_desc* %353, %union.ubifs_dev_desc** %13, align 8
  %354 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %355 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = icmp eq i64 %356, 4
  br i1 %357, label %358, label %364

358:                                              ; preds = %349
  %359 = load %union.ubifs_dev_desc*, %union.ubifs_dev_desc** %13, align 8
  %360 = bitcast %union.ubifs_dev_desc* %359 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = call i8* @le32_to_cpu(i32 %361)
  %363 = call i32 @new_decode_dev(i8* %362)
  store i32 %363, i32* %12, align 4
  br label %377

364:                                              ; preds = %349
  %365 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %366 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = icmp eq i64 %367, 4
  br i1 %368, label %369, label %375

369:                                              ; preds = %364
  %370 = load %union.ubifs_dev_desc*, %union.ubifs_dev_desc** %13, align 8
  %371 = bitcast %union.ubifs_dev_desc* %370 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = call i8* @le64_to_cpu(i32 %372)
  %374 = call i32 @huge_decode_dev(i8* %373)
  store i32 %374, i32* %12, align 4
  br label %376

375:                                              ; preds = %364
  store i32 13, i32* %6, align 4
  br label %419

376:                                              ; preds = %369
  br label %377

377:                                              ; preds = %376, %358
  %378 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %379 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %378, i32 0, i32 3
  %380 = load i8*, i8** %379, align 8
  %381 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %382 = getelementptr inbounds %struct.ubifs_ino_node, %struct.ubifs_ino_node* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %385 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = call i32 @memcpy(i8* %380, i64 %383, i64 %386)
  %388 = load %struct.inode*, %struct.inode** %10, align 8
  %389 = getelementptr inbounds %struct.inode, %struct.inode* %388, i32 0, i32 4
  store i32* @ubifs_file_inode_operations, i32** %389, align 8
  %390 = load %struct.inode*, %struct.inode** %10, align 8
  %391 = load %struct.inode*, %struct.inode** %10, align 8
  %392 = getelementptr inbounds %struct.inode, %struct.inode* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* %12, align 4
  %395 = call i32 @init_special_inode(%struct.inode* %390, i32 %393, i32 %394)
  br label %411

396:                                              ; preds = %209, %209
  %397 = load %struct.inode*, %struct.inode** %10, align 8
  %398 = getelementptr inbounds %struct.inode, %struct.inode* %397, i32 0, i32 4
  store i32* @ubifs_file_inode_operations, i32** %398, align 8
  %399 = load %struct.inode*, %struct.inode** %10, align 8
  %400 = load %struct.inode*, %struct.inode** %10, align 8
  %401 = getelementptr inbounds %struct.inode, %struct.inode* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @init_special_inode(%struct.inode* %399, i32 %402, i32 0)
  %404 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %405 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %396
  store i32 14, i32* %6, align 4
  br label %419

409:                                              ; preds = %396
  br label %411

410:                                              ; preds = %209
  store i32 15, i32* %6, align 4
  br label %419

411:                                              ; preds = %409, %377, %319, %287, %276
  %412 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %413 = call i32 @kfree(%struct.ubifs_ino_node* %412)
  %414 = load %struct.inode*, %struct.inode** %10, align 8
  %415 = call i32 @ubifs_set_inode_flags(%struct.inode* %414)
  %416 = load %struct.inode*, %struct.inode** %10, align 8
  %417 = call i32 @unlock_new_inode(%struct.inode* %416)
  %418 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %418, %struct.inode** %3, align 8
  br label %446

419:                                              ; preds = %410, %408, %375, %301, %286, %274, %208
  %420 = load %struct.inode*, %struct.inode** %10, align 8
  %421 = getelementptr inbounds %struct.inode, %struct.inode* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* %6, align 4
  %424 = call i32 @ubifs_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %422, i32 %423)
  %425 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %426 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %427 = call i32 @dbg_dump_node(%struct.ubifs_info* %425, %struct.ubifs_ino_node* %426)
  %428 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %429 = load %struct.inode*, %struct.inode** %10, align 8
  %430 = call i32 @dbg_dump_inode(%struct.ubifs_info* %428, %struct.inode* %429)
  %431 = load i32, i32* @EINVAL, align 4
  %432 = sub nsw i32 0, %431
  store i32 %432, i32* %6, align 4
  br label %433

433:                                              ; preds = %419, %346, %316, %248, %60
  %434 = load %struct.ubifs_ino_node*, %struct.ubifs_ino_node** %8, align 8
  %435 = call i32 @kfree(%struct.ubifs_ino_node* %434)
  br label %436

436:                                              ; preds = %433, %46
  %437 = load %struct.inode*, %struct.inode** %10, align 8
  %438 = getelementptr inbounds %struct.inode, %struct.inode* %437, i32 0, i32 3
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* %6, align 4
  %441 = call i32 @ubifs_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %439, i32 %440)
  %442 = load %struct.inode*, %struct.inode** %10, align 8
  %443 = call i32 @iget_failed(%struct.inode* %442)
  %444 = load i32, i32* %6, align 4
  %445 = call %struct.inode* @ERR_PTR(i32 %444)
  store %struct.inode* %445, %struct.inode** %3, align 8
  br label %446

446:                                              ; preds = %436, %411, %35, %24
  %447 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %447
}

declare dso_local i32 @dbg_gen(i8*, i64) #1

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ino_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32) #1

declare dso_local i32 @ubifs_tnc_lookup(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_ino_node*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @validate_inode(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @new_decode_dev(i8*) #1

declare dso_local i32 @huge_decode_dev(i8*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_ino_node*) #1

declare dso_local i32 @ubifs_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_err(i8*, i32, i32) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, %struct.ubifs_ino_node*) #1

declare dso_local i32 @dbg_dump_inode(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
