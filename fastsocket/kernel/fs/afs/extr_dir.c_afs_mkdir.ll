; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.afs_file_status = type { i32 }
%struct.afs_callback = type { i32 }
%struct.afs_server = type { i32 }
%struct.afs_vnode = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.afs_fid = type { i32 }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"{%x:%u},{%s},%o\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@AFSNAMEMAX = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"not hashed\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @afs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_file_status, align 4
  %9 = alloca %struct.afs_callback, align 4
  %10 = alloca %struct.afs_server*, align 8
  %11 = alloca %struct.afs_vnode*, align 8
  %12 = alloca %struct.afs_vnode*, align 8
  %13 = alloca %struct.afs_fid, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.key*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = bitcast %struct.inode* %17 to %struct.key*
  %19 = call %struct.afs_vnode* @AFS_FS_I(%struct.key* %18)
  store %struct.afs_vnode* %19, %struct.afs_vnode** %11, align 8
  %20 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %21 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %25 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @_enter(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27, i32 %31, i32 %32)
  %34 = load i32, i32* @ENAMETOOLONG, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %16, align 4
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AFSNAMEMAX, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  br label %126

43:                                               ; preds = %3
  %44 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %45 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.key* @afs_request_key(i32 %48)
  store %struct.key* %49, %struct.key** %15, align 8
  %50 = load %struct.key*, %struct.key** %15, align 8
  %51 = call i64 @IS_ERR(%struct.key* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load %struct.key*, %struct.key** %15, align 8
  %55 = call i32 @PTR_ERR(%struct.key* %54)
  store i32 %55, i32* %16, align 4
  br label %126

56:                                               ; preds = %43
  %57 = load i32, i32* @S_IFDIR, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %61 = load %struct.key*, %struct.key** %15, align 8
  %62 = load %struct.dentry*, %struct.dentry** %6, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @afs_vnode_create(%struct.afs_vnode* %60, %struct.key* %61, i32 %65, i32 %66, %struct.afs_fid* %13, %struct.afs_file_status* %8, %struct.afs_callback* %9, %struct.afs_server** %10)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %123

71:                                               ; preds = %56
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.key*, %struct.key** %15, align 8
  %76 = call %struct.key* @afs_iget(i32 %74, %struct.key* %75, %struct.afs_fid* %13, %struct.afs_file_status* %8, %struct.afs_callback* %9)
  %77 = bitcast %struct.key* %76 to %struct.inode*
  store %struct.inode* %77, %struct.inode** %14, align 8
  %78 = load %struct.inode*, %struct.inode** %14, align 8
  %79 = bitcast %struct.inode* %78 to %struct.key*
  %80 = call i64 @IS_ERR(%struct.key* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.inode*, %struct.inode** %14, align 8
  %84 = bitcast %struct.inode* %83 to %struct.key*
  %85 = call i32 @PTR_ERR(%struct.key* %84)
  store i32 %85, i32* %16, align 4
  br label %120

86:                                               ; preds = %71
  %87 = load %struct.inode*, %struct.inode** %14, align 8
  %88 = bitcast %struct.inode* %87 to %struct.key*
  %89 = call %struct.afs_vnode* @AFS_FS_I(%struct.key* %88)
  store %struct.afs_vnode* %89, %struct.afs_vnode** %12, align 8
  %90 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %91 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %90, i32 0, i32 0
  %92 = call i32 @spin_lock(i32* %91)
  %93 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %94 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %98 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %101 = load %struct.afs_server*, %struct.afs_server** %10, align 8
  %102 = call i32 @afs_vnode_finalise_status_update(%struct.afs_vnode* %100, %struct.afs_server* %101)
  %103 = load %struct.afs_server*, %struct.afs_server** %10, align 8
  %104 = call i32 @afs_put_server(%struct.afs_server* %103)
  %105 = load %struct.dentry*, %struct.dentry** %6, align 8
  %106 = load %struct.inode*, %struct.inode** %14, align 8
  %107 = bitcast %struct.inode* %106 to %struct.key*
  %108 = call i32 @d_instantiate(%struct.dentry* %105, %struct.key* %107)
  %109 = load %struct.dentry*, %struct.dentry** %6, align 8
  %110 = call i64 @d_unhashed(%struct.dentry* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %86
  %113 = call i32 @_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %114 = load %struct.dentry*, %struct.dentry** %6, align 8
  %115 = call i32 @d_rehash(%struct.dentry* %114)
  br label %116

116:                                              ; preds = %112, %86
  %117 = load %struct.key*, %struct.key** %15, align 8
  %118 = call i32 @key_put(%struct.key* %117)
  %119 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %132

120:                                              ; preds = %82
  %121 = load %struct.afs_server*, %struct.afs_server** %10, align 8
  %122 = call i32 @afs_put_server(%struct.afs_server* %121)
  br label %123

123:                                              ; preds = %120, %70
  %124 = load %struct.key*, %struct.key** %15, align 8
  %125 = call i32 @key_put(%struct.key* %124)
  br label %126

126:                                              ; preds = %123, %53, %42
  %127 = load %struct.dentry*, %struct.dentry** %6, align 8
  %128 = call i32 @d_drop(%struct.dentry* %127)
  %129 = load i32, i32* %16, align 4
  %130 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %126, %116
  %133 = load i32, i32* %4, align 4
  ret i32 %133
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
