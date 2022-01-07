; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_populate_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_populate_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, %struct.super_block*, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__*, i64 }
%struct.super_block = type { i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32* }
%struct.ocfs2_dinode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ocfs2_super = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i64, i64, i64, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [19 x i8] c"(0x%p, size:%llu)\0A\00", align 1
@OCFS2_MOUNT_LOCALFLOCKS = common dso_local global i32 0, align 4
@OCFS2_VALID_FL = common dso_local global i32 0, align 4
@ocfs2_aops = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ip_blkno %llu != i_blkno %llu!\0A\00", align 1
@OCFS2_SYSTEM_FL = common dso_local global i32 0, align 4
@OCFS2_INODE_SYSTEM_FILE = common dso_local global i32 0, align 4
@S_NOQUOTA = common dso_local global i32 0, align 4
@OCFS2_LOCAL_ALLOC_FL = common dso_local global i32 0, align 4
@OCFS2_INODE_BITMAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"local alloc inode: i_ino=%lu\0A\00", align 1
@OCFS2_BITMAP_FL = common dso_local global i32 0, align 4
@OCFS2_QUOTA_FL = common dso_local global i32 0, align 4
@OCFS2_SUPER_BLOCK_FL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"superblock inode: i_ino=%lu\0A\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@ocfs2_fops = common dso_local global i32 0, align 4
@ocfs2_fops_no_plocks = common dso_local global i32 0, align 4
@ocfs2_file_iops = common dso_local global i32 0, align 4
@ocfs2_dir_iops = common dso_local global i32 0, align 4
@ocfs2_dops = common dso_local global i32 0, align 4
@ocfs2_dops_no_plocks = common dso_local global i32 0, align 4
@ocfs2_fast_symlink_inode_operations = common dso_local global i32 0, align 4
@ocfs2_symlink_inode_operations = common dso_local global i32 0, align 4
@ocfs2_special_file_iops = common dso_local global i32 0, align 4
@OCFS2_LOCK_TYPE_META = common dso_local global i32 0, align 4
@OCFS2_LOCK_TYPE_OPEN = common dso_local global i32 0, align 4
@OCFS2_LOCK_TYPE_RW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_populate_inode(%struct.inode* %0, %struct.ocfs2_dinode* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_dinode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %9, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %12 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %11, i32 0, i32 11
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le64_to_cpu(i32 %13)
  %15 = call i32 @mlog_entry(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.inode* %10, i64 %14)
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 5
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %7, align 8
  %19 = load %struct.super_block*, %struct.super_block** %7, align 8
  %20 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %19)
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %8, align 8
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %22 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @OCFS2_MOUNT_LOCALFLOCKS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %3
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %29 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = call i32 (...) @ocfs2_stack_supports_plocks()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %27, %3
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %37 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %43 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @OCFS2_VALID_FL, align 4
  %46 = call i32 @cpu_to_le32(i32 %45)
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %53 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %57 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %63 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %70 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %77 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %76, i32 0, i32 17
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @le16_to_cpu(i32 %78)
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %80)
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 9
  store i8* %79, i8** %82, align 8
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %86 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = load %struct.inode*, %struct.inode** %4, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %92 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %91, i32 0, i32 16
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @le64_to_cpu(i32 %95)
  %97 = call i32 @huge_decode_dev(i64 %96)
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 7
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %101 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %100, i32 0, i32 15
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @le16_to_cpu(i32 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.inode*, %struct.inode** %4, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %108 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le32_to_cpu(i32 %109)
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %114 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le32_to_cpu(i32 %115)
  %117 = load %struct.inode*, %struct.inode** %4, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  %119 = load %struct.inode*, %struct.inode** %4, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @S_ISLNK(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %35
  %125 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %126 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = load %struct.inode*, %struct.inode** %4, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 16
  store i64 0, i64* %131, align 8
  br label %137

132:                                              ; preds = %124, %35
  %133 = load %struct.inode*, %struct.inode** %4, align 8
  %134 = call i64 @ocfs2_inode_sector_count(%struct.inode* %133)
  %135 = load %struct.inode*, %struct.inode** %4, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 16
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %132, %129
  %138 = load %struct.inode*, %struct.inode** %4, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 15
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  store i32* @ocfs2_aops, i32** %141, align 8
  %142 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %143 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %142, i32 0, i32 14
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @le64_to_cpu(i32 %144)
  %146 = load %struct.inode*, %struct.inode** %4, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 14
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  store i64 %145, i64* %148, align 8
  %149 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %150 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @le32_to_cpu(i32 %151)
  %153 = load %struct.inode*, %struct.inode** %4, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 14
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  %156 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %157 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %156, i32 0, i32 13
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @le64_to_cpu(i32 %158)
  %160 = load %struct.inode*, %struct.inode** %4, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 13
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  store i64 %159, i64* %162, align 8
  %163 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %164 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @le32_to_cpu(i32 %165)
  %167 = load %struct.inode*, %struct.inode** %4, align 8
  %168 = getelementptr inbounds %struct.inode, %struct.inode* %167, i32 0, i32 13
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 8
  %170 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %171 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %170, i32 0, i32 12
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @le64_to_cpu(i32 %172)
  %174 = load %struct.inode*, %struct.inode** %4, align 8
  %175 = getelementptr inbounds %struct.inode, %struct.inode* %174, i32 0, i32 12
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  store i64 %173, i64* %176, align 8
  %177 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %178 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %177, i32 0, i32 9
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @le32_to_cpu(i32 %179)
  %181 = load %struct.inode*, %struct.inode** %4, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 12
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 8
  %184 = load %struct.inode*, %struct.inode** %4, align 8
  %185 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %184)
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %189 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %188, i32 0, i32 10
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @le64_to_cpu(i32 %190)
  %192 = icmp ne i64 %187, %191
  br i1 %192, label %193, label %204

193:                                              ; preds = %137
  %194 = load i32, i32* @ML_ERROR, align 4
  %195 = load %struct.inode*, %struct.inode** %4, align 8
  %196 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %195)
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %200 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %199, i32 0, i32 10
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @le64_to_cpu(i32 %201)
  %203 = call i32 (i32, i8*, i64, ...) @mlog(i32 %194, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %198, i64 %202)
  br label %204

