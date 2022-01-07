; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_dir.c_afs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.afs_file_status = type { i32 }
%struct.afs_server = type { i32 }
%struct.afs_vnode = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.afs_fid = type { i32 }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"{%x:%u},{%s},%s\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@AFSNAMEMAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AFSPATHMAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"not hashed\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @afs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.afs_file_status, align 4
  %9 = alloca %struct.afs_server*, align 8
  %10 = alloca %struct.afs_vnode*, align 8
  %11 = alloca %struct.afs_vnode*, align 8
  %12 = alloca %struct.afs_fid, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.key*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = bitcast %struct.inode* %16 to %struct.key*
  %18 = call %struct.afs_vnode* @AFS_FS_I(%struct.key* %17)
  store %struct.afs_vnode* %18, %struct.afs_vnode** %10, align 8
  %19 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %20 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %24 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @_enter(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26, i32 %30, i8* %31)
  %33 = load i32, i32* @ENAMETOOLONG, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %15, align 4
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AFSNAMEMAX, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  br label %130

42:                                               ; preds = %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %15, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = load i64, i64* @AFSPATHMAX, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %130

50:                                               ; preds = %42
  %51 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %52 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.key* @afs_request_key(i32 %55)
  store %struct.key* %56, %struct.key** %14, align 8
  %57 = load %struct.key*, %struct.key** %14, align 8
  %58 = call i64 @IS_ERR(%struct.key* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.key*, %struct.key** %14, align 8
  %62 = call i32 @PTR_ERR(%struct.key* %61)
  store i32 %62, i32* %15, align 4
  br label %130

63:                                               ; preds = %50
  %64 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %65 = load %struct.key*, %struct.key** %14, align 8
  %66 = load %struct.dentry*, %struct.dentry** %6, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @afs_vnode_symlink(%struct.afs_vnode* %64, %struct.key* %65, i32 %69, i8* %70, %struct.afs_fid* %12, %struct.afs_file_status* %8, %struct.afs_server** %9)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %127

75:                                               ; preds = %63
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.key*, %struct.key** %14, align 8
  %80 = call %struct.key* @afs_iget(i32 %78, %struct.key* %79, %struct.afs_fid* %12, %struct.afs_file_status* %8, i32* null)
  %81 = bitcast %struct.key* %80 to %struct.inode*
  store %struct.inode* %81, %struct.inode** %13, align 8
  %82 = load %struct.inode*, %struct.inode** %13, align 8
  %83 = bitcast %struct.inode* %82 to %struct.key*
  %84 = call i64 @IS_ERR(%struct.key* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = load %struct.inode*, %struct.inode** %13, align 8
  %88 = bitcast %struct.inode* %87 to %struct.key*
  %89 = call i32 @PTR_ERR(%struct.key* %88)
  store i32 %89, i32* %15, align 4
  br label %124

90:                                               ; preds = %75
  %91 = load %struct.inode*, %struct.inode** %13, align 8
  %92 = bitcast %struct.inode* %91 to %struct.key*
  %93 = call %struct.afs_vnode* @AFS_FS_I(%struct.key* %92)
  store %struct.afs_vnode* %93, %struct.afs_vnode** %11, align 8
  %94 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %95 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %94, i32 0, i32 0
  %96 = call i32 @spin_lock(i32* %95)
  %97 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %98 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %102 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %101, i32 0, i32 0
  %103 = call i32 @spin_unlock(i32* %102)
  %104 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %105 = load %struct.afs_server*, %struct.afs_server** %9, align 8
  %106 = call i32 @afs_vnode_finalise_status_update(%struct.afs_vnode* %104, %struct.afs_server* %105)
  %107 = load %struct.afs_server*, %struct.afs_server** %9, align 8
  %108 = call i32 @afs_put_server(%struct.afs_server* %107)
  %109 = load %struct.dentry*, %struct.dentry** %6, align 8
  %110 = load %struct.inode*, %struct.inode** %13, align 8
  %111 = bitcast %struct.inode* %110 to %struct.key*
  %112 = call i32 @d_instantiate(%struct.dentry* %109, %struct.key* %111)
  %113 = load %struct.dentry*, %struct.dentry** %6, align 8
  %114 = call i64 @d_unhashed(%struct.dentry* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %90
  %117 = call i32 @_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %118 = load %struct.dentry*, %struct.dentry** %6, align 8
  %119 = call i32 @d_rehash(%struct.dentry* %118)
  br label %120

120:                                              ; preds = %116, %90
  %121 = load %struct.key*, %struct.key** %14, align 8
  %122 = call i32 @key_put(%struct.key* %121)
  %123 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %136

124:                                              ; preds = %86
  %125 = load %struct.afs_server*, %struct.afs_server** %9, align 8
  %126 = call i32 @afs_put_server(%struct.afs_server* %125)
  br label %127

127:                                              ; preds = %124, %74
  %128 = load %struct.key*, %struct.key** %14, align 8
  %129 = call i32 @key_put(%struct.key* %128)
  br label %130

130:                                              ; preds = %127, %60, %49, %41
  %131 = load %struct.dentry*, %struct.dentry** %6, align 8
  %132 = call i32 @d_drop(%struct.dentry* %131)
  %133 = load i32, i32* %15, align 4
  %134 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %15, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %130, %120
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.key*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.key* @afs_request_key(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @afs_vnode_symlink(%struct.afs_vnode*, %struct.key*, i32, i8*, %struct.afs_fid*, %struct.afs_file_status*, %struct.afs_server**) #1

declare dso_local %struct.key* @afs_iget(i32, %struct.key*, %struct.afs_fid*, %struct.afs_file_status*, i32*) #1

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
