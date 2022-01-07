; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iattr = type { i32, i64 }
%struct.nfs_fattr = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.dentry*, %struct.nfs_fattr*, %struct.iattr*)* }

@ENOMEM = common dso_local global i32 0, align 4
@NFSIOS_VFSSETATTR = common dso_local global i32 0, align 4
@ATTR_KILL_SUID = common dso_local global i32 0, align 4
@ATTR_KILL_SGID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@NFS_VALID_ATTRS = common dso_local global i32 0, align 4
@ATTR_FILE = common dso_local global i32 0, align 4
@ATTR_OPEN = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_fattr*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = load i32, i32* @NFSIOS_VFSSETATTR, align 4
  %16 = call i32 @nfs_inc_stats(%struct.inode* %14, i32 %15)
  %17 = load %struct.iattr*, %struct.iattr** %5, align 8
  %18 = getelementptr inbounds %struct.iattr, %struct.iattr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ATTR_KILL_SUID, align 4
  %21 = load i32, i32* @ATTR_KILL_SGID, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load i32, i32* @ATTR_MODE, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.iattr*, %struct.iattr** %5, align 8
  %29 = getelementptr inbounds %struct.iattr, %struct.iattr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %25, %2
  %33 = load %struct.iattr*, %struct.iattr** %5, align 8
  %34 = getelementptr inbounds %struct.iattr, %struct.iattr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ATTR_SIZE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %32
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @S_ISREG(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.iattr*, %struct.iattr** %5, align 8
  %47 = getelementptr inbounds %struct.iattr, %struct.iattr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call i64 @i_size_read(%struct.inode* %49)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %45, %39
  %53 = load i32, i32* @ATTR_SIZE, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.iattr*, %struct.iattr** %5, align 8
  %56 = getelementptr inbounds %struct.iattr, %struct.iattr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %52, %45
  br label %60

60:                                               ; preds = %59, %32
  %61 = load i32, i32* @NFS_VALID_ATTRS, align 4
  %62 = load %struct.iattr*, %struct.iattr** %5, align 8
  %63 = getelementptr inbounds %struct.iattr, %struct.iattr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.iattr*, %struct.iattr** %5, align 8
  %67 = getelementptr inbounds %struct.iattr, %struct.iattr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ATTR_FILE, align 4
  %70 = load i32, i32* @ATTR_OPEN, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = and i32 %68, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %124

76:                                               ; preds = %60
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @S_ISREG(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = call i32 @nfs_wb_all(%struct.inode* %83)
  br label %85

85:                                               ; preds = %82, %76
  %86 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %86, %struct.nfs_fattr** %7, align 8
  %87 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %88 = icmp eq %struct.nfs_fattr* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %122

90:                                               ; preds = %85
  %91 = load %struct.iattr*, %struct.iattr** %5, align 8
  %92 = getelementptr inbounds %struct.iattr, %struct.iattr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ATTR_MODE, align 4
  %95 = load i32, i32* @ATTR_UID, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @ATTR_GID, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %93, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load %struct.inode*, %struct.inode** %6, align 8
  %103 = call i32 @nfs_inode_return_delegation(%struct.inode* %102)
  br label %104

104:                                              ; preds = %101, %90
  %105 = load %struct.inode*, %struct.inode** %6, align 8
  %106 = call %struct.TYPE_2__* @NFS_PROTO(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32 (%struct.dentry*, %struct.nfs_fattr*, %struct.iattr*)*, i32 (%struct.dentry*, %struct.nfs_fattr*, %struct.iattr*)** %107, align 8
  %109 = load %struct.dentry*, %struct.dentry** %4, align 8
  %110 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %111 = load %struct.iattr*, %struct.iattr** %5, align 8
  %112 = call i32 %108(%struct.dentry* %109, %struct.nfs_fattr* %110, %struct.iattr* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %104
  %116 = load %struct.inode*, %struct.inode** %6, align 8
  %117 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %118 = call i32 @nfs_refresh_inode(%struct.inode* %116, %struct.nfs_fattr* %117)
  br label %119

119:                                              ; preds = %115, %104
  %120 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %121 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %120)
  br label %122

122:                                              ; preds = %119, %89
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %75
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @nfs_wb_all(%struct.inode*) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local i32 @nfs_inode_return_delegation(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @nfs_refresh_inode(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
