; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_dir.c_jffs2_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_dir.c_jffs2_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32*, i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %union.jffs2_device_node* }
%union.jffs2_device_node = type { i8* }
%struct.jffs2_inode_info = type { i32, i32, i32, %struct.jffs2_full_dnode* }
%struct.jffs2_full_dnode = type { i32, i32, i32, i32, i32*, i32 }
%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_raw_inode = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }
%struct.jffs2_raw_dirent = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }
%struct.jffs2_full_dirent = type { i32, i32, i32, i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ALLOC_NORMAL = common dso_local global i32 0, align 4
@JFFS2_SUMMARY_INODE_SIZE = common dso_local global i32 0, align 4
@jffs2_file_inode_operations = common dso_local global i32 0, align 4
@JFFS2_COMPR_NONE = common dso_local global i32 0, align 4
@JFFS2_MAGIC_BITMASK = common dso_local global i32 0, align 4
@JFFS2_NODETYPE_DIRENT = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @jffs2_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.jffs2_inode_info*, align 8
  %11 = alloca %struct.jffs2_inode_info*, align 8
  %12 = alloca %struct.jffs2_sb_info*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.jffs2_raw_inode*, align 8
  %15 = alloca %struct.jffs2_raw_dirent*, align 8
  %16 = alloca %struct.jffs2_full_dnode*, align 8
  %17 = alloca %struct.jffs2_full_dirent*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %union.jffs2_device_node, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %20, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @new_valid_dev(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %360

29:                                               ; preds = %4
  %30 = call %union.jffs2_device_node* (...) @jffs2_alloc_raw_inode()
  %31 = bitcast %union.jffs2_device_node* %30 to %struct.jffs2_raw_inode*
  store %struct.jffs2_raw_inode* %31, %struct.jffs2_raw_inode** %14, align 8
  %32 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %33 = icmp ne %struct.jffs2_raw_inode* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %360

37:                                               ; preds = %29
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %40)
  store %struct.jffs2_sb_info* %41, %struct.jffs2_sb_info** %12, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @S_ISBLK(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @S_ISCHR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %37
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @jffs2_encode_dev(%union.jffs2_device_node* %19, i32 %50)
  store i32 %51, i32* %20, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.dentry*, %struct.dentry** %7, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %18, align 4
  %57 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %58 = load i32, i32* %20, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 120, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @ALLOC_NORMAL, align 4
  %63 = load i32, i32* @JFFS2_SUMMARY_INODE_SIZE, align 4
  %64 = call i32 @jffs2_reserve_space(%struct.jffs2_sb_info* %57, i32 %61, i32* %21, i32 %62, i32 %63)
  store i32 %64, i32* %22, align 4
  %65 = load i32, i32* %22, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %52
  %68 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %69 = bitcast %struct.jffs2_raw_inode* %68 to %union.jffs2_device_node*
  %70 = call i32 @jffs2_free_raw_inode(%union.jffs2_device_node* %69)
  %71 = load i32, i32* %22, align 4
  store i32 %71, i32* %5, align 4
  br label %360

72:                                               ; preds = %52
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = bitcast %struct.inode* %73 to %struct.jffs2_full_dnode*
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %77 = bitcast %struct.jffs2_raw_inode* %76 to %union.jffs2_device_node*
  %78 = call %struct.jffs2_full_dnode* @jffs2_new_inode(%struct.jffs2_full_dnode* %74, i32 %75, %union.jffs2_device_node* %77)
  %79 = bitcast %struct.jffs2_full_dnode* %78 to %struct.inode*
  store %struct.inode* %79, %struct.inode** %13, align 8
  %80 = load %struct.inode*, %struct.inode** %13, align 8
  %81 = bitcast %struct.inode* %80 to %struct.jffs2_full_dnode*
  %82 = call i64 @IS_ERR(%struct.jffs2_full_dnode* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %72
  %85 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %86 = bitcast %struct.jffs2_raw_inode* %85 to %union.jffs2_device_node*
  %87 = call i32 @jffs2_free_raw_inode(%union.jffs2_device_node* %86)
  %88 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %89 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %88)
  %90 = load %struct.inode*, %struct.inode** %13, align 8
  %91 = bitcast %struct.inode* %90 to %struct.jffs2_full_dnode*
  %92 = call i32 @PTR_ERR(%struct.jffs2_full_dnode* %91)
  store i32 %92, i32* %5, align 4
  br label %360

93:                                               ; preds = %72
  %94 = load %struct.inode*, %struct.inode** %13, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 4
  store i32* @jffs2_file_inode_operations, i32** %95, align 8
  %96 = load %struct.inode*, %struct.inode** %13, align 8
  %97 = bitcast %struct.inode* %96 to %struct.jffs2_full_dnode*
  %98 = load %struct.inode*, %struct.inode** %13, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @init_special_inode(%struct.jffs2_full_dnode* %97, i32 %100, i32 %101)
  %103 = load %struct.inode*, %struct.inode** %13, align 8
  %104 = bitcast %struct.inode* %103 to %struct.jffs2_full_dnode*
  %105 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.jffs2_full_dnode* %104)
  store %struct.jffs2_inode_info* %105, %struct.jffs2_inode_info** %10, align 8
  %106 = load i32, i32* %20, align 4
  %107 = call i8* @cpu_to_je32(i32 %106)
  %108 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %109 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %108, i32 0, i32 14
  store i8* %107, i8** %109, align 8
  %110 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %111 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %110, i32 0, i32 15
  store i8* %107, i8** %111, align 8
  %112 = load i32, i32* %20, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 120, %113
  %115 = trunc i64 %114 to i32
  %116 = call i8* @cpu_to_je32(i32 %115)
  %117 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %118 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %117, i32 0, i32 9
  store i8* %116, i8** %118, align 8
  %119 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %120 = bitcast %struct.jffs2_raw_inode* %119 to %union.jffs2_device_node*
  %121 = call i32 @crc32(i32 0, %union.jffs2_device_node* %120, i32 0)
  %122 = call i8* @cpu_to_je32(i32 %121)
  %123 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %124 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %123, i32 0, i32 8
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* @JFFS2_COMPR_NONE, align 4
  %126 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %127 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %126, i32 0, i32 13
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %20, align 4
  %129 = call i32 @crc32(i32 0, %union.jffs2_device_node* %19, i32 %128)
  %130 = call i8* @cpu_to_je32(i32 %129)
  %131 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %132 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %131, i32 0, i32 12
  store i8* %130, i8** %132, align 8
  %133 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %134 = bitcast %struct.jffs2_raw_inode* %133 to %union.jffs2_device_node*
  %135 = call i32 @crc32(i32 0, %union.jffs2_device_node* %134, i32 112)
  %136 = call i8* @cpu_to_je32(i32 %135)
  %137 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %138 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %140 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %10, align 8
  %141 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %142 = bitcast %struct.jffs2_raw_inode* %141 to %union.jffs2_device_node*
  %143 = bitcast %union.jffs2_device_node* %19 to i8*
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* @ALLOC_NORMAL, align 4
  %146 = call %struct.jffs2_full_dnode* @jffs2_write_dnode(%struct.jffs2_sb_info* %139, %struct.jffs2_inode_info* %140, %union.jffs2_device_node* %142, i8* %143, i32 %144, i32 %145)
  store %struct.jffs2_full_dnode* %146, %struct.jffs2_full_dnode** %16, align 8
  %147 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %148 = bitcast %struct.jffs2_raw_inode* %147 to %union.jffs2_device_node*
  %149 = call i32 @jffs2_free_raw_inode(%union.jffs2_device_node* %148)
  %150 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %16, align 8
  %151 = call i64 @IS_ERR(%struct.jffs2_full_dnode* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %93
  %154 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %10, align 8
  %155 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %154, i32 0, i32 1
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %158 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %157)
  %159 = load %struct.inode*, %struct.inode** %13, align 8
  %160 = bitcast %struct.inode* %159 to %struct.jffs2_full_dnode*
  %161 = call i32 @jffs2_clear_inode(%struct.jffs2_full_dnode* %160)
  %162 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %16, align 8
  %163 = call i32 @PTR_ERR(%struct.jffs2_full_dnode* %162)
  store i32 %163, i32* %5, align 4
  br label %360

164:                                              ; preds = %93
  %165 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %16, align 8
  %166 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %10, align 8
  %167 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %166, i32 0, i32 3
  store %struct.jffs2_full_dnode* %165, %struct.jffs2_full_dnode** %167, align 8
  %168 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %10, align 8
  %169 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %168, i32 0, i32 1
  %170 = call i32 @mutex_unlock(i32* %169)
  %171 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %172 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %171)
  %173 = load %struct.inode*, %struct.inode** %13, align 8
  %174 = bitcast %struct.inode* %173 to %struct.jffs2_full_dnode*
  %175 = load %struct.inode*, %struct.inode** %6, align 8
  %176 = bitcast %struct.inode* %175 to %struct.jffs2_full_dnode*
  %177 = call i32 @jffs2_init_security(%struct.jffs2_full_dnode* %174, %struct.jffs2_full_dnode* %176)
  store i32 %177, i32* %22, align 4
  %178 = load i32, i32* %22, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %164
  %181 = load %struct.inode*, %struct.inode** %13, align 8
  %182 = bitcast %struct.inode* %181 to %struct.jffs2_full_dnode*
  %183 = call i32 @jffs2_clear_inode(%struct.jffs2_full_dnode* %182)
  %184 = load i32, i32* %22, align 4
  store i32 %184, i32* %5, align 4
  br label %360

