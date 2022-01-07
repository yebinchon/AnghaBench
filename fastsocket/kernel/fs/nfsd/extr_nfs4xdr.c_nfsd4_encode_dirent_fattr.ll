; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_dirent_fattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_dirent_fattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_readdir = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.svc_export* }
%struct.svc_export = type { i32 }
%struct.dentry = type { i32 }

@nfserr_noent = common dso_local global i64 0, align 8
@NFSEXP_V4ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_readdir*, i8*, i32, i64*, i32*)* @nfsd4_encode_dirent_fattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_dirent_fattr(%struct.nfsd4_readdir* %0, i8* %1, i32 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfsd4_readdir*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.svc_export*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nfsd4_readdir* %0, %struct.nfsd4_readdir** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %18 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.svc_export*, %struct.svc_export** %20, align 8
  store %struct.svc_export* %21, %struct.svc_export** %12, align 8
  store i32 0, i32* %15, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %24 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.dentry* @lookup_one_len(i8* %22, i32 %27, i32 %28)
  store %struct.dentry* %29, %struct.dentry** %13, align 8
  %30 = load %struct.dentry*, %struct.dentry** %13, align 8
  %31 = call i64 @IS_ERR(%struct.dentry* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load %struct.dentry*, %struct.dentry** %13, align 8
  %35 = call i32 @PTR_ERR(%struct.dentry* %34)
  %36 = call i64 @nfserrno(i32 %35)
  store i64 %36, i64* %6, align 8
  br label %107

37:                                               ; preds = %5
  %38 = load %struct.dentry*, %struct.dentry** %13, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load %struct.dentry*, %struct.dentry** %13, align 8
  %44 = call i32 @dput(%struct.dentry* %43)
  %45 = load i64, i64* @nfserr_noent, align 8
  store i64 %45, i64* %6, align 8
  br label %107

46:                                               ; preds = %37
  %47 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %48 = call i32 @exp_get(%struct.svc_export* %47)
  %49 = load %struct.dentry*, %struct.dentry** %13, align 8
  %50 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %51 = call i64 @nfsd_mountpoint(%struct.dentry* %49, %struct.svc_export* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %46
  %54 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %55 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NFSEXP_V4ROOT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %62 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @attributes_need_mount(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 1, i32* %15, align 4
  br label %88

67:                                               ; preds = %60, %53
  %68 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %69 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @nfsd_cross_mnt(i32 %70, %struct.dentry** %13, %struct.svc_export** %12)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* %16, align 4
  %76 = call i64 @nfserrno(i32 %75)
  store i64 %76, i64* %14, align 8
  br label %101

77:                                               ; preds = %67
  %78 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %79 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %80 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @check_nfsd_access(%struct.svc_export* %78, i32 %81)
  store i64 %82, i64* %14, align 8
  %83 = load i64, i64* %14, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %101

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %46
  br label %88

88:                                               ; preds = %87, %66
  %89 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %90 = load %struct.dentry*, %struct.dentry** %13, align 8
  %91 = load i64*, i64** %10, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %94 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nfsd4_readdir*, %struct.nfsd4_readdir** %7, align 8
  %97 = getelementptr inbounds %struct.nfsd4_readdir, %struct.nfsd4_readdir* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = call i64 @nfsd4_encode_fattr(i32* null, %struct.svc_export* %89, %struct.dentry* %90, i64* %91, i32* %92, i32 %95, i32 %98, i32 %99)
  store i64 %100, i64* %14, align 8
  br label %101

101:                                              ; preds = %88, %85, %74
  %102 = load %struct.dentry*, %struct.dentry** %13, align 8
  %103 = call i32 @dput(%struct.dentry* %102)
  %104 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %105 = call i32 @exp_put(%struct.svc_export* %104)
  %106 = load i64, i64* %14, align 8
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %101, %42, %33
  %108 = load i64, i64* %6, align 8
  ret i64 %108
}

declare dso_local %struct.dentry* @lookup_one_len(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @exp_get(%struct.svc_export*) #1

declare dso_local i64 @nfsd_mountpoint(%struct.dentry*, %struct.svc_export*) #1

declare dso_local i32 @attributes_need_mount(i32) #1

declare dso_local i32 @nfsd_cross_mnt(i32, %struct.dentry**, %struct.svc_export**) #1

declare dso_local i64 @check_nfsd_access(%struct.svc_export*, i32) #1

declare dso_local i64 @nfsd4_encode_fattr(i32*, %struct.svc_export*, %struct.dentry*, i64*, i32*, i32, i32, i32) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
