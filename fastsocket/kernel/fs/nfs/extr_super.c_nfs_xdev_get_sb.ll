; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_xdev_get_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_xdev_get_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32 }
%struct.vfsmount = type { %struct.super_block*, %struct.super_block* }
%struct.super_block = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.super_block* }
%struct.TYPE_6__ = type { i64 }
%struct.nfs_clone_mount = type { %struct.super_block*, i32, i32, i32 }
%struct.nfs_server = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.nfs_server* }
%struct.dentry = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.dentry* }
%struct.nfs_sb_mountdata = type { i32, %struct.super_block* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"--> nfs_xdev_get_sb()\0A\00", align 1
@NFS_MOUNT_UNSHARED = common dso_local global i32 0, align 4
@NFS_MOUNT_NOAC = common dso_local global i32 0, align 4
@MS_SYNCHRONOUS = common dso_local global i32 0, align 4
@nfs_fs_type = common dso_local global i32 0, align 4
@nfs_set_super = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@MS_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"<-- nfs_xdev_get_sb() = 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"<-- nfs_xdev_get_sb() = %d [error]\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"<-- nfs_xdev_get_sb() = %d [splat]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_system_type*, i32, i8*, i8*, %struct.vfsmount*)* @nfs_xdev_get_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_xdev_get_sb(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3, %struct.vfsmount* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file_system_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vfsmount*, align 8
  %12 = alloca %struct.nfs_clone_mount*, align 8
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca %struct.nfs_server*, align 8
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca i32 (%struct.super_block*, i8*)*, align 8
  %17 = alloca %struct.nfs_sb_mountdata, align 8
  %18 = alloca i32, align 4
  store %struct.file_system_type* %0, %struct.file_system_type** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.vfsmount* %4, %struct.vfsmount** %11, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.nfs_clone_mount*
  store %struct.nfs_clone_mount* %20, %struct.nfs_clone_mount** %12, align 8
  store i32 (%struct.super_block*, i8*)* @nfs_compare_super, i32 (%struct.super_block*, i8*)** %16, align 8
  %21 = getelementptr inbounds %struct.nfs_sb_mountdata, %struct.nfs_sb_mountdata* %17, i32 0, i32 0
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.nfs_sb_mountdata, %struct.nfs_sb_mountdata* %17, i32 0, i32 1
  store %struct.super_block* null, %struct.super_block** %23, align 8
  %24 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %12, align 8
  %26 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %25, i32 0, i32 0
  %27 = load %struct.super_block*, %struct.super_block** %26, align 8
  %28 = call %struct.TYPE_9__* @NFS_SB(%struct.super_block* %27)
  %29 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %12, align 8
  %30 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %12, align 8
  %33 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %12, align 8
  %36 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.super_block* @nfs_clone_server(%struct.TYPE_9__* %28, i32 %31, i32 %34, i32 %37)
  %39 = bitcast %struct.super_block* %38 to %struct.nfs_server*
  store %struct.nfs_server* %39, %struct.nfs_server** %14, align 8
  %40 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %41 = bitcast %struct.nfs_server* %40 to %struct.super_block*
  %42 = call i64 @IS_ERR(%struct.super_block* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %5
  %45 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %46 = bitcast %struct.nfs_server* %45 to %struct.super_block*
  %47 = call i32 @PTR_ERR(%struct.super_block* %46)
  store i32 %47, i32* %18, align 4
  br label %174

48:                                               ; preds = %5
  %49 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %50 = bitcast %struct.nfs_server* %49 to %struct.super_block*
  %51 = getelementptr inbounds %struct.nfs_sb_mountdata, %struct.nfs_sb_mountdata* %17, i32 0, i32 1
  store %struct.super_block* %50, %struct.super_block** %51, align 8
  %52 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %53 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @NFS_MOUNT_UNSHARED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 (%struct.super_block*, i8*)* null, i32 (%struct.super_block*, i8*)** %16, align 8
  br label %59

59:                                               ; preds = %58, %48
  %60 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %61 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @NFS_MOUNT_NOAC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i32, i32* @MS_SYNCHRONOUS, align 4
  %68 = getelementptr inbounds %struct.nfs_sb_mountdata, %struct.nfs_sb_mountdata* %17, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %66, %59
  %72 = load i32 (%struct.super_block*, i8*)*, i32 (%struct.super_block*, i8*)** %16, align 8
  %73 = load i32, i32* @nfs_set_super, align 4
  %74 = call %struct.super_block* @sget(i32* @nfs_fs_type, i32 (%struct.super_block*, i8*)* %72, i32 %73, %struct.nfs_sb_mountdata* %17)
  store %struct.super_block* %74, %struct.super_block** %13, align 8
  %75 = load %struct.super_block*, %struct.super_block** %13, align 8
  %76 = call i64 @IS_ERR(%struct.super_block* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.super_block*, %struct.super_block** %13, align 8
  %80 = call i32 @PTR_ERR(%struct.super_block* %79)
  store i32 %80, i32* %18, align 4
  br label %170

81:                                               ; preds = %71
  %82 = load %struct.super_block*, %struct.super_block** %13, align 8
  %83 = getelementptr inbounds %struct.super_block, %struct.super_block* %82, i32 0, i32 5
  %84 = load %struct.super_block*, %struct.super_block** %83, align 8
  %85 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %86 = bitcast %struct.nfs_server* %85 to %struct.super_block*
  %87 = icmp ne %struct.super_block* %84, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %90 = bitcast %struct.nfs_server* %89 to %struct.super_block*
  %91 = call i32 @nfs_free_server(%struct.super_block* %90)
  store %struct.nfs_server* null, %struct.nfs_server** %14, align 8
  br label %100

92:                                               ; preds = %81
  %93 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %94 = bitcast %struct.nfs_server* %93 to %struct.super_block*
  %95 = call i32 @nfs_bdi_register(%struct.super_block* %94)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %195

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %88
  %101 = load %struct.super_block*, %struct.super_block** %13, align 8
  %102 = getelementptr inbounds %struct.super_block, %struct.super_block* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %100
  %106 = load %struct.super_block*, %struct.super_block** %13, align 8
  %107 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %12, align 8
  %108 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %107, i32 0, i32 0
  %109 = load %struct.super_block*, %struct.super_block** %108, align 8
  %110 = call i32 @nfs_clone_super(%struct.super_block* %106, %struct.super_block* %109)
  %111 = load %struct.super_block*, %struct.super_block** %13, align 8
  %112 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %12, align 8
  %113 = call i32 @nfs_fscache_get_super_cookie(%struct.super_block* %111, i32* null, %struct.nfs_clone_mount* %112)
  br label %114

114:                                              ; preds = %105, %100
  %115 = load %struct.super_block*, %struct.super_block** %13, align 8
  %116 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %12, align 8
  %117 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call %struct.super_block* @nfs_get_root(%struct.super_block* %115, i32 %118)
  %120 = bitcast %struct.super_block* %119 to %struct.dentry*
  store %struct.dentry* %120, %struct.dentry** %15, align 8
  %121 = load %struct.dentry*, %struct.dentry** %15, align 8
  %122 = bitcast %struct.dentry* %121 to %struct.super_block*
  %123 = call i64 @IS_ERR(%struct.super_block* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load %struct.dentry*, %struct.dentry** %15, align 8
  %127 = bitcast %struct.dentry* %126 to %struct.super_block*
  %128 = call i32 @PTR_ERR(%struct.super_block* %127)
  store i32 %128, i32* %18, align 4
  br label %182

129:                                              ; preds = %114
  %130 = load %struct.dentry*, %struct.dentry** %15, align 8
  %131 = getelementptr inbounds %struct.dentry, %struct.dentry* %130, i32 0, i32 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.super_block*, %struct.super_block** %13, align 8
  %136 = call %struct.TYPE_9__* @NFS_SB(%struct.super_block* %135)
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %134, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %129
  %145 = load i32, i32* @ESTALE, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %18, align 4
  br label %178

147:                                              ; preds = %129
  %148 = load i32, i32* @MS_ACTIVE, align 4
  %149 = load %struct.super_block*, %struct.super_block** %13, align 8
  %150 = getelementptr inbounds %struct.super_block, %struct.super_block* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load %struct.super_block*, %struct.super_block** %13, align 8
  %154 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %155 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %154, i32 0, i32 1
  store %struct.super_block* %153, %struct.super_block** %155, align 8
  %156 = load %struct.dentry*, %struct.dentry** %15, align 8
  %157 = bitcast %struct.dentry* %156 to %struct.super_block*
  %158 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %159 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %158, i32 0, i32 0
  store %struct.super_block* %157, %struct.super_block** %159, align 8
  %160 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %12, align 8
  %161 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %160, i32 0, i32 0
  %162 = load %struct.super_block*, %struct.super_block** %161, align 8
  %163 = load %struct.super_block*, %struct.super_block** %13, align 8
  %164 = call i32 @security_sb_clone_mnt_opts(%struct.super_block* %162, %struct.super_block* %163)
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* %18, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %147
  br label %178

168:                                              ; preds = %147
  %169 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %201

170:                                              ; preds = %78
  %171 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %172 = bitcast %struct.nfs_server* %171 to %struct.super_block*
  %173 = call i32 @nfs_free_server(%struct.super_block* %172)
  br label %174

174:                                              ; preds = %170, %44
  %175 = load i32, i32* %18, align 4
  %176 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %18, align 4
  store i32 %177, i32* %6, align 4
  br label %201

178:                                              ; preds = %167, %144
  %179 = load %struct.dentry*, %struct.dentry** %15, align 8
  %180 = bitcast %struct.dentry* %179 to %struct.super_block*
  %181 = call i32 @dput(%struct.super_block* %180)
  br label %182

182:                                              ; preds = %178, %125
  %183 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %184 = icmp ne %struct.nfs_server* %183, null
  br i1 %184, label %185, label %194

185:                                              ; preds = %182
  %186 = load %struct.super_block*, %struct.super_block** %13, align 8
  %187 = getelementptr inbounds %struct.super_block, %struct.super_block* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %185
  %191 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %192 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %191, i32 0, i32 1
  %193 = call i32 @bdi_unregister(i32* %192)
  br label %194

194:                                              ; preds = %190, %185, %182
  br label %195

195:                                              ; preds = %194, %98
  %196 = load %struct.super_block*, %struct.super_block** %13, align 8
  %197 = call i32 @deactivate_locked_super(%struct.super_block* %196)
  %198 = load i32, i32* %18, align 4
  %199 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* %18, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %195, %174, %168
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local i32 @nfs_compare_super(%struct.super_block*, i8*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.super_block* @nfs_clone_server(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @NFS_SB(%struct.super_block*) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local i32 @PTR_ERR(%struct.super_block*) #1

declare dso_local %struct.super_block* @sget(i32*, i32 (%struct.super_block*, i8*)*, i32, %struct.nfs_sb_mountdata*) #1

declare dso_local i32 @nfs_free_server(%struct.super_block*) #1

declare dso_local i32 @nfs_bdi_register(%struct.super_block*) #1

declare dso_local i32 @nfs_clone_super(%struct.super_block*, %struct.super_block*) #1

declare dso_local i32 @nfs_fscache_get_super_cookie(%struct.super_block*, i32*, %struct.nfs_clone_mount*) #1

declare dso_local %struct.super_block* @nfs_get_root(%struct.super_block*, i32) #1

declare dso_local i32 @security_sb_clone_mnt_opts(%struct.super_block*, %struct.super_block*) #1

declare dso_local i32 @dput(%struct.super_block*) #1

declare dso_local i32 @bdi_unregister(i32*) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