204:                                              ; preds = %193, %137
  %205 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %206 = call i32 @ocfs2_read_links_count(%struct.ocfs2_dinode* %205)
  %207 = load %struct.inode*, %struct.inode** %4, align 8
  %208 = getelementptr inbounds %struct.inode, %struct.inode* %207, i32 0, i32 11
  store i32 %206, i32* %208, align 4
  %209 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %210 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @OCFS2_SYSTEM_FL, align 4
  %213 = call i32 @cpu_to_le32(i32 %212)
  %214 = and i32 %211, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %228

216:                                              ; preds = %204
  %217 = load i32, i32* @OCFS2_INODE_SYSTEM_FILE, align 4
  %218 = load %struct.inode*, %struct.inode** %4, align 8
  %219 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %218)
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 8
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %217
  store i32 %222, i32* %220, align 4
  %223 = load i32, i32* @S_NOQUOTA, align 4
  %224 = load %struct.inode*, %struct.inode** %4, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 10
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %216, %204
  %229 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %230 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @OCFS2_LOCAL_ALLOC_FL, align 4
  %233 = call i32 @cpu_to_le32(i32 %232)
  %234 = and i32 %231, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %228
  %237 = load i32, i32* @OCFS2_INODE_BITMAP, align 4
  %238 = load %struct.inode*, %struct.inode** %4, align 8
  %239 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %238)
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %237
  store i32 %242, i32* %240, align 4
  %243 = load %struct.inode*, %struct.inode** %4, align 8
  %244 = getelementptr inbounds %struct.inode, %struct.inode* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %246)
  br label %295

248:                                              ; preds = %228
  %249 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %250 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @OCFS2_BITMAP_FL, align 4
  %253 = call i32 @cpu_to_le32(i32 %252)
  %254 = and i32 %251, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %248
  %257 = load i32, i32* @OCFS2_INODE_BITMAP, align 4
  %258 = load %struct.inode*, %struct.inode** %4, align 8
  %259 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %258)
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 8
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %257
  store i32 %262, i32* %260, align 4
  br label %294

263:                                              ; preds = %248
  %264 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %265 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @OCFS2_QUOTA_FL, align 4
  %268 = call i32 @cpu_to_le32(i32 %267)
  %269 = and i32 %266, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %263
  %272 = load i32, i32* @S_NOQUOTA, align 4
  %273 = load %struct.inode*, %struct.inode** %4, align 8
  %274 = getelementptr inbounds %struct.inode, %struct.inode* %273, i32 0, i32 10
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  br label %293