185:                                              ; preds = %164
  %186 = load %struct.inode*, %struct.inode** %13, align 8
  %187 = bitcast %struct.inode* %186 to %struct.jffs2_full_dnode*
  %188 = call i32 @jffs2_init_acl_post(%struct.jffs2_full_dnode* %187)
  store i32 %188, i32* %22, align 4
  %189 = load i32, i32* %22, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %185
  %192 = load %struct.inode*, %struct.inode** %13, align 8
  %193 = bitcast %struct.inode* %192 to %struct.jffs2_full_dnode*
  %194 = call i32 @jffs2_clear_inode(%struct.jffs2_full_dnode* %193)
  %195 = load i32, i32* %22, align 4
  store i32 %195, i32* %5, align 4
  br label %360

196:                                              ; preds = %185
  %197 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %198 = load i32, i32* %18, align 4
  %199 = sext i32 %198 to i64
  %200 = add i64 120, %199
  %201 = trunc i64 %200 to i32
  %202 = load i32, i32* @ALLOC_NORMAL, align 4
  %203 = load i32, i32* %18, align 4
  %204 = call i32 @JFFS2_SUMMARY_DIRENT_SIZE(i32 %203)
  %205 = call i32 @jffs2_reserve_space(%struct.jffs2_sb_info* %197, i32 %201, i32* %21, i32 %202, i32 %204)
  store i32 %205, i32* %22, align 4
  %206 = load i32, i32* %22, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %196
  %209 = load %struct.inode*, %struct.inode** %13, align 8
  %210 = bitcast %struct.inode* %209 to %struct.jffs2_full_dnode*
  %211 = call i32 @jffs2_clear_inode(%struct.jffs2_full_dnode* %210)
  %212 = load i32, i32* %22, align 4
  store i32 %212, i32* %5, align 4
  br label %360

