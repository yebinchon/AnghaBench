; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.inode*, i32 }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.kstat = type { i32, i32, i32, i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@CIFS_MAX_MSGSIZE = common dso_local global i32 0, align 4
@CIFS_MOUNT_MULTIUSER = common dso_local global i32 0, align 4
@CIFS_MOUNT_CIFS_ACL = common dso_local global i32 0, align 4
@CIFS_MOUNT_OVERR_UID = common dso_local global i32 0, align 4
@CIFS_MOUNT_OVERR_GID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_getattr(%struct.vfsmount* %0, %struct.dentry* %1, %struct.kstat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.kstat*, align 8
  %8 = alloca %struct.cifs_sb_info*, align 8
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.kstat* %2, %struct.kstat** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.cifs_sb_info* @CIFS_SB(i32 %14)
  store %struct.cifs_sb_info* %15, %struct.cifs_sb_info** %8, align 8
  %16 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %17 = call %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info* %16)
  store %struct.cifs_tcon* %17, %struct.cifs_tcon** %9, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = call %struct.TYPE_5__* @CIFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %3
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %26
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i32 @filemap_fdatawait(%struct.TYPE_4__* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @mapping_set_error(%struct.TYPE_4__* %48, i32 %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %116

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %31, %26, %3
  %54 = load %struct.dentry*, %struct.dentry** %6, align 8
  %55 = call i32 @cifs_revalidate_dentry_attr(%struct.dentry* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %116

60:                                               ; preds = %53
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = load %struct.kstat*, %struct.kstat** %7, align 8
  %63 = call i32 @generic_fillattr(%struct.inode* %61, %struct.kstat* %62)
  %64 = load i32, i32* @CIFS_MAX_MSGSIZE, align 4
  %65 = load %struct.kstat*, %struct.kstat** %7, align 8
  %66 = getelementptr inbounds %struct.kstat, %struct.kstat* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.inode*, %struct.inode** %10, align 8
  %68 = call %struct.TYPE_5__* @CIFS_I(%struct.inode* %67)
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.kstat*, %struct.kstat** %7, align 8
  %72 = getelementptr inbounds %struct.kstat, %struct.kstat* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %74 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CIFS_MOUNT_MULTIUSER, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %114

79:                                               ; preds = %60
  %80 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %81 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CIFS_MOUNT_CIFS_ACL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %114, label %86

86:                                               ; preds = %79
  %87 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %88 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %114, label %91

91:                                               ; preds = %86
  %92 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %93 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CIFS_MOUNT_OVERR_UID, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %91
  %99 = call i32 (...) @current_fsuid()
  %100 = load %struct.kstat*, %struct.kstat** %7, align 8
  %101 = getelementptr inbounds %struct.kstat, %struct.kstat* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %98, %91
  %103 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %104 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @CIFS_MOUNT_OVERR_GID, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %102
  %110 = call i32 (...) @current_fsgid()
  %111 = load %struct.kstat*, %struct.kstat** %7, align 8
  %112 = getelementptr inbounds %struct.kstat, %struct.kstat* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %102
  br label %114

114:                                              ; preds = %113, %86, %79, %60
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %114, %58, %45
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifs_tcon* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local %struct.TYPE_5__* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @filemap_fdatawait(%struct.TYPE_4__*) #1

declare dso_local i32 @mapping_set_error(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @cifs_revalidate_dentry_attr(%struct.dentry*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