277:                                              ; preds = %263
  %278 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %279 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @OCFS2_SUPER_BLOCK_FL, align 4
  %282 = call i32 @cpu_to_le32(i32 %281)
  %283 = and i32 %280, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %277
  %286 = load %struct.inode*, %struct.inode** %4, align 8
  %287 = getelementptr inbounds %struct.inode, %struct.inode* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %289)
  %291 = call i32 (...) @BUG()
  br label %292

292:                                              ; preds = %285, %277
  br label %293

293:                                              ; preds = %292, %271
  br label %294

294:                                              ; preds = %293, %256
  br label %295

295:                                              ; preds = %294, %236
  %296 = load %struct.inode*, %struct.inode** %4, align 8
  %297 = getelementptr inbounds %struct.inode, %struct.inode* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @S_IFMT, align 4
  %300 = and i32 %298, %299
  switch i32 %300, label %354 [
    i32 128, label %301
    i32 130, label %319
    i32 129, label %337
  ]

301:                                              ; preds = %295
  %302 = load i32, i32* %9, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load %struct.inode*, %struct.inode** %4, align 8
  %306 = getelementptr inbounds %struct.inode, %struct.inode* %305, i32 0, i32 9
  store i32* @ocfs2_fops, i32** %306, align 8
  br label %310

307:                                              ; preds = %301
  %308 = load %struct.inode*, %struct.inode** %4, align 8
  %309 = getelementptr inbounds %struct.inode, %struct.inode* %308, i32 0, i32 9
  store i32* @ocfs2_fops_no_plocks, i32** %309, align 8
  br label %310

310:                                              ; preds = %307, %304
  %311 = load %struct.inode*, %struct.inode** %4, align 8
  %312 = getelementptr inbounds %struct.inode, %struct.inode* %311, i32 0, i32 8
  store i32* @ocfs2_file_iops, i32** %312, align 8
  %313 = load %struct.inode*, %struct.inode** %4, align 8
  %314 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %315 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %314, i32 0, i32 11
  %316 = load i32, i32* %315, align 4
  %317 = call i64 @le64_to_cpu(i32 %316)
  %318 = call i32 @i_size_write(%struct.inode* %313, i64 %317)
  br label %365

319:                                              ; preds = %295
  %320 = load %struct.inode*, %struct.inode** %4, align 8
  %321 = getelementptr inbounds %struct.inode, %struct.inode* %320, i32 0, i32 8
  store i32* @ocfs2_dir_iops, i32** %321, align 8
  %322 = load i32, i32* %9, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %319
  %325 = load %struct.inode*, %struct.inode** %4, align 8
  %326 = getelementptr inbounds %struct.inode, %struct.inode* %325, i32 0, i32 9
  store i32* @ocfs2_dops, i32** %326, align 8
  br label %330

327:                                              ; preds = %319
  %328 = load %struct.inode*, %struct.inode** %4, align 8
  %329 = getelementptr inbounds %struct.inode, %struct.inode* %328, i32 0, i32 9
  store i32* @ocfs2_dops_no_plocks, i32** %329, align 8
  br label %330

330:                                              ; preds = %327, %324
  %331 = load %struct.inode*, %struct.inode** %4, align 8
  %332 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %333 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %332, i32 0, i32 11
  %334 = load i32, i32* %333, align 4
  %335 = call i64 @le64_to_cpu(i32 %334)
  %336 = call i32 @i_size_write(%struct.inode* %331, i64 %335)
  br label %365

337:                                              ; preds = %295
  %338 = load %struct.inode*, %struct.inode** %4, align 8
  %339 = call i32 @ocfs2_inode_is_fast_symlink(%struct.inode* %338)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %337
  %342 = load %struct.inode*, %struct.inode** %4, align 8
  %343 = getelementptr inbounds %struct.inode, %struct.inode* %342, i32 0, i32 8
  store i32* @ocfs2_fast_symlink_inode_operations, i32** %343, align 8
  br label %347

344:                                              ; preds = %337
  %345 = load %struct.inode*, %struct.inode** %4, align 8
  %346 = getelementptr inbounds %struct.inode, %struct.inode* %345, i32 0, i32 8
  store i32* @ocfs2_symlink_inode_operations, i32** %346, align 8
  br label %347

347:                                              ; preds = %344, %341
  %348 = load %struct.inode*, %struct.inode** %4, align 8
  %349 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %350 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %349, i32 0, i32 11
  %351 = load i32, i32* %350, align 4
  %352 = call i64 @le64_to_cpu(i32 %351)
  %353 = call i32 @i_size_write(%struct.inode* %348, i64 %352)
  br label %365