213:                                              ; preds = %196
  %214 = call %union.jffs2_device_node* (...) @jffs2_alloc_raw_dirent()
  %215 = bitcast %union.jffs2_device_node* %214 to %struct.jffs2_raw_dirent*
  store %struct.jffs2_raw_dirent* %215, %struct.jffs2_raw_dirent** %15, align 8
  %216 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %217 = icmp ne %struct.jffs2_raw_dirent* %216, null
  br i1 %217, label %226, label %218

218:                                              ; preds = %213
  %219 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %220 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %219)
  %221 = load %struct.inode*, %struct.inode** %13, align 8
  %222 = bitcast %struct.inode* %221 to %struct.jffs2_full_dnode*
  %223 = call i32 @jffs2_clear_inode(%struct.jffs2_full_dnode* %222)
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %5, align 4
  br label %360

226:                                              ; preds = %213
  %227 = load %struct.inode*, %struct.inode** %6, align 8
  %228 = bitcast %struct.inode* %227 to %struct.jffs2_full_dnode*
  %229 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.jffs2_full_dnode* %228)
  store %struct.jffs2_inode_info* %229, %struct.jffs2_inode_info** %11, align 8
  %230 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %11, align 8
  %231 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %230, i32 0, i32 1
  %232 = call i32 @mutex_lock(i32* %231)
  %233 = load i32, i32* @JFFS2_MAGIC_BITMASK, align 4
  %234 = call i8* @cpu_to_je16(i32 %233)
  %235 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %236 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %235, i32 0, i32 11
  store i8* %234, i8** %236, align 8
  %237 = load i32, i32* @JFFS2_NODETYPE_DIRENT, align 4
  %238 = call i8* @cpu_to_je16(i32 %237)
  %239 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %240 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %239, i32 0, i32 10
  store i8* %238, i8** %240, align 8
  %241 = load i32, i32* %18, align 4
  %242 = sext i32 %241 to i64
  %243 = add i64 120, %242
  %244 = trunc i64 %243 to i32
  %245 = call i8* @cpu_to_je32(i32 %244)
  %246 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %247 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %246, i32 0, i32 9
  store i8* %245, i8** %247, align 8
  %248 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %249 = bitcast %struct.jffs2_raw_dirent* %248 to %union.jffs2_device_node*
  %250 = call i32 @crc32(i32 0, %union.jffs2_device_node* %249, i32 0)
  %251 = call i8* @cpu_to_je32(i32 %250)
  %252 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %253 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %252, i32 0, i32 8
  store i8* %251, i8** %253, align 8
  %254 = load %struct.inode*, %struct.inode** %6, align 8
  %255 = getelementptr inbounds %struct.inode, %struct.inode* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i8* @cpu_to_je32(i32 %256)
  %258 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %259 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %258, i32 0, i32 7
  store i8* %257, i8** %259, align 8
  %260 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %11, align 8
  %261 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %261, align 8
  %264 = call i8* @cpu_to_je32(i32 %263)
  %265 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %266 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %265, i32 0, i32 6
  store i8* %264, i8** %266, align 8
  %267 = load %struct.inode*, %struct.inode** %13, align 8
  %268 = getelementptr inbounds %struct.inode, %struct.inode* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i8* @cpu_to_je32(i32 %269)
  %271 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %272 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %271, i32 0, i32 5
  store i8* %270, i8** %272, align 8
  %273 = call i32 (...) @get_seconds()
  %274 = call i8* @cpu_to_je32(i32 %273)
  %275 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %276 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %275, i32 0, i32 2
  store i8* %274, i8** %276, align 8
  %277 = load i32, i32* %18, align 4
  %278 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %279 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 8
  %280 = load i32, i32* %8, align 4
  %281 = load i32, i32* @S_IFMT, align 4
  %282 = and i32 %280, %281
  %283 = ashr i32 %282, 12
  %284 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %285 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 4
  %286 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %287 = bitcast %struct.jffs2_raw_dirent* %286 to %union.jffs2_device_node*
  %288 = call i32 @crc32(i32 0, %union.jffs2_device_node* %287, i32 112)
  %289 = call i8* @cpu_to_je32(i32 %288)
  %290 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %291 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %290, i32 0, i32 4
  store i8* %289, i8** %291, align 8
  %292 = load %struct.dentry*, %struct.dentry** %7, align 8
  %293 = getelementptr inbounds %struct.dentry, %struct.dentry* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 1
  %295 = load %union.jffs2_device_node*, %union.jffs2_device_node** %294, align 8
  %296 = load i32, i32* %18, align 4
  %297 = call i32 @crc32(i32 0, %union.jffs2_device_node* %295, i32 %296)
  %298 = call i8* @cpu_to_je32(i32 %297)
  %299 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %300 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %299, i32 0, i32 3
  store i8* %298, i8** %300, align 8
  %301 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %302 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %11, align 8
  %303 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %304 = bitcast %struct.jffs2_raw_dirent* %303 to %union.jffs2_device_node*
  %305 = load %struct.dentry*, %struct.dentry** %7, align 8
  %306 = getelementptr inbounds %struct.dentry, %struct.dentry* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 1
  %308 = load %union.jffs2_device_node*, %union.jffs2_device_node** %307, align 8
  %309 = load i32, i32* %18, align 4
  %310 = load i32, i32* @ALLOC_NORMAL, align 4
  %311 = call %struct.jffs2_full_dnode* @jffs2_write_dirent(%struct.jffs2_sb_info* %301, %struct.jffs2_inode_info* %302, %union.jffs2_device_node* %304, %union.jffs2_device_node* %308, i32 %309, i32 %310)
  %312 = bitcast %struct.jffs2_full_dnode* %311 to %struct.jffs2_full_dirent*
  store %struct.jffs2_full_dirent* %312, %struct.jffs2_full_dirent** %17, align 8
  %313 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %17, align 8
  %314 = bitcast %struct.jffs2_full_dirent* %313 to %struct.jffs2_full_dnode*
  %315 = call i64 @IS_ERR(%struct.jffs2_full_dnode* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %332

317:                                              ; preds = %226
  %318 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %319 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %318)
  %320 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %321 = bitcast %struct.jffs2_raw_dirent* %320 to %union.jffs2_device_node*
  %322 = call i32 @jffs2_free_raw_dirent(%union.jffs2_device_node* %321)
  %323 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %11, align 8
  %324 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %323, i32 0, i32 1
  %325 = call i32 @mutex_unlock(i32* %324)
  %326 = load %struct.inode*, %struct.inode** %13, align 8
  %327 = bitcast %struct.inode* %326 to %struct.jffs2_full_dnode*
  %328 = call i32 @jffs2_clear_inode(%struct.jffs2_full_dnode* %327)
  %329 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %17, align 8
  %330 = bitcast %struct.jffs2_full_dirent* %329 to %struct.jffs2_full_dnode*
  %331 = call i32 @PTR_ERR(%struct.jffs2_full_dnode* %330)
  store i32 %331, i32* %5, align 4
  br label %360

