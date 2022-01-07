; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_setattr_update_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_setattr_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32 }
%struct.iattr = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ACCESS = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ACL = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@NFSIOS_SETATTRTRUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_setattr_update_inode(%struct.inode* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %6 = load %struct.iattr*, %struct.iattr** %4, align 8
  %7 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ATTR_MODE, align 4
  %10 = load i32, i32* @ATTR_UID, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ATTR_GID, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %8, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %81

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.iattr*, %struct.iattr** %4, align 8
  %21 = getelementptr inbounds %struct.iattr, %struct.iattr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ATTR_MODE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %16
  %27 = load %struct.iattr*, %struct.iattr** %4, align 8
  %28 = getelementptr inbounds %struct.iattr, %struct.iattr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S_IALLUGO, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @S_IALLUGO, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %26, %16
  %44 = load %struct.iattr*, %struct.iattr** %4, align 8
  %45 = getelementptr inbounds %struct.iattr, %struct.iattr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ATTR_UID, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.iattr*, %struct.iattr** %4, align 8
  %52 = getelementptr inbounds %struct.iattr, %struct.iattr* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.iattr*, %struct.iattr** %4, align 8
  %58 = getelementptr inbounds %struct.iattr, %struct.iattr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ATTR_GID, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.iattr*, %struct.iattr** %4, align 8
  %65 = getelementptr inbounds %struct.iattr, %struct.iattr* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %56
  %70 = load i32, i32* @NFS_INO_INVALID_ACCESS, align 4
  %71 = load i32, i32* @NFS_INO_INVALID_ACL, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 4
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  %80 = call i32 @spin_unlock(i32* %79)
  br label %81

81:                                               ; preds = %69, %2
  %82 = load %struct.iattr*, %struct.iattr** %4, align 8
  %83 = getelementptr inbounds %struct.iattr, %struct.iattr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ATTR_SIZE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = load %struct.inode*, %struct.inode** %3, align 8
  %90 = load i32, i32* @NFSIOS_SETATTRTRUNC, align 4
  %91 = call i32 @nfs_inc_stats(%struct.inode* %89, i32 %90)
  %92 = load %struct.inode*, %struct.inode** %3, align 8
  %93 = load %struct.iattr*, %struct.iattr** %4, align 8
  %94 = getelementptr inbounds %struct.iattr, %struct.iattr* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @nfs_vmtruncate(%struct.inode* %92, i32 %95)
  br label %97

97:                                               ; preds = %88, %81
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @nfs_vmtruncate(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