354:                                              ; preds = %295
  %355 = load %struct.inode*, %struct.inode** %4, align 8
  %356 = getelementptr inbounds %struct.inode, %struct.inode* %355, i32 0, i32 8
  store i32* @ocfs2_special_file_iops, i32** %356, align 8
  %357 = load %struct.inode*, %struct.inode** %4, align 8
  %358 = load %struct.inode*, %struct.inode** %4, align 8
  %359 = getelementptr inbounds %struct.inode, %struct.inode* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.inode*, %struct.inode** %4, align 8
  %362 = getelementptr inbounds %struct.inode, %struct.inode* %361, i32 0, i32 7
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @init_special_inode(%struct.inode* %357, i32 %360, i32 %363)
  br label %365

365:                                              ; preds = %354, %347, %330, %310
  %366 = load i32, i32* %6, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %398

368:                                              ; preds = %365
  %369 = load %struct.inode*, %struct.inode** %4, align 8
  %370 = getelementptr inbounds %struct.inode, %struct.inode* %369, i32 0, i32 5
  %371 = load %struct.super_block*, %struct.super_block** %370, align 8
  %372 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %373 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %372, i32 0, i32 10
  %374 = load i32, i32* %373, align 4
  %375 = call i64 @le64_to_cpu(i32 %374)
  %376 = call i32 @ino_from_blkno(%struct.super_block* %371, i64 %375)
  %377 = load %struct.inode*, %struct.inode** %4, align 8
  %378 = getelementptr inbounds %struct.inode, %struct.inode* %377, i32 0, i32 6
  store i32 %376, i32* %378, align 8
  %379 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %5, align 8
  %380 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @le32_to_cpu(i32 %381)
  %383 = load i32, i32* @OCFS2_SYSTEM_FL, align 4
  %384 = and i32 %382, %383
  %385 = call i32 @BUG_ON(i32 %384)
  %386 = load %struct.inode*, %struct.inode** %4, align 8
  %387 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %386)
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 7
  %389 = load i32, i32* @OCFS2_LOCK_TYPE_META, align 4
  %390 = load %struct.inode*, %struct.inode** %4, align 8
  %391 = call i32 @ocfs2_inode_lock_res_init(i32* %388, i32 %389, i32 0, %struct.inode* %390)
  %392 = load %struct.inode*, %struct.inode** %4, align 8
  %393 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %392)
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 6
  %395 = load i32, i32* @OCFS2_LOCK_TYPE_OPEN, align 4
  %396 = load %struct.inode*, %struct.inode** %4, align 8
  %397 = call i32 @ocfs2_inode_lock_res_init(i32* %394, i32 %395, i32 0, %struct.inode* %396)
  br label %398

398:                                              ; preds = %368, %365
  %399 = load %struct.inode*, %struct.inode** %4, align 8
  %400 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %399)
  %401 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %400, i32 0, i32 5
  %402 = load i32, i32* @OCFS2_LOCK_TYPE_RW, align 4
  %403 = load %struct.inode*, %struct.inode** %4, align 8
  %404 = getelementptr inbounds %struct.inode, %struct.inode* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.inode*, %struct.inode** %4, align 8
  %407 = call i32 @ocfs2_inode_lock_res_init(i32* %401, i32 %402, i32 %405, %struct.inode* %406)
  %408 = load %struct.inode*, %struct.inode** %4, align 8
  %409 = call i32 @ocfs2_set_inode_flags(%struct.inode* %408)
  %410 = load %struct.inode*, %struct.inode** %4, align 8
  %411 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %410)
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 4
  store i64 0, i64* %412, align 8
  %413 = load %struct.inode*, %struct.inode** %4, align 8
  %414 = call %struct.TYPE_14__* @OCFS2_I(%struct.inode* %413)
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 3
  store i64 0, i64* %415, align 8
  %416 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local i32 @mlog_entry(i8*, %struct.inode*, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_stack_supports_plocks(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_14__* @OCFS2_I(%struct.inode*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @huge_decode_dev(i64) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @ocfs2_inode_sector_count(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i32 @ocfs2_read_links_count(%struct.ocfs2_dinode*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @ocfs2_inode_is_fast_symlink(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @ino_from_blkno(%struct.super_block*, i64) #1

declare dso_local i32 @ocfs2_inode_lock_res_init(i32*, i32, i32, %struct.inode*) #1

declare dso_local i32 @ocfs2_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
