; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_post_op_update_inode_force_wcc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_post_op_update_inode_force_wcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.nfs_fattr = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NFS_ATTR_FATTR = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PRECHANGE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PRESIZE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PREMTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PRECTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_CHANGE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_CTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_post_op_update_inode_force_wcc(%struct.inode* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_fattr*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %10 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NFS_ATTR_FATTR, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %18 = call i32 @nfs_inode_attrs_need_update(%struct.inode* %16, %struct.nfs_fattr* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @NFS_ATTR_FATTR_PRECHANGE, align 4
  %22 = load i32, i32* @NFS_ATTR_FATTR_PRESIZE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @NFS_ATTR_FATTR_PREMTIME, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @NFS_ATTR_FATTR_PRECTIME, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %30 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %134

33:                                               ; preds = %15
  %34 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %35 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NFS_ATTR_FATTR_CHANGE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %33
  %41 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %42 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NFS_ATTR_FATTR_PRECHANGE, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %53 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @NFS_ATTR_FATTR_PRECHANGE, align 4
  %55 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %56 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %47, %40, %33
  %60 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %61 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NFS_ATTR_FATTR_CTIME, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %68 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NFS_ATTR_FATTR_PRECTIME, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %66
  %74 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %75 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %74, i32 0, i32 3
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 2
  %78 = call i32 @memcpy(i32* %75, i32* %77, i32 4)
  %79 = load i32, i32* @NFS_ATTR_FATTR_PRECTIME, align 4
  %80 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %81 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %73, %66, %59
  %85 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %86 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @NFS_ATTR_FATTR_MTIME, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %84
  %92 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %93 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @NFS_ATTR_FATTR_PREMTIME, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %100 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %99, i32 0, i32 2
  %101 = load %struct.inode*, %struct.inode** %3, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 1
  %103 = call i32 @memcpy(i32* %100, i32* %102, i32 4)
  %104 = load i32, i32* @NFS_ATTR_FATTR_PREMTIME, align 4
  %105 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %106 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %98, %91, %84
  %110 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %111 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @NFS_ATTR_FATTR_SIZE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %109
  %117 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %118 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @NFS_ATTR_FATTR_PRESIZE, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %116
  %124 = load %struct.inode*, %struct.inode** %3, align 8
  %125 = call i32 @i_size_read(%struct.inode* %124)
  %126 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %127 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @NFS_ATTR_FATTR_PRESIZE, align 4
  %129 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %130 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %123, %116, %109
  br label %134

134:                                              ; preds = %133, %20
  %135 = load %struct.inode*, %struct.inode** %3, align 8
  %136 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %137 = call i32 @nfs_post_op_update_inode_locked(%struct.inode* %135, %struct.nfs_fattr* %136)
  store i32 %137, i32* %5, align 4
  %138 = load %struct.inode*, %struct.inode** %3, align 8
  %139 = getelementptr inbounds %struct.inode, %struct.inode* %138, i32 0, i32 0
  %140 = call i32 @spin_unlock(i32* %139)
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs_inode_attrs_need_update(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @nfs_post_op_update_inode_locked(%struct.inode*, %struct.nfs_fattr*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
