; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3acl.c_nfsd3_proc_getacl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3acl.c_nfsd3_proc_getacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd3_getaclargs = type { i32, i32 }
%struct.nfsd3_getaclres = type { i32, %struct.posix_acl*, %struct.posix_acl*, i32 }
%struct.posix_acl = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclres*)* @nfsd3_proc_getacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd3_proc_getacl(%struct.svc_rqst* %0, %struct.nfsd3_getaclargs* %1, %struct.nfsd3_getaclres* %2) #0 {
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
  %14 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %15 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %14, i32 0, i32 3
  %16 = load %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclargs** %6, align 8
  %17 = getelementptr inbounds %struct.nfsd3_getaclargs, %struct.nfsd3_getaclargs* %16, i32 0, i32 1
  %18 = call %struct.TYPE_6__* @fh_copy(i32* %15, i32* %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %8, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %20 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %20, i32 0, i32 3
  %22 = load i32, i32* @NFSD_MAY_NOP, align 4
  %23 = call i64 @fh_verify(%struct.svc_rqst* %19, i32* %21, i32 0, i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @RETURN_STATUS(i64 %27)
  br label %29

29:                                               ; preds = %26, %3
  %30 = load %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclargs** %6, align 8
  %31 = getelementptr inbounds %struct.nfsd3_getaclargs, %struct.nfsd3_getaclargs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NFS_ACL, align 4
  %34 = load i32, i32* @NFS_ACLCNT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NFS_DFACL, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NFS_DFACLCNT, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %32, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i64, i64* @nfserr_inval, align 8
  %45 = call i32 @RETURN_STATUS(i64 %44)
  br label %46

46:                                               ; preds = %43, %29
  %47 = load %struct.nfsd3_getaclargs*, %struct.nfsd3_getaclargs** %6, align 8
  %48 = getelementptr inbounds %struct.nfsd3_getaclargs, %struct.nfsd3_getaclargs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %51 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %53 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @NFS_ACL, align 4
  %56 = load i32, i32* @NFS_ACLCNT, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %102

60:                                               ; preds = %46
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %63 = call %struct.posix_acl* @nfsd_get_posix_acl(%struct.TYPE_6__* %61, i32 %62)
  store %struct.posix_acl* %63, %struct.posix_acl** %9, align 8
  %64 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %65 = call i64 @IS_ERR(%struct.posix_acl* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %60
  %68 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %69 = call i32 @PTR_ERR(%struct.posix_acl* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @ENODATA, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74, %67
  store %struct.posix_acl* null, %struct.posix_acl** %9, align 8
  br label %83

80:                                               ; preds = %74
  %81 = load i32, i32* %11, align 4
  %82 = call i64 @nfserrno(i32 %81)
  store i64 %82, i64* %10, align 8
  br label %141

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %60
  %85 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %86 = icmp eq %struct.posix_acl* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.inode*, %struct.inode** %91, align 8
  store %struct.inode* %92, %struct.inode** %12, align 8
  %93 = load %struct.inode*, %struct.inode** %12, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call %struct.posix_acl* @posix_acl_from_mode(i32 %95, i32 %96)
  store %struct.posix_acl* %97, %struct.posix_acl** %9, align 8
  br label %98

98:                                               ; preds = %87, %84
  %99 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %100 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %101 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %100, i32 0, i32 2
  store %struct.posix_acl* %99, %struct.posix_acl** %101, align 8
  br label %102

102:                                              ; preds = %98, %46
  %103 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %104 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @NFS_DFACL, align 4
  %107 = load i32, i32* @NFS_DFACLCNT, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %139

111:                                              ; preds = %102
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %113 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %114 = call %struct.posix_acl* @nfsd_get_posix_acl(%struct.TYPE_6__* %112, i32 %113)
  store %struct.posix_acl* %114, %struct.posix_acl** %9, align 8
  %115 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %116 = call i64 @IS_ERR(%struct.posix_acl* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %111
  %119 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %120 = call i32 @PTR_ERR(%struct.posix_acl* %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @ENODATA, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %118
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @EOPNOTSUPP, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125, %118
  store %struct.posix_acl* null, %struct.posix_acl** %9, align 8
  br label %134

131:                                              ; preds = %125
  %132 = load i32, i32* %13, align 4
  %133 = call i64 @nfserrno(i32 %132)
  store i64 %133, i64* %10, align 8
  br label %141

134:                                              ; preds = %130
  br label %135

135:                                              ; preds = %134, %111
  %136 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %137 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %138 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %137, i32 0, i32 1
  store %struct.posix_acl* %136, %struct.posix_acl** %138, align 8
  br label %139

139:                                              ; preds = %135, %102
  %140 = call i32 @RETURN_STATUS(i64 0)
  br label %141

141:                                              ; preds = %139, %131, %80
  %142 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %143 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %142, i32 0, i32 2
  %144 = load %struct.posix_acl*, %struct.posix_acl** %143, align 8
  %145 = call i32 @posix_acl_release(%struct.posix_acl* %144)
  %146 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %147 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %146, i32 0, i32 1
  %148 = load %struct.posix_acl*, %struct.posix_acl** %147, align 8
  %149 = call i32 @posix_acl_release(%struct.posix_acl* %148)
  %150 = load i64, i64* %10, align 8
  %151 = call i32 @RETURN_STATUS(i64 %150)
  %152 = load i64, i64* %4, align 8
  ret i64 %152
}

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
