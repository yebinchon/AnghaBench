; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs2acl.c_nfsaclsvc_decode_setaclargs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs2acl.c_nfsaclsvc_decode_setaclargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvec* }
%struct.kvec = type { i64 }
%struct.nfsd3_setaclargs = type { i32, i32, i32, i32 }

@NFS_ACL = common dso_local global i32 0, align 4
@NFS_ACLCNT = common dso_local global i32 0, align 4
@NFS_DFACL = common dso_local global i32 0, align 4
@NFS_DFACLCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32*, %struct.nfsd3_setaclargs*)* @nfsaclsvc_decode_setaclargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsaclsvc_decode_setaclargs(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_setaclargs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd3_setaclargs*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd3_setaclargs* %2, %struct.nfsd3_setaclargs** %7, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %12 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.kvec*, %struct.kvec** %13, align 8
  store %struct.kvec* %14, %struct.kvec** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %7, align 8
  %17 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %16, i32 0, i32 3
  %18 = call i32* @nfs2svc_decode_fh(i32* %15, i32* %17)
  store i32* %18, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %99

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %6, align 8
  %24 = load i32, i32* %22, align 4
  %25 = call i32 @ntohl(i32 %24)
  %26 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %7, align 8
  %27 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %7, align 8
  %29 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NFS_ACL, align 4
  %32 = load i32, i32* @NFS_ACLCNT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @NFS_DFACL, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NFS_DFACLCNT, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %30, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %21
  %42 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @xdr_argsize_check(%struct.svc_rqst* %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41, %21
  store i32 0, i32* %4, align 4
  br label %99

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load %struct.kvec*, %struct.kvec** %8, align 8
  %51 = getelementptr inbounds %struct.kvec, %struct.kvec* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = ptrtoint i8* %49 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %59 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %58, i32 0, i32 0
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %7, align 8
  %62 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NFS_ACL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %47
  %68 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %7, align 8
  %69 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %68, i32 0, i32 2
  br label %71

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i32* [ %69, %67 ], [ null, %70 ]
  %73 = call i32 @nfsacl_decode(%struct.TYPE_2__* %59, i32 %60, i32* null, i32* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %78 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %77, i32 0, i32 0
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add i32 %79, %80
  %82 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %7, align 8
  %83 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NFS_DFACL, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load %struct.nfsd3_setaclargs*, %struct.nfsd3_setaclargs** %7, align 8
  %90 = getelementptr inbounds %struct.nfsd3_setaclargs, %struct.nfsd3_setaclargs* %89, i32 0, i32 1
  br label %92

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91, %88
  %93 = phi i32* [ %90, %88 ], [ null, %91 ]
  %94 = call i32 @nfsacl_decode(%struct.TYPE_2__* %78, i32 %81, i32* null, i32* %93)
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %92, %71
  %96 = load i32, i32* %10, align 4
  %97 = icmp sgt i32 %96, 0
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %95, %46, %20
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32* @nfs2svc_decode_fh(i32*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @xdr_argsize_check(%struct.svc_rqst*, i32*) #1

declare dso_local i32 @nfsacl_decode(%struct.TYPE_2__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
