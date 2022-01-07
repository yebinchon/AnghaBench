; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_get_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_get_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32 }
%struct.vfsmount = type { %struct.super_block*, %struct.super_block* }
%struct.super_block = type { i32, i32, i32, i32, %struct.super_block* }
%struct.nfs_server = type { i32, i32, i32, i32, %struct.nfs_server* }
%struct.nfs_parsed_mount_data = type { i32, i32, i32* }
%struct.nfs_fh = type { i32 }
%struct.dentry = type { i32, i32, i32, i32, %struct.dentry* }
%struct.nfs_sb_mountdata = type { i32, %struct.super_block* }

@ENOMEM = common dso_local global i32 0, align 4
@NFS_DEFAULT_VERSION = common dso_local global i32 0, align 4
@NFS_MOUNT_UNSHARED = common dso_local global i32 0, align 4
@NFS_MOUNT_NOAC = common dso_local global i32 0, align 4
@MS_SYNCHRONOUS = common dso_local global i32 0, align 4
@nfs_set_super = common dso_local global i32 0, align 4
@MS_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)* @nfs_get_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_get_sb(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3, %struct.vfsmount* %4) #0 {
  %6 = alloca %struct.file_system_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vfsmount*, align 8
  %11 = alloca %struct.nfs_server*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.nfs_parsed_mount_data*, align 8
  %14 = alloca %struct.nfs_fh*, align 8
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca i32 (%struct.super_block*, i8*)*, align 8
  %17 = alloca %struct.nfs_sb_mountdata, align 8
  %18 = alloca i32, align 4
  store %struct.file_system_type* %0, %struct.file_system_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.vfsmount* %4, %struct.vfsmount** %10, align 8
  store %struct.nfs_server* null, %struct.nfs_server** %11, align 8
  store i32 (%struct.super_block*, i8*)* @nfs_compare_super, i32 (%struct.super_block*, i8*)** %16, align 8
  %19 = getelementptr inbounds %struct.nfs_sb_mountdata, %struct.nfs_sb_mountdata* %17, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.nfs_sb_mountdata, %struct.nfs_sb_mountdata* %17, i32 0, i32 1
  store %struct.super_block* null, %struct.super_block** %21, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* @NFS_DEFAULT_VERSION, align 4
  %25 = call %struct.nfs_parsed_mount_data* @nfs_alloc_parsed_mount_data(i32 %24)
  store %struct.nfs_parsed_mount_data* %25, %struct.nfs_parsed_mount_data** %13, align 8
  %26 = call %struct.nfs_fh* (...) @nfs_alloc_fhandle()
  store %struct.nfs_fh* %26, %struct.nfs_fh** %14, align 8
  %27 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %13, align 8
  %28 = icmp eq %struct.nfs_parsed_mount_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load %struct.nfs_fh*, %struct.nfs_fh** %14, align 8
  %31 = icmp eq %struct.nfs_fh* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %5
  br label %162

33:                                               ; preds = %29
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %13, align 8
  %36 = load %struct.nfs_fh*, %struct.nfs_fh** %14, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @nfs_validate_mount_data(i8* %34, %struct.nfs_parsed_mount_data* %35, %struct.nfs_fh* %36, i8* %37)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %162