332:                                              ; preds = %226
  %333 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %334 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %333, i32 0, i32 2
  %335 = load i8*, i8** %334, align 8
  %336 = call i32 @je32_to_cpu(i8* %335)
  %337 = call i32 @ITIME(i32 %336)
  %338 = load %struct.inode*, %struct.inode** %6, align 8
  %339 = getelementptr inbounds %struct.inode, %struct.inode* %338, i32 0, i32 1
  store i32 %337, i32* %339, align 4
  %340 = load %struct.inode*, %struct.inode** %6, align 8
  %341 = getelementptr inbounds %struct.inode, %struct.inode* %340, i32 0, i32 2
  store i32 %337, i32* %341, align 8
  %342 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %343 = bitcast %struct.jffs2_raw_dirent* %342 to %union.jffs2_device_node*
  %344 = call i32 @jffs2_free_raw_dirent(%union.jffs2_device_node* %343)
  %345 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %346 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %17, align 8
  %347 = bitcast %struct.jffs2_full_dirent* %346 to %struct.jffs2_full_dnode*
  %348 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %11, align 8
  %349 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %348, i32 0, i32 2
  %350 = call i32 @jffs2_add_fd_to_list(%struct.jffs2_sb_info* %345, %struct.jffs2_full_dnode* %347, i32* %349)
  %351 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %11, align 8
  %352 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %351, i32 0, i32 1
  %353 = call i32 @mutex_unlock(i32* %352)
  %354 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %355 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %354)
  %356 = load %struct.dentry*, %struct.dentry** %7, align 8
  %357 = load %struct.inode*, %struct.inode** %13, align 8
  %358 = bitcast %struct.inode* %357 to %struct.jffs2_full_dnode*
  %359 = call i32 @d_instantiate(%struct.dentry* %356, %struct.jffs2_full_dnode* %358)
  store i32 0, i32* %5, align 4
  br label %360

