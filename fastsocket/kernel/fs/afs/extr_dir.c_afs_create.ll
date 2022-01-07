; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.nameidata = type { i32 }
%struct.afs_file_status = type { i32 }
%struct.afs_callback = type { i32 }
%struct.afs_server = type { i32 }
%struct.afs_vnode = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.afs_fid = type { i32 }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"{%x:%u},{%s},%o,\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@AFSNAMEMAX = common dso_local global i64 0, align 8
@S_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"not hashed\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @afs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca %struct.afs_file_status, align 4
  %11 = alloca %struct.afs_callback, align 4
  %12 = alloca %struct.afs_server*, align 8
  %13 = alloca %struct.afs_vnode*, align 8
  %14 = alloca %struct.afs_vnode*, align 8
  %15 = alloca %struct.afs_fid, align 4
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.key*, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = bitcast %struct.inode* %19 to %struct.key*
  %21 = call %struct.afs_vnode* @AFS_FS_I(%struct.key* %20)
  store %struct.afs_vnode* %21, %struct.afs_vnode** %13, align 8
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  %23 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  %27 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @_enter(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29, i32 %33, i32 %34)
  %36 = load i32, i32* @ENAMETOOLONG, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %18, align 4
  %38 = load %struct.dentry*, %struct.dentry** %7, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AFSNAMEMAX, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  br label %128

45:                                               ; preds = %4
  %46 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  %47 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.key* @afs_request_key(i32 %50)
  store %struct.key* %51, %struct.key** %17, align 8
  %52 = load %struct.key*, %struct.key** %17, align 8
  %53 = call i64 @IS_ERR(%struct.key* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load %struct.key*, %struct.key** %17, align 8
  %57 = call i32 @PTR_ERR(%struct.key* %56)
  store i32 %57, i32* %18, align 4
  br label %128

58:                                               ; preds = %45
  %59 = load i32, i32* @S_IFREG, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  %63 = load %struct.key*, %struct.key** %17, align 8
  %64 = load %struct.dentry*, %struct.dentry** %7, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @afs_vnode_create(%struct.afs_vnode* %62, %struct.key* %63, i32 %67, i32 %68, %struct.afs_fid* %15, %struct.afs_file_status* %10, %struct.afs_callback* %11, %struct.afs_server** %12)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %125

73:                                               ; preds = %58
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.key*, %struct.key** %17, align 8
  %78 = call %struct.key* @afs_iget(i32 %76, %struct.key* %77, %struct.afs_fid* %15, %struct.afs_file_status* %10, %struct.afs_callback* %11)
  %79 = bitcast %struct.key* %78 to %struct.inode*
  store %struct.inode* %79, %struct.inode** %16, align 8
  %80 = load %struct.inode*, %struct.inode** %16, align 8
  %81 = bitcast %struct.inode* %80 to %struct.key*
  %82 = call i64 @IS_ERR(%struct.key* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load %struct.inode*, %struct.inode** %16, align 8
  %86 = bitcast %struct.inode* %85 to %struct.key*
  %87 = call i32 @PTR_ERR(%struct.key* %86)
  store i32 %87, i32* %18, align 4
  br label %122

88:                                               ; preds = %73
  %89 = load %struct.inode*, %struct.inode** %16, align 8
  %90 = bitcast %struct.inode* %89 to %struct.key*
  %91 = call %struct.afs_vnode* @AFS_FS_I(%struct.key* %90)
  store %struct.afs_vnode* %91, %struct.afs_vnode** %14, align 8
  %92 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %93 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %92, i32 0, i32 0
  %94 = call i32 @spin_lock(i32* %93)
  %95 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %96 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %100 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock(i32* %100)
  %102 = load %struct.afs_vnode*, %struct.afs_vnode** %14, align 8
  %103 = load %struct.afs_server*, %struct.afs_server** %12, align 8
  %104 = call i32 @afs_vnode_finalise_status_update(%struct.afs_vnode* %102, %struct.afs_server* %103)
  %105 = load %struct.afs_server*, %struct.afs_server** %12, align 8
  %106 = call i32 @afs_put_server(%struct.afs_server* %105)
  %107 = load %struct.dentry*, %struct.dentry** %7, align 8
  %108 = load %struct.inode*, %struct.inode** %16, align 8
  %109 = bitcast %struct.inode* %108 to %struct.key*
  %110 = call i32 @d_instantiate(%struct.dentry* %107, %struct.key* %109)
  %111 = load %struct.dentry*, %struct.dentry** %7, align 8
  %112 = call i64 @d_unhashed(%struct.dentry* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %88
  %115 = call i32 @_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %116 = load %struct.dentry*, %struct.dentry** %7, align 8
  %117 = call i32 @d_rehash(%struct.dentry* %116)
  br label %118

118:                                              ; preds = %114, %88
  %119 = load %struct.key*, %struct.key** %17, align 8
  %120 = call i32 @key_put(%struct.key* %119)
  %121 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %134

122:                                              ; preds = %84
  %123 = load %struct.afs_server*, %struct.afs_server** %12, align 8
  %124 = call i32 @afs_put_server(%struct.afs_server* %123)
  br label %125

125:                                              ; preds = %122, %72
  %126 = load %struct.key*, %struct.key** %17, align 8
  %127 = call i32 @key_put(%struct.key* %126)
  br label %128

128:                                              ; preds = %125, %55, %44
  %129 = load %struct.dentry*, %struct.dentry** %7, align 8
  %130 = call i32 @d_drop(%struct.dentry* %129)
  %131 = load i32, i32* %18, align 4
  %132 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %18, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %128, %118
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.key*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.key* @afs_request_key(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @afs_vnode_create(%struct.afs_vnode*, %struct.key*, i32, i32, %struct.afs_fid*, %struct.afs_file_status*, %struct.afs_callback*, %struct.afs_server**) #1

declare dso_local %struct.key* @afs_iget(i32, %struct.key*, %struct.afs_fid*, %struct.afs_file_status*, %struct.afs_callback*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @afs_vnode_finalise_status_update(%struct.afs_vnode*, %struct.afs_server*) #1

declare dso_local i32 @afs_put_server(%struct.afs_server*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.key*) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @d_rehash(%struct.dentry*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
