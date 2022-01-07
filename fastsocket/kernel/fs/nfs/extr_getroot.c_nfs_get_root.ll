; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_getroot.c_nfs_get_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_getroot.c_nfs_get_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32* }
%struct.super_block = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_server = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)*, i32* }
%struct.nfs_fsinfo = type { i32* }
%struct.inode = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"nfs_get_root: getattr error = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"nfs_get_root: get root inode failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"nfs_get_root: get root dentry failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @nfs_get_root(%struct.super_block* %0, %struct.nfs_fh* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs_fsinfo, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call %struct.nfs_server* @NFS_SB(%struct.super_block* %11)
  store %struct.nfs_server* %12, %struct.nfs_server** %6, align 8
  %13 = call i32* (...) @nfs_alloc_fattr()
  %14 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %7, i32 0, i32 0
  store i32* %13, i32** %14, align 8
  %15 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %7, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.inode* @ERR_PTR(i32 %20)
  %22 = bitcast %struct.inode* %21 to %struct.dentry*
  store %struct.dentry* %22, %struct.dentry** %3, align 8
  br label %102

23:                                               ; preds = %2
  %24 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %25 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)*, i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)** %29, align 8
  %31 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %32 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %33 = call i32 %30(%struct.nfs_server* %31, %struct.nfs_fh* %32, %struct.nfs_fsinfo* %7)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %23
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.inode* @ERR_PTR(i32 %40)
  %42 = bitcast %struct.inode* %41 to %struct.dentry*
  store %struct.dentry* %42, %struct.dentry** %8, align 8
  br label %97

43:                                               ; preds = %23
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %46 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %7, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call %struct.inode* @nfs_fhget(%struct.super_block* %44, %struct.nfs_fh* %45, i32* %47)
  store %struct.inode* %48, %struct.inode** %9, align 8
  %49 = load %struct.inode*, %struct.inode** %9, align 8
  %50 = call i64 @IS_ERR(%struct.inode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.inode*, %struct.inode** %9, align 8
  %55 = call %struct.inode* @ERR_CAST(%struct.inode* %54)
  %56 = bitcast %struct.inode* %55 to %struct.dentry*
  store %struct.dentry* %56, %struct.dentry** %8, align 8
  br label %97

57:                                               ; preds = %43
  %58 = load %struct.super_block*, %struct.super_block** %4, align 8
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = call i32 @nfs_superblock_set_dummy_root(%struct.super_block* %58, %struct.inode* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  %65 = call %struct.inode* @ERR_PTR(i32 %64)
  %66 = bitcast %struct.inode* %65 to %struct.dentry*
  store %struct.dentry* %66, %struct.dentry** %8, align 8
  br label %97

67:                                               ; preds = %57
  %68 = load %struct.inode*, %struct.inode** %9, align 8
  %69 = call %struct.inode* @d_obtain_alias(%struct.inode* %68)
  %70 = bitcast %struct.inode* %69 to %struct.dentry*
  store %struct.dentry* %70, %struct.dentry** %8, align 8
  %71 = load %struct.dentry*, %struct.dentry** %8, align 8
  %72 = bitcast %struct.dentry* %71 to %struct.inode*
  %73 = call i64 @IS_ERR(%struct.inode* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %97

77:                                               ; preds = %67
  %78 = load %struct.dentry*, %struct.dentry** %8, align 8
  %79 = bitcast %struct.dentry* %78 to %struct.inode*
  %80 = load %struct.inode*, %struct.inode** %9, align 8
  %81 = call i32 @security_d_instantiate(%struct.inode* %79, %struct.inode* %80)
  %82 = load %struct.dentry*, %struct.dentry** %8, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %77
  %87 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %88 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.dentry*, %struct.dentry** %8, align 8
  %95 = getelementptr inbounds %struct.dentry, %struct.dentry* %94, i32 0, i32 0
  store i32* %93, i32** %95, align 8
  br label %96

96:                                               ; preds = %86, %77
  br label %97

97:                                               ; preds = %96, %75, %63, %52, %36
  %98 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %7, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @nfs_free_fattr(i32* %99)
  %101 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %101, %struct.dentry** %3, align 8
  br label %102

102:                                              ; preds = %97, %18
  %103 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %103
}

declare dso_local %struct.nfs_server* @NFS_SB(%struct.super_block*) #1

declare dso_local i32* @nfs_alloc_fattr(...) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.inode* @nfs_fhget(%struct.super_block*, %struct.nfs_fh*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @nfs_superblock_set_dummy_root(%struct.super_block*, %struct.inode*) #1

declare dso_local %struct.inode* @d_obtain_alias(%struct.inode*) #1

declare dso_local i32 @security_d_instantiate(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @nfs_free_fattr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
