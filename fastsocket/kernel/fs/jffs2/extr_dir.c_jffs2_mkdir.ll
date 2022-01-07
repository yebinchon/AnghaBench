; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_dir.c_jffs2_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_dir.c_jffs2_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32*, i32*, i32 }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.jffs2_raw_inode* }
%struct.jffs2_raw_inode = type { i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.jffs2_inode_info = type { i32, i32, i32, %struct.jffs2_full_dnode*, %struct.TYPE_3__* }
%struct.jffs2_full_dnode = type { i32, i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_raw_dirent = type { i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.jffs2_full_dirent = type { i32, i32, i32, i32, i32*, i32*, i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ALLOC_NORMAL = common dso_local global i32 0, align 4
@JFFS2_SUMMARY_INODE_SIZE = common dso_local global i32 0, align 4
@jffs2_dir_inode_operations = common dso_local global i32 0, align 4
@jffs2_dir_operations = common dso_local global i32 0, align 4
@JFFS2_MAGIC_BITMASK = common dso_local global i32 0, align 4
@JFFS2_NODETYPE_DIRENT = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @jffs2_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.jffs2_inode_info*, align 8
  %9 = alloca %struct.jffs2_inode_info*, align 8
  %10 = alloca %struct.jffs2_sb_info*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.jffs2_raw_inode*, align 8
  %13 = alloca %struct.jffs2_raw_dirent*, align 8
  %14 = alloca %struct.jffs2_full_dnode*, align 8
  %15 = alloca %struct.jffs2_full_dirent*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* @S_IFDIR, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = call %struct.jffs2_raw_inode* (...) @jffs2_alloc_raw_inode()
  store %struct.jffs2_raw_inode* %22, %struct.jffs2_raw_inode** %12, align 8
  %23 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %24 = icmp ne %struct.jffs2_raw_inode* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %308

28:                                               ; preds = %3
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %31)
  store %struct.jffs2_sb_info* %32, %struct.jffs2_sb_info** %10, align 8
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %16, align 4
  %37 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %38 = load i32, i32* @ALLOC_NORMAL, align 4
  %39 = load i32, i32* @JFFS2_SUMMARY_INODE_SIZE, align 4
  %40 = call i32 @jffs2_reserve_space(%struct.jffs2_sb_info* %37, i32 104, i32* %17, i32 %38, i32 %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %28
  %44 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %45 = call i32 @jffs2_free_raw_inode(%struct.jffs2_raw_inode* %44)
  %46 = load i32, i32* %18, align 4
  store i32 %46, i32* %4, align 4
  br label %308

47:                                               ; preds = %28
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = bitcast %struct.inode* %48 to %struct.jffs2_full_dnode*
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %52 = call %struct.jffs2_full_dnode* @jffs2_new_inode(%struct.jffs2_full_dnode* %49, i32 %50, %struct.jffs2_raw_inode* %51)
  %53 = bitcast %struct.jffs2_full_dnode* %52 to %struct.inode*
  store %struct.inode* %53, %struct.inode** %11, align 8
  %54 = load %struct.inode*, %struct.inode** %11, align 8
  %55 = bitcast %struct.inode* %54 to %struct.jffs2_full_dnode*
  %56 = call i64 @IS_ERR(%struct.jffs2_full_dnode* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %60 = call i32 @jffs2_free_raw_inode(%struct.jffs2_raw_inode* %59)
  %61 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %62 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %61)
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = bitcast %struct.inode* %63 to %struct.jffs2_full_dnode*
  %65 = call i32 @PTR_ERR(%struct.jffs2_full_dnode* %64)
  store i32 %65, i32* %4, align 4
  br label %308

66:                                               ; preds = %47
  %67 = load %struct.inode*, %struct.inode** %11, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 5
  store i32* @jffs2_dir_inode_operations, i32** %68, align 8
  %69 = load %struct.inode*, %struct.inode** %11, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 4
  store i32* @jffs2_dir_operations, i32** %70, align 8
  %71 = load %struct.inode*, %struct.inode** %11, align 8
  %72 = bitcast %struct.inode* %71 to %struct.jffs2_full_dnode*
  %73 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.jffs2_full_dnode* %72)
  store %struct.jffs2_inode_info* %73, %struct.jffs2_inode_info** %8, align 8
  %74 = load %struct.inode*, %struct.inode** %11, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  store i32 2, i32* %75, align 8
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %80 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %79, i32 0, i32 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 4
  %83 = call i8* @cpu_to_je32(i32 0)
  %84 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %85 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %84, i32 0, i32 12
  store i8* %83, i8** %85, align 8
  %86 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %87 = call i32 @crc32(i32 0, %struct.jffs2_raw_inode* %86, i32 96)
  %88 = call i8* @cpu_to_je32(i32 %87)
  %89 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %90 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %92 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %93 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %94 = load i32, i32* @ALLOC_NORMAL, align 4
  %95 = call %struct.jffs2_full_dnode* @jffs2_write_dnode(%struct.jffs2_sb_info* %91, %struct.jffs2_inode_info* %92, %struct.jffs2_raw_inode* %93, i32* null, i32 0, i32 %94)
  store %struct.jffs2_full_dnode* %95, %struct.jffs2_full_dnode** %14, align 8
  %96 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %97 = call i32 @jffs2_free_raw_inode(%struct.jffs2_raw_inode* %96)
  %98 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %14, align 8
  %99 = call i64 @IS_ERR(%struct.jffs2_full_dnode* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %66
  %102 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %103 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %102, i32 0, i32 1
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %106 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %105)
  %107 = load %struct.inode*, %struct.inode** %11, align 8
  %108 = bitcast %struct.inode* %107 to %struct.jffs2_full_dnode*
  %109 = call i32 @jffs2_clear_inode(%struct.jffs2_full_dnode* %108)
  %110 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %14, align 8
  %111 = call i32 @PTR_ERR(%struct.jffs2_full_dnode* %110)
  store i32 %111, i32* %4, align 4
  br label %308

112:                                              ; preds = %66
  %113 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %14, align 8
  %114 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %115 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %114, i32 0, i32 3
  store %struct.jffs2_full_dnode* %113, %struct.jffs2_full_dnode** %115, align 8
  %116 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %117 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %120 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %119)
  %121 = load %struct.inode*, %struct.inode** %11, align 8
  %122 = bitcast %struct.inode* %121 to %struct.jffs2_full_dnode*
  %123 = load %struct.inode*, %struct.inode** %5, align 8
  %124 = bitcast %struct.inode* %123 to %struct.jffs2_full_dnode*
  %125 = call i32 @jffs2_init_security(%struct.jffs2_full_dnode* %122, %struct.jffs2_full_dnode* %124)
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %112
  %129 = load %struct.inode*, %struct.inode** %11, align 8
  %130 = bitcast %struct.inode* %129 to %struct.jffs2_full_dnode*
  %131 = call i32 @jffs2_clear_inode(%struct.jffs2_full_dnode* %130)
  %132 = load i32, i32* %18, align 4
  store i32 %132, i32* %4, align 4
  br label %308

133:                                              ; preds = %112
  %134 = load %struct.inode*, %struct.inode** %11, align 8
  %135 = bitcast %struct.inode* %134 to %struct.jffs2_full_dnode*
  %136 = call i32 @jffs2_init_acl_post(%struct.jffs2_full_dnode* %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load %struct.inode*, %struct.inode** %11, align 8
  %141 = bitcast %struct.inode* %140 to %struct.jffs2_full_dnode*
  %142 = call i32 @jffs2_clear_inode(%struct.jffs2_full_dnode* %141)
  %143 = load i32, i32* %18, align 4
  store i32 %143, i32* %4, align 4
  br label %308

144:                                              ; preds = %133
  %145 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 104, %147
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* @ALLOC_NORMAL, align 4
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @JFFS2_SUMMARY_DIRENT_SIZE(i32 %151)
  %153 = call i32 @jffs2_reserve_space(%struct.jffs2_sb_info* %145, i32 %149, i32* %17, i32 %150, i32 %152)
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %144
  %157 = load %struct.inode*, %struct.inode** %11, align 8
  %158 = bitcast %struct.inode* %157 to %struct.jffs2_full_dnode*
  %159 = call i32 @jffs2_clear_inode(%struct.jffs2_full_dnode* %158)
  %160 = load i32, i32* %18, align 4
  store i32 %160, i32* %4, align 4
  br label %308

161:                                              ; preds = %144
  %162 = call %struct.jffs2_raw_inode* (...) @jffs2_alloc_raw_dirent()
  %163 = bitcast %struct.jffs2_raw_inode* %162 to %struct.jffs2_raw_dirent*
  store %struct.jffs2_raw_dirent* %163, %struct.jffs2_raw_dirent** %13, align 8
  %164 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %165 = icmp ne %struct.jffs2_raw_dirent* %164, null
  br i1 %165, label %174, label %166

166:                                              ; preds = %161
  %167 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %168 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %167)
  %169 = load %struct.inode*, %struct.inode** %11, align 8
  %170 = bitcast %struct.inode* %169 to %struct.jffs2_full_dnode*
  %171 = call i32 @jffs2_clear_inode(%struct.jffs2_full_dnode* %170)
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  br label %308

174:                                              ; preds = %161
  %175 = load %struct.inode*, %struct.inode** %5, align 8
  %176 = bitcast %struct.inode* %175 to %struct.jffs2_full_dnode*
  %177 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.jffs2_full_dnode* %176)
  store %struct.jffs2_inode_info* %177, %struct.jffs2_inode_info** %9, align 8
  %178 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %179 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %178, i32 0, i32 1
  %180 = call i32 @mutex_lock(i32* %179)
  %181 = load i32, i32* @JFFS2_MAGIC_BITMASK, align 4
  %182 = call i8* @cpu_to_je16(i32 %181)
  %183 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %184 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %183, i32 0, i32 11
  store i8* %182, i8** %184, align 8
  %185 = load i32, i32* @JFFS2_NODETYPE_DIRENT, align 4
  %186 = call i8* @cpu_to_je16(i32 %185)
  %187 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %188 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %187, i32 0, i32 10
  store i8* %186, i8** %188, align 8
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = add i64 104, %190
  %192 = trunc i64 %191 to i32
  %193 = call i8* @cpu_to_je32(i32 %192)
  %194 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %195 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %194, i32 0, i32 9
  store i8* %193, i8** %195, align 8
  %196 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %197 = bitcast %struct.jffs2_raw_dirent* %196 to %struct.jffs2_raw_inode*
  %198 = call i32 @crc32(i32 0, %struct.jffs2_raw_inode* %197, i32 0)
  %199 = call i8* @cpu_to_je32(i32 %198)
  %200 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %201 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %200, i32 0, i32 8
  store i8* %199, i8** %201, align 8
  %202 = load %struct.inode*, %struct.inode** %5, align 8
  %203 = getelementptr inbounds %struct.inode, %struct.inode* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i8* @cpu_to_je32(i32 %204)
  %206 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %207 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %206, i32 0, i32 7
  store i8* %205, i8** %207, align 8
  %208 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %209 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 8
  %212 = call i8* @cpu_to_je32(i32 %211)
  %213 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %214 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %213, i32 0, i32 6
  store i8* %212, i8** %214, align 8
  %215 = load %struct.inode*, %struct.inode** %11, align 8
  %216 = getelementptr inbounds %struct.inode, %struct.inode* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i8* @cpu_to_je32(i32 %217)
  %219 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %220 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %219, i32 0, i32 5
  store i8* %218, i8** %220, align 8
  %221 = call i32 (...) @get_seconds()
  %222 = call i8* @cpu_to_je32(i32 %221)
  %223 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %224 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %223, i32 0, i32 1
  store i8* %222, i8** %224, align 8
  %225 = load i32, i32* %16, align 4
  %226 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %227 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* @DT_DIR, align 4
  %229 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %230 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %229, i32 0, i32 4
  store i32 %228, i32* %230, align 8
  %231 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %232 = bitcast %struct.jffs2_raw_dirent* %231 to %struct.jffs2_raw_inode*
  %233 = call i32 @crc32(i32 0, %struct.jffs2_raw_inode* %232, i32 96)
  %234 = call i8* @cpu_to_je32(i32 %233)
  %235 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %236 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %235, i32 0, i32 3
  store i8* %234, i8** %236, align 8
  %237 = load %struct.dentry*, %struct.dentry** %6, align 8
  %238 = getelementptr inbounds %struct.dentry, %struct.dentry* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  %240 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %239, align 8
  %241 = load i32, i32* %16, align 4
  %242 = call i32 @crc32(i32 0, %struct.jffs2_raw_inode* %240, i32 %241)
  %243 = call i8* @cpu_to_je32(i32 %242)
  %244 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %245 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %244, i32 0, i32 2
  store i8* %243, i8** %245, align 8
  %246 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %247 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %248 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %249 = bitcast %struct.jffs2_raw_dirent* %248 to %struct.jffs2_raw_inode*
  %250 = load %struct.dentry*, %struct.dentry** %6, align 8
  %251 = getelementptr inbounds %struct.dentry, %struct.dentry* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  %253 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %252, align 8
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* @ALLOC_NORMAL, align 4
  %256 = call %struct.jffs2_full_dnode* @jffs2_write_dirent(%struct.jffs2_sb_info* %246, %struct.jffs2_inode_info* %247, %struct.jffs2_raw_inode* %249, %struct.jffs2_raw_inode* %253, i32 %254, i32 %255)
  %257 = bitcast %struct.jffs2_full_dnode* %256 to %struct.jffs2_full_dirent*
  store %struct.jffs2_full_dirent* %257, %struct.jffs2_full_dirent** %15, align 8
  %258 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %15, align 8
  %259 = bitcast %struct.jffs2_full_dirent* %258 to %struct.jffs2_full_dnode*
  %260 = call i64 @IS_ERR(%struct.jffs2_full_dnode* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %277

262:                                              ; preds = %174
  %263 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %264 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %263)
  %265 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %266 = bitcast %struct.jffs2_raw_dirent* %265 to %struct.jffs2_raw_inode*
  %267 = call i32 @jffs2_free_raw_dirent(%struct.jffs2_raw_inode* %266)
  %268 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %269 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %268, i32 0, i32 1
  %270 = call i32 @mutex_unlock(i32* %269)
  %271 = load %struct.inode*, %struct.inode** %11, align 8
  %272 = bitcast %struct.inode* %271 to %struct.jffs2_full_dnode*
  %273 = call i32 @jffs2_clear_inode(%struct.jffs2_full_dnode* %272)
  %274 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %15, align 8
  %275 = bitcast %struct.jffs2_full_dirent* %274 to %struct.jffs2_full_dnode*
  %276 = call i32 @PTR_ERR(%struct.jffs2_full_dnode* %275)
  store i32 %276, i32* %4, align 4
  br label %308

277:                                              ; preds = %174
  %278 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %279 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %278, i32 0, i32 1
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @je32_to_cpu(i8* %280)
  %282 = call i32 @ITIME(i32 %281)
  %283 = load %struct.inode*, %struct.inode** %5, align 8
  %284 = getelementptr inbounds %struct.inode, %struct.inode* %283, i32 0, i32 2
  store i32 %282, i32* %284, align 8
  %285 = load %struct.inode*, %struct.inode** %5, align 8
  %286 = getelementptr inbounds %struct.inode, %struct.inode* %285, i32 0, i32 3
  store i32 %282, i32* %286, align 4
  %287 = load %struct.inode*, %struct.inode** %5, align 8
  %288 = bitcast %struct.inode* %287 to %struct.jffs2_full_dnode*
  %289 = call i32 @inc_nlink(%struct.jffs2_full_dnode* %288)
  %290 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %291 = bitcast %struct.jffs2_raw_dirent* %290 to %struct.jffs2_raw_inode*
  %292 = call i32 @jffs2_free_raw_dirent(%struct.jffs2_raw_inode* %291)
  %293 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %294 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %15, align 8
  %295 = bitcast %struct.jffs2_full_dirent* %294 to %struct.jffs2_full_dnode*
  %296 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %297 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %296, i32 0, i32 2
  %298 = call i32 @jffs2_add_fd_to_list(%struct.jffs2_sb_info* %293, %struct.jffs2_full_dnode* %295, i32* %297)
  %299 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %300 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %299, i32 0, i32 1
  %301 = call i32 @mutex_unlock(i32* %300)
  %302 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %303 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %302)
  %304 = load %struct.dentry*, %struct.dentry** %6, align 8
  %305 = load %struct.inode*, %struct.inode** %11, align 8
  %306 = bitcast %struct.inode* %305 to %struct.jffs2_full_dnode*
  %307 = call i32 @d_instantiate(%struct.dentry* %304, %struct.jffs2_full_dnode* %306)
  store i32 0, i32* %4, align 4
  br label %308

