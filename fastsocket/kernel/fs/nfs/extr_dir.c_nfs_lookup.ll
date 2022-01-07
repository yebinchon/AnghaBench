; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, %struct.TYPE_4__, %struct.dentry*, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.nameidata = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 (i32, %struct.inode*, %struct.TYPE_4__*, %struct.nfs_fh*, %struct.nfs_fattr*)*, i32 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"NFS: lookup(%s/%s)\0A\00", align 1
@NFSIOS_VFSLOOKUP = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @nfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @nfs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.nfs_fh*, align 8
  %11 = alloca %struct.nfs_fattr*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.nameidata* %2, %struct.nameidata** %6, align 8
  store %struct.inode* null, %struct.inode** %9, align 8
  store %struct.nfs_fh* null, %struct.nfs_fh** %10, align 8
  store %struct.nfs_fattr* null, %struct.nfs_fattr** %11, align 8
  %13 = load i32, i32* @VFS, align 4
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 2
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dfprintk(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23)
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = load i32, i32* @NFSIOS_VFSLOOKUP, align 4
  %27 = call i32 @nfs_inc_stats(%struct.inode* %25, i32 %26)
  %28 = load i32, i32* @ENAMETOOLONG, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.dentry* @ERR_PTR(i32 %29)
  store %struct.dentry* %30, %struct.dentry** %7, align 8
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call %struct.TYPE_5__* @NFS_SERVER(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  br label %135

41:                                               ; preds = %3
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = call %struct.TYPE_6__* @NFS_PROTO(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dentry*, %struct.dentry** %5, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %50 = call i64 @nfs_is_exclusive_create(%struct.inode* %48, %struct.nameidata* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load %struct.dentry*, %struct.dentry** %5, align 8
  %54 = call i32 @d_instantiate(%struct.dentry* %53, i32* null)
  store %struct.dentry* null, %struct.dentry** %7, align 8
  br label %135

55:                                               ; preds = %41
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.dentry* @ERR_PTR(i32 %57)
  store %struct.dentry* %58, %struct.dentry** %7, align 8
  %59 = call %struct.nfs_fh* (...) @nfs_alloc_fhandle()
  store %struct.nfs_fh* %59, %struct.nfs_fh** %10, align 8
  %60 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %60, %struct.nfs_fattr** %11, align 8
  %61 = load %struct.nfs_fh*, %struct.nfs_fh** %10, align 8
  %62 = icmp eq %struct.nfs_fh* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %65 = icmp eq %struct.nfs_fattr* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %55
  br label %135

67:                                               ; preds = %63
  %68 = load %struct.dentry*, %struct.dentry** %5, align 8
  %69 = getelementptr inbounds %struct.dentry, %struct.dentry* %68, i32 0, i32 2
  %70 = load %struct.dentry*, %struct.dentry** %69, align 8
  store %struct.dentry* %70, %struct.dentry** %8, align 8
  %71 = load %struct.dentry*, %struct.dentry** %8, align 8
  %72 = call i32 @nfs_block_sillyrename(%struct.dentry* %71)
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = call %struct.TYPE_6__* @NFS_PROTO(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32 (i32, %struct.inode*, %struct.TYPE_4__*, %struct.nfs_fh*, %struct.nfs_fattr*)*, i32 (i32, %struct.inode*, %struct.TYPE_4__*, %struct.nfs_fh*, %struct.nfs_fattr*)** %75, align 8
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = call %struct.TYPE_5__* @NFS_SERVER(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = load %struct.dentry*, %struct.dentry** %5, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 1
  %84 = load %struct.nfs_fh*, %struct.nfs_fh** %10, align 8
  %85 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %86 = call i32 %76(i32 %80, %struct.inode* %81, %struct.TYPE_4__* %83, %struct.nfs_fh* %84, %struct.nfs_fattr* %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @ENOENT, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %67
  br label %114

92:                                               ; preds = %67
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = call %struct.dentry* @ERR_PTR(i32 %96)
  store %struct.dentry* %97, %struct.dentry** %7, align 8
  br label %132

98:                                               ; preds = %92
  %99 = load %struct.dentry*, %struct.dentry** %5, align 8
  %100 = getelementptr inbounds %struct.dentry, %struct.dentry* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.nfs_fh*, %struct.nfs_fh** %10, align 8
  %103 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %104 = call %struct.inode* @nfs_fhget(i32 %101, %struct.nfs_fh* %102, %struct.nfs_fattr* %103)
  store %struct.inode* %104, %struct.inode** %9, align 8
  %105 = load %struct.inode*, %struct.inode** %9, align 8
  %106 = bitcast %struct.inode* %105 to %struct.dentry*
  store %struct.dentry* %106, %struct.dentry** %7, align 8
  %107 = load %struct.dentry*, %struct.dentry** %7, align 8
  %108 = call i64 @IS_ERR(%struct.dentry* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %132

111:                                              ; preds = %98
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = call i32 @nfs_advise_use_readdirplus(%struct.inode* %112)
  br label %114

114:                                              ; preds = %111, %91
  %115 = load %struct.dentry*, %struct.dentry** %5, align 8
  %116 = load %struct.inode*, %struct.inode** %9, align 8
  %117 = call %struct.dentry* @d_materialise_unique(%struct.dentry* %115, %struct.inode* %116)
  store %struct.dentry* %117, %struct.dentry** %7, align 8
  %118 = load %struct.dentry*, %struct.dentry** %7, align 8
  %119 = icmp ne %struct.dentry* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.dentry*, %struct.dentry** %7, align 8
  %122 = call i64 @IS_ERR(%struct.dentry* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %132

125:                                              ; preds = %120
  %126 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %126, %struct.dentry** %5, align 8
  br label %127

127:                                              ; preds = %125, %114
  %128 = load %struct.dentry*, %struct.dentry** %5, align 8
  %129 = load %struct.inode*, %struct.inode** %4, align 8
  %130 = call i32 @nfs_save_change_attribute(%struct.inode* %129)
  %131 = call i32 @nfs_set_verifier(%struct.dentry* %128, i32 %130)
  br label %132

132:                                              ; preds = %127, %124, %110, %95
  %133 = load %struct.dentry*, %struct.dentry** %8, align 8
  %134 = call i32 @nfs_unblock_sillyrename(%struct.dentry* %133)
  br label %135

135:                                              ; preds = %132, %66, %52, %40
  %136 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %137 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %136)
  %138 = load %struct.nfs_fh*, %struct.nfs_fh** %10, align 8
  %139 = call i32 @nfs_free_fhandle(%struct.nfs_fh* %138)
  %140 = load %struct.dentry*, %struct.dentry** %7, align 8
  ret %struct.dentry* %140
}

declare dso_local i32 @dfprintk(i32, i8*, i32, i32) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_5__* @NFS_SERVER(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i64 @nfs_is_exclusive_create(%struct.inode*, %struct.nameidata*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, i32*) #1

declare dso_local %struct.nfs_fh* @nfs_alloc_fhandle(...) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local i32 @nfs_block_sillyrename(%struct.dentry*) #1

declare dso_local %struct.inode* @nfs_fhget(i32, %struct.nfs_fh*, %struct.nfs_fattr*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @nfs_advise_use_readdirplus(%struct.inode*) #1

declare dso_local %struct.dentry* @d_materialise_unique(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @nfs_set_verifier(%struct.dentry*, i32) #1

declare dso_local i32 @nfs_save_change_attribute(%struct.inode*) #1

declare dso_local i32 @nfs_unblock_sillyrename(%struct.dentry*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

declare dso_local i32 @nfs_free_fhandle(%struct.nfs_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
