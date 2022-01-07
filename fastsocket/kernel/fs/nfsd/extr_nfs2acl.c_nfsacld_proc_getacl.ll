; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs2acl.c_nfsacld_proc_getacl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs2acl.c_nfsacld_proc_getacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_getaclargs = type { i32, i32 }
%struct.nfsd3_getaclres = type { i32, %struct.posix_acl*, %struct.posix_acl*, i32 }
%struct.posix_acl = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"nfsd: GETACL(2acl)   %s\0A\00", align 1
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@NFS_ACL = common dso_local global i32 0, align 4
@NFS_ACLCNT = common dso_local global i32 0, align 4
@NFS_DFACL = common dso_local global i32 0, align 4
@NFS_DFACLCNT = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i64 0, align 8
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclres*)* @nfsacld_proc_getacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsacld_proc_getacl(%struct.svc_rqst* %0, %struct.nfsd3_getaclargs* %1, %struct.nfsd3_getaclres* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd3_getaclargs*, align 8
  %7 = alloca %struct.nfsd3_getaclres*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd3_getaclargs* %1, %struct.nfsd3_getaclargs** %6, align 8
  store %struct.nfsd3_getaclres* %2, %struct.nfsd3_getaclres** %7, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclargs** %6, align 8
  %15 = getelementptr inbounds %struct.nfsd3_getaclargs, %struct.nfsd3_getaclargs* %14, i32 0, i32 1
  %16 = call i32 @SVCFH_fmt(i32* %15)
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %19 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %18, i32 0, i32 3
  %20 = load %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclargs** %6, align 8
  %21 = getelementptr inbounds %struct.nfsd3_getaclargs, %struct.nfsd3_getaclargs* %20, i32 0, i32 1
  %22 = call %struct.TYPE_6__* @fh_copy(i32* %19, i32* %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %8, align 8
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %24 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %25 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %24, i32 0, i32 3
  %26 = load i32, i32* @NFSD_MAY_NOP, align 4
  %27 = call i64 @fh_verify(%struct.svc_rqst* %23, i32* %25, i32 0, i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @RETURN_STATUS(i64 %31)
  br label %33

33:                                               ; preds = %30, %3
  %34 = load %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclargs** %6, align 8
  %35 = getelementptr inbounds %struct.nfsd3_getaclargs, %struct.nfsd3_getaclargs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NFS_ACL, align 4
  %38 = load i32, i32* @NFS_ACLCNT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @NFS_DFACL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NFS_DFACLCNT, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = and i32 %36, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load i64, i64* @nfserr_inval, align 8
  %49 = call i32 @RETURN_STATUS(i64 %48)
  br label %50

50:                                               ; preds = %47, %33
  %51 = load %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclargs** %6, align 8
  %52 = getelementptr inbounds %struct.nfsd3_getaclargs, %struct.nfsd3_getaclargs* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %55 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %57 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @NFS_ACL, align 4
  %60 = load i32, i32* @NFS_ACLCNT, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %106

64:                                               ; preds = %50
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %67 = call %struct.posix_acl* @nfsd_get_posix_acl(%struct.TYPE_6__* %65, i32 %66)
  store %struct.posix_acl* %67, %struct.posix_acl** %9, align 8
  %68 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %69 = call i64 @IS_ERR(%struct.posix_acl* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %64
  %72 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %73 = call i32 @PTR_ERR(%struct.posix_acl* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @ENODATA, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @EOPNOTSUPP, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %71
  store %struct.posix_acl* null, %struct.posix_acl** %9, align 8
  br label %87

84:                                               ; preds = %78
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @nfserrno(i32 %85)
  store i64 %86, i64* %10, align 8
  br label %145

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %64
  %89 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %90 = icmp eq %struct.posix_acl* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.inode*, %struct.inode** %95, align 8
  store %struct.inode* %96, %struct.inode** %12, align 8
  %97 = load %struct.inode*, %struct.inode** %12, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call %struct.posix_acl* @posix_acl_from_mode(i32 %99, i32 %100)
  store %struct.posix_acl* %101, %struct.posix_acl** %9, align 8
  br label %102

102:                                              ; preds = %91, %88
  %103 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %104 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %105 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %104, i32 0, i32 2
  store %struct.posix_acl* %103, %struct.posix_acl** %105, align 8
  br label %106

106:                                              ; preds = %102, %50
  %107 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %108 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @NFS_DFACL, align 4
  %111 = load i32, i32* @NFS_DFACLCNT, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %106
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %117 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %118 = call %struct.posix_acl* @nfsd_get_posix_acl(%struct.TYPE_6__* %116, i32 %117)
  store %struct.posix_acl* %118, %struct.posix_acl** %9, align 8
  %119 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %120 = call i64 @IS_ERR(%struct.posix_acl* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %115
  %123 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %124 = call i32 @PTR_ERR(%struct.posix_acl* %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @ENODATA, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @EOPNOTSUPP, align 4
  %132 = sub nsw i32 0, %131
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %129, %122
  store %struct.posix_acl* null, %struct.posix_acl** %9, align 8
  br label %138

135:                                              ; preds = %129
  %136 = load i32, i32* %13, align 4
  %137 = call i64 @nfserrno(i32 %136)
  store i64 %137, i64* %10, align 8
  br label %145

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %138, %115
  %140 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %141 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %142 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %141, i32 0, i32 1
  store %struct.posix_acl* %140, %struct.posix_acl** %142, align 8
  br label %143

143:                                              ; preds = %139, %106
  %144 = call i32 @RETURN_STATUS(i64 0)
  br label %145

145:                                              ; preds = %143, %135, %84
  %146 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %147 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %146, i32 0, i32 2
  %148 = load %struct.posix_acl*, %struct.posix_acl** %147, align 8
  %149 = call i32 @posix_acl_release(%struct.posix_acl* %148)
  %150 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %151 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %150, i32 0, i32 1
  %152 = load %struct.posix_acl*, %struct.posix_acl** %151, align 8
  %153 = call i32 @posix_acl_release(%struct.posix_acl* %152)
  %154 = load i64, i64* %10, align 8
  %155 = call i32 @RETURN_STATUS(i64 %154)
  %156 = load i64, i64* %4, align 8
  ret i64 %156
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @SVCFH_fmt(i32*) #1

declare dso_local %struct.TYPE_6__* @fh_copy(i32*, i32*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, i32*, i32, i32) #1

declare dso_local i32 @RETURN_STATUS(i64) #1

declare dso_local %struct.posix_acl* @nfsd_get_posix_acl(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local %struct.posix_acl* @posix_acl_from_mode(i32, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
