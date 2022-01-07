; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { %struct.TYPE_2__*, %struct.dentry* }
%struct.TYPE_2__ = type { i32 }
%struct.dentry = type { i32, %struct.inode* }
%struct.inode = type { i32 }

@nfserr_acces = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@NFSD_MAY_REMOVE = common dso_local global i32 0, align 4
@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@nfserr_noent = common dso_local global i64 0, align 8
@S_IFMT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NFSEXP_MSNFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_unlink(%struct.svc_rqst* %0, %struct.svc_fh* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.svc_rqst*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %6, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i64, i64* @nfserr_acces, align 8
  store i64 %16, i64* %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @isdotent(i8* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %5
  br label %113

25:                                               ; preds = %19
  %26 = load %struct.svc_rqst*, %struct.svc_rqst** %6, align 8
  %27 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %28 = load i32, i32* @S_IFDIR, align 4
  %29 = load i32, i32* @NFSD_MAY_REMOVE, align 4
  %30 = call i64 @fh_verify(%struct.svc_rqst* %26, %struct.svc_fh* %27, i32 %28, i32 %29)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %113

34:                                               ; preds = %25
  %35 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %36 = call i32 @fh_want_write(%struct.svc_fh* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %110

40:                                               ; preds = %34
  %41 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %42 = load i32, i32* @I_MUTEX_PARENT, align 4
  %43 = call i32 @fh_lock_nested(%struct.svc_fh* %41, i32 %42)
  %44 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %45 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %44, i32 0, i32 1
  %46 = load %struct.dentry*, %struct.dentry** %45, align 8
  store %struct.dentry* %46, %struct.dentry** %11, align 8
  %47 = load %struct.dentry*, %struct.dentry** %11, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 1
  %49 = load %struct.inode*, %struct.inode** %48, align 8
  store %struct.inode* %49, %struct.inode** %13, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.dentry*, %struct.dentry** %11, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call %struct.dentry* @lookup_one_len(i8* %50, %struct.dentry* %51, i32 %52)
  store %struct.dentry* %53, %struct.dentry** %12, align 8
  %54 = load %struct.dentry*, %struct.dentry** %12, align 8
  %55 = call i32 @PTR_ERR(%struct.dentry* %54)
  store i32 %55, i32* %15, align 4
  %56 = load %struct.dentry*, %struct.dentry** %12, align 8
  %57 = call i64 @IS_ERR(%struct.dentry* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %40
  br label %110

60:                                               ; preds = %40
  %61 = load %struct.dentry*, %struct.dentry** %12, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 1
  %63 = load %struct.inode*, %struct.inode** %62, align 8
  %64 = icmp ne %struct.inode* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load %struct.dentry*, %struct.dentry** %12, align 8
  %67 = call i32 @dput(%struct.dentry* %66)
  %68 = load i64, i64* @nfserr_noent, align 8
  store i64 %68, i64* %14, align 8
  br label %113

69:                                               ; preds = %60
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %69
  %73 = load %struct.dentry*, %struct.dentry** %12, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 1
  %75 = load %struct.inode*, %struct.inode** %74, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @S_IFMT, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %72, %69
  %81 = load %struct.dentry*, %struct.dentry** %12, align 8
  %82 = getelementptr inbounds %struct.dentry, %struct.dentry* %81, i32 0, i32 1
  %83 = load %struct.inode*, %struct.inode** %82, align 8
  %84 = call i32 @nfsd_break_lease(%struct.inode* %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %107

88:                                               ; preds = %80
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @S_IFDIR, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load %struct.inode*, %struct.inode** %13, align 8
  %94 = load %struct.dentry*, %struct.dentry** %12, align 8
  %95 = call i32 @vfs_unlink(%struct.inode* %93, %struct.dentry* %94)
  store i32 %95, i32* %15, align 4
  br label %100

96:                                               ; preds = %88
  %97 = load %struct.inode*, %struct.inode** %13, align 8
  %98 = load %struct.dentry*, %struct.dentry** %12, align 8
  %99 = call i32 @vfs_rmdir(%struct.inode* %97, %struct.dentry* %98)
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %105 = call i32 @commit_metadata(%struct.svc_fh* %104)
  store i32 %105, i32* %15, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %87
  %108 = load %struct.dentry*, %struct.dentry** %12, align 8
  %109 = call i32 @dput(%struct.dentry* %108)
  br label %110

110:                                              ; preds = %107, %59, %39
  %111 = load i32, i32* %15, align 4
  %112 = call i64 @nfserrno(i32 %111)
  store i64 %112, i64* %14, align 8
  br label %113

113:                                              ; preds = %110, %65, %33, %24
  %114 = load i64, i64* %14, align 8
  ret i64 %114
}

declare dso_local i64 @isdotent(i8*, i32) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i32 @fh_want_write(%struct.svc_fh*) #1

declare dso_local i32 @fh_lock_nested(%struct.svc_fh*, i32) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @nfsd_break_lease(%struct.inode*) #1

declare dso_local i32 @vfs_unlink(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @vfs_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @commit_metadata(%struct.svc_fh*) #1

declare dso_local i64 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