308:                                              ; preds = %277, %262, %166, %156, %139, %128, %101, %58, %43, %25
  %309 = load i32, i32* %4, align 4
  ret i32 %309
}

declare dso_local %struct.jffs2_raw_inode* @jffs2_alloc_raw_inode(...) #1

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local i32 @jffs2_reserve_space(%struct.jffs2_sb_info*, i32, i32*, i32, i32) #1

declare dso_local i32 @jffs2_free_raw_inode(%struct.jffs2_raw_inode*) #1

declare dso_local %struct.jffs2_full_dnode* @jffs2_new_inode(%struct.jffs2_full_dnode*, i32, %struct.jffs2_raw_inode*) #1

declare dso_local i64 @IS_ERR(%struct.jffs2_full_dnode*) #1

declare dso_local i32 @jffs2_complete_reservation(%struct.jffs2_sb_info*) #1

declare dso_local i32 @PTR_ERR(%struct.jffs2_full_dnode*) #1

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.jffs2_full_dnode*) #1

declare dso_local i8* @cpu_to_je32(i32) #1

declare dso_local i32 @crc32(i32, %struct.jffs2_raw_inode*, i32) #1

declare dso_local %struct.jffs2_full_dnode* @jffs2_write_dnode(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %struct.jffs2_raw_inode*, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @jffs2_clear_inode(%struct.jffs2_full_dnode*) #1

declare dso_local i32 @jffs2_init_security(%struct.jffs2_full_dnode*, %struct.jffs2_full_dnode*) #1

declare dso_local i32 @jffs2_init_acl_post(%struct.jffs2_full_dnode*) #1

declare dso_local i32 @JFFS2_SUMMARY_DIRENT_SIZE(i32) #1

declare dso_local %struct.jffs2_raw_inode* @jffs2_alloc_raw_dirent(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_je16(i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local %struct.jffs2_full_dnode* @jffs2_write_dirent(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode*, i32, i32) #1

declare dso_local i32 @jffs2_free_raw_dirent(%struct.jffs2_raw_inode*) #1

declare dso_local i32 @ITIME(i32) #1

declare dso_local i32 @je32_to_cpu(i8*) #1

declare dso_local i32 @inc_nlink(%struct.jffs2_full_dnode*) #1

declare dso_local i32 @jffs2_add_fd_to_list(%struct.jffs2_sb_info*, %struct.jffs2_full_dnode*, i32*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.jffs2_full_dnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