42:                                               ; preds = %33
  %43 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %13, align 8
  %44 = load %struct.nfs_fh*, %struct.nfs_fh** %14, align 8
  %45 = call %struct.super_block* @nfs_create_server(%struct.nfs_parsed_mount_data* %43, %struct.nfs_fh* %44)
  %46 = bitcast %struct.super_block* %45 to %struct.nfs_server*
  store %struct.nfs_server* %46, %struct.nfs_server** %11, align 8
  %47 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %48 = bitcast %struct.nfs_server* %47 to %struct.super_block*
  %49 = call i64 @IS_ERR(%struct.super_block* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %53 = bitcast %struct.nfs_server* %52 to %struct.super_block*
  %54 = call i32 @PTR_ERR(%struct.super_block* %53)
  store i32 %54, i32* %18, align 4
  br label %162

55:                                               ; preds = %42
  %56 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %57 = bitcast %struct.nfs_server* %56 to %struct.super_block*
  %58 = getelementptr inbounds %struct.nfs_sb_mountdata, %struct.nfs_sb_mountdata* %17, i32 0, i32 1
  store %struct.super_block* %57, %struct.super_block** %58, align 8
  %59 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %60 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @NFS_MOUNT_UNSHARED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 (%struct.super_block*, i8*)* null, i32 (%struct.super_block*, i8*)** %16, align 8
  br label %66

66:                                               ; preds = %65, %55
  %67 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %68 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @NFS_MOUNT_NOAC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i32, i32* @MS_SYNCHRONOUS, align 4
  %75 = getelementptr inbounds %struct.nfs_sb_mountdata, %struct.nfs_sb_mountdata* %17, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %73, %66
  %79 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %80 = load i32 (%struct.super_block*, i8*)*, i32 (%struct.super_block*, i8*)** %16, align 8
  %81 = load i32, i32* @nfs_set_super, align 4
  %82 = call %struct.super_block* @sget(%struct.file_system_type* %79, i32 (%struct.super_block*, i8*)* %80, i32 %81, %struct.nfs_sb_mountdata* %17)
  store %struct.super_block* %82, %struct.super_block** %12, align 8
  %83 = load %struct.super_block*, %struct.super_block** %12, align 8
  %84 = call i64 @IS_ERR(%struct.super_block* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load %struct.super_block*, %struct.super_block** %12, align 8
  %88 = call i32 @PTR_ERR(%struct.super_block* %87)
  store i32 %88, i32* %18, align 4
  br label %168

89:                                               ; preds = %78
  %90 = load %struct.super_block*, %struct.super_block** %12, align 8
  %91 = getelementptr inbounds %struct.super_block, %struct.super_block* %90, i32 0, i32 4
  %92 = load %struct.super_block*, %struct.super_block** %91, align 8
  %93 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %94 = bitcast %struct.nfs_server* %93 to %struct.super_block*
  %95 = icmp ne %struct.super_block* %92, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %98 = bitcast %struct.nfs_server* %97 to %struct.super_block*
  %99 = call i32 @nfs_free_server(%struct.super_block* %98)
  store %struct.nfs_server* null, %struct.nfs_server** %11, align 8
  br label %108

100:                                              ; preds = %89
  %101 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %102 = bitcast %struct.nfs_server* %101 to %struct.super_block*
  %103 = call i32 @nfs_bdi_register(%struct.super_block* %102)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %189

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %96
  %109 = load %struct.super_block*, %struct.super_block** %12, align 8
  %110 = getelementptr inbounds %struct.super_block, %struct.super_block* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %128, label %113

113:                                              ; preds = %108
  %114 = load %struct.super_block*, %struct.super_block** %12, align 8
  %115 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %13, align 8
  %116 = call i32 @nfs_fill_super(%struct.super_block* %114, %struct.nfs_parsed_mount_data* %115)
  %117 = load %struct.super_block*, %struct.super_block** %12, align 8
  %118 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %13, align 8
  %119 = icmp ne %struct.nfs_parsed_mount_data* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %13, align 8
  %122 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  br label %125

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %120
  %126 = phi i32* [ %123, %120 ], [ null, %124 ]
  %127 = call i32 @nfs_fscache_get_super_cookie(%struct.super_block* %117, i32* %126, i32* null)
  br label %128

128:                                              ; preds = %125, %108
  %129 = load %struct.super_block*, %struct.super_block** %12, align 8
  %130 = load %struct.nfs_fh*, %struct.nfs_fh** %14, align 8
  %131 = call %struct.super_block* @nfs_get_root(%struct.super_block* %129, %struct.nfs_fh* %130)
  %132 = bitcast %struct.super_block* %131 to %struct.dentry*
  store %struct.dentry* %132, %struct.dentry** %15, align 8
  %133 = load %struct.dentry*, %struct.dentry** %15, align 8
  %134 = bitcast %struct.dentry* %133 to %struct.super_block*
  %135 = call i64 @IS_ERR(%struct.super_block* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %128
  %138 = load %struct.dentry*, %struct.dentry** %15, align 8
  %139 = bitcast %struct.dentry* %138 to %struct.super_block*
  %140 = call i32 @PTR_ERR(%struct.super_block* %139)
  store i32 %140, i32* %18, align 4
  br label %176

141:                                              ; preds = %128
  %142 = load %struct.super_block*, %struct.super_block** %12, align 8
  %143 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %13, align 8
  %144 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %143, i32 0, i32 1
  %145 = call i32 @security_sb_set_mnt_opts(%struct.super_block* %142, i32* %144)
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %172

149:                                              ; preds = %141
  %150 = load i32, i32* @MS_ACTIVE, align 4
  %151 = load %struct.super_block*, %struct.super_block** %12, align 8
  %152 = getelementptr inbounds %struct.super_block, %struct.super_block* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load %struct.super_block*, %struct.super_block** %12, align 8
  %156 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %157 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %156, i32 0, i32 1
  store %struct.super_block* %155, %struct.super_block** %157, align 8
  %158 = load %struct.dentry*, %struct.dentry** %15, align 8
  %159 = bitcast %struct.dentry* %158 to %struct.super_block*
  %160 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %161 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %160, i32 0, i32 0
  store %struct.super_block* %159, %struct.super_block** %161, align 8
  store i32 0, i32* %18, align 4
  br label %162

162:                                              ; preds = %189, %168, %149, %51, %41, %32
  %163 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %13, align 8
  %164 = call i32 @nfs_free_parsed_mount_data(%struct.nfs_parsed_mount_data* %163)
  %165 = load %struct.nfs_fh*, %struct.nfs_fh** %14, align 8
  %166 = call i32 @nfs_free_fhandle(%struct.nfs_fh* %165)
  %167 = load i32, i32* %18, align 4
  ret i32 %167

168:                                              ; preds = %86
  %169 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %170 = bitcast %struct.nfs_server* %169 to %struct.super_block*
  %171 = call i32 @nfs_free_server(%struct.super_block* %170)
  br label %162

172:                                              ; preds = %148
  %173 = load %struct.dentry*, %struct.dentry** %15, align 8
  %174 = bitcast %struct.dentry* %173 to %struct.super_block*
  %175 = call i32 @dput(%struct.super_block* %174)
  br label %176

176:                                              ; preds = %172, %137
  %177 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %178 = icmp ne %struct.nfs_server* %177, null
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = load %struct.super_block*, %struct.super_block** %12, align 8
  %181 = getelementptr inbounds %struct.super_block, %struct.super_block* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %179
  %185 = load %struct.nfs_server*, %struct.nfs_server** %11, align 8
  %186 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %185, i32 0, i32 1
  %187 = call i32 @bdi_unregister(i32* %186)
  br label %188

188:                                              ; preds = %184, %179, %176
  br label %189

189:                                              ; preds = %188, %106
  %190 = load %struct.super_block*, %struct.super_block** %12, align 8
  %191 = call i32 @deactivate_locked_super(%struct.super_block* %190)
  br label %162
}

declare dso_local i32 @nfs_compare_super(%struct.super_block*, i8*) #1

declare dso_local %struct.nfs_parsed_mount_data* @nfs_alloc_parsed_mount_data(i32) #1

declare dso_local %struct.nfs_fh* @nfs_alloc_fhandle(...) #1

declare dso_local i32 @nfs_validate_mount_data(i8*, %struct.nfs_parsed_mount_data*, %struct.nfs_fh*, i8*) #1

declare dso_local %struct.super_block* @nfs_create_server(%struct.nfs_parsed_mount_data*, %struct.nfs_fh*) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local i32 @PTR_ERR(%struct.super_block*) #1

declare dso_local %struct.super_block* @sget(%struct.file_system_type*, i32 (%struct.super_block*, i8*)*, i32, %struct.nfs_sb_mountdata*) #1

declare dso_local i32 @nfs_free_server(%struct.super_block*) #1

declare dso_local i32 @nfs_bdi_register(%struct.super_block*) #1

declare dso_local i32 @nfs_fill_super(%struct.super_block*, %struct.nfs_parsed_mount_data*) #1

declare dso_local i32 @nfs_fscache_get_super_cookie(%struct.super_block*, i32*, i32*) #1

declare dso_local %struct.super_block* @nfs_get_root(%struct.super_block*, %struct.nfs_fh*) #1

declare dso_local i32 @security_sb_set_mnt_opts(%struct.super_block*, i32*) #1

declare dso_local i32 @nfs_free_parsed_mount_data(%struct.nfs_parsed_mount_data*) #1

declare dso_local i32 @nfs_free_fhandle(%struct.nfs_fh*) #1

declare dso_local i32 @dput(%struct.super_block*) #1

declare dso_local i32 @bdi_unregister(i32*) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