360:                                              ; preds = %332, %317, %218, %208, %191, %180, %153, %84, %67, %34, %26
  %361 = load i32, i32* %5, align 4
  ret i32 %361
}

declare dso_local i32 @new_valid_dev(i32) #1

declare dso_local %union.jffs2_device_node* @jffs2_alloc_raw_inode(...) #1

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @jffs2_encode_dev(%union.jffs2_device_node*, i32) #1

declare dso_local i32 @jffs2_reserve_space(%struct.jffs2_sb_info*, i32, i32*, i32, i32) #1

declare dso_local i32 @jffs2_free_raw_inode(%union.jffs2_device_node*) #1

declare dso_local %struct.jffs2_full_dnode* @jffs2_new_inode(%struct.jffs2_full_dnode*, i32, %union.jffs2_device_node*) #1

declare dso_local i64 @IS_ERR(%struct.jffs2_full_dnode*) #1

declare dso_local i32 @jffs2_complete_reservation(%struct.jffs2_sb_info*) #1

declare dso_local i32 @PTR_ERR(%struct.jffs2_full_dnode*) #1

declare dso_local i32 @init_special_inode(%struct.jffs2_full_dnode*, i32, i32) #1

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.jffs2_full_dnode*) #1

declare dso_local i8* @cpu_to_je32(i32) #1

declare dso_local i32 @crc32(i32, %union.jffs2_device_node*, i32) #1

declare dso_local %struct.jffs2_full_dnode* @jffs2_write_dnode(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %union.jffs2_device_node*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @jffs2_clear_inode(%struct.jffs2_full_dnode*) #1

declare dso_local i32 @jffs2_init_security(%struct.jffs2_full_dnode*, %struct.jffs2_full_dnode*) #1

declare dso_local i32 @jffs2_init_acl_post(%struct.jffs2_full_dnode*) #1

declare dso_local i32 @JFFS2_SUMMARY_DIRENT_SIZE(i32) #1

declare dso_local %union.jffs2_device_node* @jffs2_alloc_raw_dirent(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_je16(i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local %struct.jffs2_full_dnode* @jffs2_write_dirent(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %union.jffs2_device_node*, %union.jffs2_device_node*, i32, i32) #1

declare dso_local i32 @jffs2_free_raw_dirent(%union.jffs2_device_node*) #1

declare dso_local i32 @ITIME(i32) #1

declare dso_local i32 @je32_to_cpu(i8*) #1

declare dso_local i32 @jffs2_add_fd_to_list(%struct.jffs2_sb_info*, %struct.jffs2_full_dnode*, i32*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.jffs2_full_dnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
