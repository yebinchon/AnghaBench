; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_reopen_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_reopen_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsFileInfo = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.cifs_sb_info = type { i32, i32, i32 }
%struct.cifs_tcon = type { i64, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.cifsInodeInfo = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"inode = 0x%p file flags 0x%x for %s\00", align 1
@REQ_OPLOCK = common dso_local global i32 0, align 4
@CAP_UNIX = common dso_local global i32 0, align 4
@CIFS_UNIX_POSIX_PATH_OPS_CAP = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"posix reopen succeeded\00", align 1
@CREATE_OPEN_BACKUP_INTENT = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"cifs_open returned 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"oplock: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifsFileInfo*, i32)* @cifs_reopen_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_reopen_file(%struct.cifsFileInfo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifsFileInfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_sb_info*, align 8
  %10 = alloca %struct.cifs_tcon*, align 8
  %11 = alloca %struct.cifsInodeInfo*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.cifsFileInfo* %0, %struct.cifsFileInfo** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load i32, i32* @EACCES, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  store i8* null, i8** %13, align 8
  %21 = load i32, i32* @FILE_OPEN, align 4
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* @CREATE_NOT_DIR, align 4
  store i32 %22, i32* %16, align 4
  %23 = call i32 (...) @GetXid()
  store i32 %23, i32* %7, align 4
  %24 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %25 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %24, i32 0, i32 2
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %28 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %2
  %32 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %33 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %32, i32 0, i32 2
  %34 = call i32 @mutex_unlock(i32* %33)
  store i32 0, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @FreeXid(i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %227

38:                                               ; preds = %2
  %39 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %40 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %39, i32 0, i32 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.inode*, %struct.inode** %42, align 8
  store %struct.inode* %43, %struct.inode** %12, align 8
  %44 = load %struct.inode*, %struct.inode** %12, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.cifs_sb_info* @CIFS_SB(i32 %46)
  store %struct.cifs_sb_info* %47, %struct.cifs_sb_info** %9, align 8
  %48 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %49 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.cifs_tcon* @tlink_tcon(i32 %50)
  store %struct.cifs_tcon* %51, %struct.cifs_tcon** %10, align 8
  %52 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %53 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %52, i32 0, i32 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i8* @build_path_from_dentry(%struct.TYPE_8__* %54)
  store i8* %55, i8** %13, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %38
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  %61 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %62 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %61, i32 0, i32 2
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @FreeXid(i32 %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %227

67:                                               ; preds = %38
  %68 = load %struct.inode*, %struct.inode** %12, align 8
  %69 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %70 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.inode* %68, i32 %71, i8* %72)
  %74 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %75 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %67
  %83 = load i32, i32* @REQ_OPLOCK, align 4
  store i32 %83, i32* %8, align 4
  br label %85

84:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %82
  %86 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %87 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %134

90:                                               ; preds = %85
  %91 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %92 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %91, i32 0, i32 2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @CAP_UNIX, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %134

99:                                               ; preds = %90
  %100 = load i32, i32* @CIFS_UNIX_POSIX_PATH_OPS_CAP, align 4
  %101 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %102 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @le64_to_cpu(i32 %104)
  %106 = and i32 %100, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %134

108:                                              ; preds = %99
  %109 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %110 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @O_CREAT, align 4
  %113 = load i32, i32* @O_EXCL, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @O_TRUNC, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = and i32 %111, %117
  store i32 %118, i32* %18, align 4
  %119 = load i8*, i8** %13, align 8
  %120 = load %struct.inode*, %struct.inode** %12, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %124 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @cifs_posix_open(i8* %119, i32* null, i32 %122, i32 %125, i32 %126, i32* %8, i32* %17, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %108
  %132 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %173

133:                                              ; preds = %108
  br label %134

134:                                              ; preds = %133, %99, %90, %85
  %135 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %136 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @cifs_convert_flags(i32 %137)
  store i32 %138, i32* %14, align 4
  %139 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %140 = call i64 @backup_cred(%struct.cifs_sb_info* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load i32, i32* @CREATE_OPEN_BACKUP_INTENT, align 4
  %144 = load i32, i32* %16, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %142, %134
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %149 = load i8*, i8** %13, align 8
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %154 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %157 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %160 = and i32 %158, %159
  %161 = call i32 @CIFSSMBOpen(i32 %147, %struct.cifs_tcon* %148, i8* %149, i32 %150, i32 %151, i32 %152, i32* %17, i32* %8, i32* null, i32 %155, i32 %160)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %146
  %165 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %166 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %165, i32 0, i32 2
  %167 = call i32 @mutex_unlock(i32* %166)
  %168 = load i32, i32* %6, align 4
  %169 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %8, align 4
  %171 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %170)
  br label %221

172:                                              ; preds = %146
  br label %173

173:                                              ; preds = %172, %131
  %174 = load i32, i32* %17, align 4
  %175 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %176 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  %177 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %178 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  %179 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %180 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %179, i32 0, i32 2
  %181 = call i32 @mutex_unlock(i32* %180)
  %182 = load %struct.inode*, %struct.inode** %12, align 8
  %183 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %182)
  store %struct.cifsInodeInfo* %183, %struct.cifsInodeInfo** %11, align 8
  %184 = load i32, i32* %5, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %215

186:                                              ; preds = %173
  %187 = load %struct.inode*, %struct.inode** %12, align 8
  %188 = getelementptr inbounds %struct.inode, %struct.inode* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @filemap_write_and_wait(i32 %189)
  store i32 %190, i32* %6, align 4
  %191 = load %struct.inode*, %struct.inode** %12, align 8
  %192 = getelementptr inbounds %struct.inode, %struct.inode* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @mapping_set_error(i32 %193, i32 %194)
  %196 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %197 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %186
  %201 = load i8*, i8** %13, align 8
  %202 = load %struct.inode*, %struct.inode** %12, align 8
  %203 = getelementptr inbounds %struct.inode, %struct.inode* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @cifs_get_inode_info_unix(%struct.inode** %12, i8* %201, i32 %204, i32 %205)
  store i32 %206, i32* %6, align 4
  br label %214

207:                                              ; preds = %186
  %208 = load i8*, i8** %13, align 8
  %209 = load %struct.inode*, %struct.inode** %12, align 8
  %210 = getelementptr inbounds %struct.inode, %struct.inode* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @cifs_get_inode_info(%struct.inode** %12, i8* %208, i32* null, i32 %211, i32 %212, i32* null)
  store i32 %213, i32* %6, align 4
  br label %214

214:                                              ; preds = %207, %200
  br label %215

215:                                              ; preds = %214, %173
  %216 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %11, align 8
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @cifs_set_oplock_level(%struct.cifsInodeInfo* %216, i32 %217)
  %219 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %4, align 8
  %220 = call i32 @cifs_relock_file(%struct.cifsFileInfo* %219)
  br label %221

221:                                              ; preds = %215, %164
  %222 = load i8*, i8** %13, align 8
  %223 = call i32 @kfree(i8* %222)
  %224 = load i32, i32* %7, align 4
  %225 = call i32 @FreeXid(i32 %224)
  %226 = load i32, i32* %6, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %221, %58, %31
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @GetXid(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @FreeXid(i32) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i8* @build_path_from_dentry(%struct.TYPE_8__*) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cifs_posix_open(i8*, i32*, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @cifs_convert_flags(i32) #1

declare dso_local i64 @backup_cred(%struct.cifs_sb_info*) #1

declare dso_local i32 @CIFSSMBOpen(i32, %struct.cifs_tcon*, i8*, i32, i32, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @mapping_set_error(i32, i32) #1

declare dso_local i32 @cifs_get_inode_info_unix(%struct.inode**, i8*, i32, i32) #1

declare dso_local i32 @cifs_get_inode_info(%struct.inode**, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @cifs_set_oplock_level(%struct.cifsInodeInfo*, i32) #1

declare dso_local i32 @cifs_relock_file(%struct.cifsFileInfo*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
