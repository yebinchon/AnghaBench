; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_super.c_btrfs_get_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_super.c_btrfs_get_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32 }
%struct.vfsmount = type { %struct.super_block*, %struct.super_block* }
%struct.super_block = type { i32, i32, i64, %struct.super_block* }
%struct.block_device = type { i32 }
%struct.dentry = type { i32, i32, i64, %struct.dentry* }
%struct.btrfs_fs_devices = type { i64, %struct.block_device* }
%struct.btrfs_fs_info = type { i8*, i8*, %struct.btrfs_fs_devices* }
%struct.TYPE_2__ = type { %struct.file_system_type* }

@FMODE_READ = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_SUPER_INFO_SIZE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@btrfs_test_super = common dso_local global i32 0, align 4
@btrfs_set_super = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@MS_SILENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)* @btrfs_get_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_get_sb(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3, %struct.vfsmount* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_system_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vfsmount*, align 8
  %12 = alloca %struct.block_device*, align 8
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca %struct.btrfs_fs_devices*, align 8
  %16 = alloca %struct.btrfs_fs_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.vfsmount* %4, %struct.vfsmount** %11, align 8
  store %struct.block_device* null, %struct.block_device** %12, align 8
  store %struct.btrfs_fs_devices* null, %struct.btrfs_fs_devices** %15, align 8
  store %struct.btrfs_fs_info* null, %struct.btrfs_fs_info** %16, align 8
  %24 = load i32, i32* @FMODE_READ, align 4
  store i32 %24, i32* %17, align 4
  store i8* null, i8** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @MS_RDONLY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @FMODE_WRITE, align 4
  %31 = load i32, i32* %17, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %17, align 4
  br label %33

33:                                               ; preds = %29, %5
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %17, align 4
  %36 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %37 = call i32 @btrfs_parse_early_options(i8* %34, i32 %35, %struct.file_system_type* %36, i8** %18, i32* %19, i32* %20, %struct.btrfs_fs_devices** %15)
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %21, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i8*, i8** %18, align 8
  %42 = call i32 @kfree(i8* %41)
  %43 = load i32, i32* %21, align 4
  store i32 %43, i32* %6, align 4
  br label %232

44:                                               ; preds = %33
  %45 = load i8*, i8** %18, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = load i8*, i8** %18, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call %struct.super_block* @mount_subvol(i8* %48, i32 %49, i8* %50, i8* %51)
  %53 = bitcast %struct.super_block* %52 to %struct.dentry*
  store %struct.dentry* %53, %struct.dentry** %14, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = call i32 @kfree(i8* %54)
  %56 = load %struct.dentry*, %struct.dentry** %14, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 3
  %58 = load %struct.dentry*, %struct.dentry** %57, align 8
  %59 = bitcast %struct.dentry* %58 to %struct.super_block*
  %60 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %61 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %60, i32 0, i32 1
  store %struct.super_block* %59, %struct.super_block** %61, align 8
  %62 = load %struct.dentry*, %struct.dentry** %14, align 8
  %63 = bitcast %struct.dentry* %62 to %struct.super_block*
  %64 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %65 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %64, i32 0, i32 0
  store %struct.super_block* %63, %struct.super_block** %65, align 8
  store i32 0, i32* %6, align 4
  br label %232

66:                                               ; preds = %44
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %17, align 4
  %69 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %70 = call i32 @btrfs_scan_one_device(i8* %67, i32 %68, %struct.file_system_type* %69, %struct.btrfs_fs_devices** %15)
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %21, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %21, align 4
  store i32 %74, i32* %6, align 4
  br label %232

75:                                               ; preds = %66
  %76 = load i32, i32* @GFP_NOFS, align 4
  %77 = call i8* @kzalloc(i32 24, i32 %76)
  %78 = bitcast i8* %77 to %struct.btrfs_fs_info*
  store %struct.btrfs_fs_info* %78, %struct.btrfs_fs_info** %16, align 8
  %79 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %80 = icmp ne %struct.btrfs_fs_info* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %232

84:                                               ; preds = %75
  %85 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %15, align 8
  %86 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %87 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %86, i32 0, i32 2
  store %struct.btrfs_fs_devices* %85, %struct.btrfs_fs_devices** %87, align 8
  %88 = load i32, i32* @BTRFS_SUPER_INFO_SIZE, align 4
  %89 = load i32, i32* @GFP_NOFS, align 4
  %90 = call i8* @kzalloc(i32 %88, i32 %89)
  %91 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %92 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @BTRFS_SUPER_INFO_SIZE, align 4
  %94 = load i32, i32* @GFP_NOFS, align 4
  %95 = call i8* @kzalloc(i32 %93, i32 %94)
  %96 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %97 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %99 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %84
  %103 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %104 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %102, %84
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %21, align 4
  br label %228

110:                                              ; preds = %102
  %111 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %15, align 8
  %112 = load i32, i32* %17, align 4
  %113 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %114 = call i32 @btrfs_open_devices(%struct.btrfs_fs_devices* %111, i32 %112, %struct.file_system_type* %113)
  store i32 %114, i32* %21, align 4
  %115 = load i32, i32* %21, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %228

118:                                              ; preds = %110
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @MS_RDONLY, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %118
  %124 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %15, align 8
  %125 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* @EACCES, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %21, align 4
  br label %225

131:                                              ; preds = %123, %118
  %132 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %15, align 8
  %133 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %132, i32 0, i32 1
  %134 = load %struct.block_device*, %struct.block_device** %133, align 8
  store %struct.block_device* %134, %struct.block_device** %12, align 8
  %135 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %136 = load i32, i32* @btrfs_test_super, align 4
  %137 = load i32, i32* @btrfs_set_super, align 4
  %138 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %139 = call %struct.super_block* @sget(%struct.file_system_type* %135, i32 %136, i32 %137, %struct.btrfs_fs_info* %138)
  store %struct.super_block* %139, %struct.super_block** %13, align 8
  %140 = load %struct.super_block*, %struct.super_block** %13, align 8
  %141 = call i64 @IS_ERR(%struct.super_block* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %131
  %144 = load %struct.super_block*, %struct.super_block** %13, align 8
  %145 = call i32 @PTR_ERR(%struct.super_block* %144)
  store i32 %145, i32* %21, align 4
  br label %225

146:                                              ; preds = %131
  %147 = load %struct.super_block*, %struct.super_block** %13, align 8
  %148 = getelementptr inbounds %struct.super_block, %struct.super_block* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %168

151:                                              ; preds = %146
  %152 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %15, align 8
  %153 = call i32 @btrfs_close_devices(%struct.btrfs_fs_devices* %152)
  %154 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %155 = call i32 @free_fs_info(%struct.btrfs_fs_info* %154)
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.super_block*, %struct.super_block** %13, align 8
  %158 = getelementptr inbounds %struct.super_block, %struct.super_block* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = xor i32 %156, %159
  %161 = load i32, i32* @MS_RDONLY, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %151
  %165 = load i32, i32* @EBUSY, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %21, align 4
  br label %167

167:                                              ; preds = %164, %151
  br label %197

168:                                              ; preds = %146
  %169 = load i32, i32* @BDEVNAME_SIZE, align 4
  %170 = zext i32 %169 to i64
  %171 = call i8* @llvm.stacksave()
  store i8* %171, i8** %22, align 8
  %172 = alloca i8, i64 %170, align 16
  store i64 %170, i64* %23, align 8
  %173 = load i32, i32* %8, align 4
  %174 = load %struct.super_block*, %struct.super_block** %13, align 8
  %175 = getelementptr inbounds %struct.super_block, %struct.super_block* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.super_block*, %struct.super_block** %13, align 8
  %177 = getelementptr inbounds %struct.super_block, %struct.super_block* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.block_device*, %struct.block_device** %12, align 8
  %180 = call i32 @bdevname(%struct.block_device* %179, i8* %172)
  %181 = call i32 @strlcpy(i32 %178, i32 %180, i32 4)
  %182 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %183 = load %struct.super_block*, %struct.super_block** %13, align 8
  %184 = call %struct.TYPE_2__* @btrfs_sb(%struct.super_block* %183)
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  store %struct.file_system_type* %182, %struct.file_system_type** %185, align 8
  %186 = load %struct.super_block*, %struct.super_block** %13, align 8
  %187 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %15, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @MS_SILENT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 1, i32 0
  %195 = call i32 @btrfs_fill_super(%struct.super_block* %186, %struct.btrfs_fs_devices* %187, i8* %188, i32 %194)
  store i32 %195, i32* %21, align 4
  %196 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %196)
  br label %197

197:                                              ; preds = %168, %167
  %198 = load i32, i32* %21, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %197
  %201 = load %struct.super_block*, %struct.super_block** %13, align 8
  %202 = load i32, i32* %19, align 4
  %203 = call %struct.super_block* @get_default_root(%struct.super_block* %201, i32 %202)
  br label %207

204:                                              ; preds = %197
  %205 = load i32, i32* %21, align 4
  %206 = call %struct.super_block* @ERR_PTR(i32 %205)
  br label %207

207:                                              ; preds = %204, %200
  %208 = phi %struct.super_block* [ %203, %200 ], [ %206, %204 ]
  %209 = bitcast %struct.super_block* %208 to %struct.dentry*
  store %struct.dentry* %209, %struct.dentry** %14, align 8
  %210 = load %struct.dentry*, %struct.dentry** %14, align 8
  %211 = bitcast %struct.dentry* %210 to %struct.super_block*
  %212 = call i64 @IS_ERR(%struct.super_block* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %207
  %215 = load %struct.super_block*, %struct.super_block** %13, align 8
  %216 = call i32 @deactivate_locked_super(%struct.super_block* %215)
  br label %217

217:                                              ; preds = %214, %207
  %218 = load %struct.super_block*, %struct.super_block** %13, align 8
  %219 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %220 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %219, i32 0, i32 1
  store %struct.super_block* %218, %struct.super_block** %220, align 8
  %221 = load %struct.dentry*, %struct.dentry** %14, align 8
  %222 = bitcast %struct.dentry* %221 to %struct.super_block*
  %223 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %224 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %223, i32 0, i32 0
  store %struct.super_block* %222, %struct.super_block** %224, align 8
  store i32 0, i32* %6, align 4
  br label %232

225:                                              ; preds = %143, %128
  %226 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %15, align 8
  %227 = call i32 @btrfs_close_devices(%struct.btrfs_fs_devices* %226)
  br label %228

228:                                              ; preds = %225, %117, %107
  %229 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %230 = call i32 @free_fs_info(%struct.btrfs_fs_info* %229)
  %231 = load i32, i32* %21, align 4
  store i32 %231, i32* %6, align 4
  br label %232

232:                                              ; preds = %228, %217, %81, %73, %47, %40
  %233 = load i32, i32* %6, align 4
  ret i32 %233
}

declare dso_local i32 @btrfs_parse_early_options(i8*, i32, %struct.file_system_type*, i8**, i32*, i32*, %struct.btrfs_fs_devices**) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.super_block* @mount_subvol(i8*, i32, i8*, i8*) #1

declare dso_local i32 @btrfs_scan_one_device(i8*, i32, %struct.file_system_type*, %struct.btrfs_fs_devices**) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @btrfs_open_devices(%struct.btrfs_fs_devices*, i32, %struct.file_system_type*) #1

declare dso_local %struct.super_block* @sget(%struct.file_system_type*, i32, i32, %struct.btrfs_fs_info*) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local i32 @PTR_ERR(%struct.super_block*) #1

declare dso_local i32 @btrfs_close_devices(%struct.btrfs_fs_devices*) #1

declare dso_local i32 @free_fs_info(%struct.btrfs_fs_info*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @bdevname(%struct.block_device*, i8*) #1

declare dso_local %struct.TYPE_2__* @btrfs_sb(%struct.super_block*) #1

declare dso_local i32 @btrfs_fill_super(%struct.super_block*, %struct.btrfs_fs_devices*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local %struct.super_block* @get_default_root(%struct.super_block*, i32) #1

declare dso_local %struct.super_block* @ERR_PTR(i32) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
