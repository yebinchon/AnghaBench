; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_instantiate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_fh = type { i64 }
%struct.nfs_fattr = type { i32 }
%struct.nfs_server = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*)* }
%struct.TYPE_8__ = type { i32 (i32, %struct.inode*, i32*, %struct.nfs_fh*, %struct.nfs_fattr*)* }
%struct.TYPE_7__ = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_instantiate(%struct.dentry* %0, %struct.nfs_fh* %1, %struct.nfs_fattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca %struct.nfs_fattr*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfs_server*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %6, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.dentry* @dget_parent(%struct.dentry* %13)
  store %struct.dentry* %14, %struct.dentry** %8, align 8
  %15 = load %struct.dentry*, %struct.dentry** %8, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 2
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %9, align 8
  %18 = load i32, i32* @EACCES, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = call i32 @d_drop(%struct.dentry* %20)
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 2
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %99

27:                                               ; preds = %3
  %28 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %29 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = call %struct.TYPE_8__* @NFS_PROTO(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32 (i32, %struct.inode*, i32*, %struct.nfs_fh*, %struct.nfs_fattr*)*, i32 (i32, %struct.inode*, i32*, %struct.nfs_fh*, %struct.nfs_fattr*)** %35, align 8
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = call %struct.TYPE_7__* @NFS_SERVER(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 1
  %44 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %45 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %46 = call i32 %36(i32 %40, %struct.inode* %41, i32* %43, %struct.nfs_fh* %44, %struct.nfs_fattr* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  br label %102

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50, %27
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = call i32 @nfs_save_change_attribute(%struct.inode* %53)
  %55 = call i32 @nfs_set_verifier(%struct.dentry* %52, i32 %54)
  %56 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %57 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NFS_ATTR_FATTR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %51
  %63 = load %struct.dentry*, %struct.dentry** %5, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.nfs_server* @NFS_SB(i32 %65)
  store %struct.nfs_server* %66, %struct.nfs_server** %12, align 8
  %67 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %68 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*)*, i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*)** %72, align 8
  %74 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %75 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %76 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %77 = call i32 %73(%struct.nfs_server* %74, %struct.nfs_fh* %75, %struct.nfs_fattr* %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %62
  br label %102

81:                                               ; preds = %62
  br label %82

82:                                               ; preds = %81, %51
  %83 = load %struct.dentry*, %struct.dentry** %5, align 8
  %84 = getelementptr inbounds %struct.dentry, %struct.dentry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %87 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %88 = call %struct.inode* @nfs_fhget(i32 %85, %struct.nfs_fh* %86, %struct.nfs_fattr* %87)
  store %struct.inode* %88, %struct.inode** %10, align 8
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = call i32 @PTR_ERR(%struct.inode* %89)
  store i32 %90, i32* %11, align 4
  %91 = load %struct.inode*, %struct.inode** %10, align 8
  %92 = call i64 @IS_ERR(%struct.inode* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %102

95:                                               ; preds = %82
  %96 = load %struct.dentry*, %struct.dentry** %5, align 8
  %97 = load %struct.inode*, %struct.inode** %10, align 8
  %98 = call i32 @d_add(%struct.dentry* %96, %struct.inode* %97)
  br label %99

99:                                               ; preds = %95, %26
  %100 = load %struct.dentry*, %struct.dentry** %8, align 8
  %101 = call i32 @dput(%struct.dentry* %100)
  store i32 0, i32* %4, align 4
  br label %108

102:                                              ; preds = %94, %80, %49
  %103 = load %struct.inode*, %struct.inode** %9, align 8
  %104 = call i32 @nfs_mark_for_revalidate(%struct.inode* %103)
  %105 = load %struct.dentry*, %struct.dentry** %8, align 8
  %106 = call i32 @dput(%struct.dentry* %105)
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %102, %99
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local %struct.TYPE_8__* @NFS_PROTO(%struct.inode*) #1

declare dso_local %struct.TYPE_7__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @nfs_set_verifier(%struct.dentry*, i32) #1

declare dso_local i32 @nfs_save_change_attribute(%struct.inode*) #1

declare dso_local %struct.nfs_server* @NFS_SB(i32) #1

declare dso_local %struct.inode* @nfs_fhget(i32, %struct.nfs_fh*, %struct.nfs_fattr*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @nfs_mark_for_revalidate(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
