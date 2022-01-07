; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs2acl.c_nfsaclsvc_encode_getaclres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs2acl.c_nfsaclsvc_encode_getaclres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_3__, i32, i32* }
%struct.TYPE_3__ = type { i32, %struct.kvec* }
%struct.kvec = type { i64 }
%struct.nfsd3_getaclres = type { i32, i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }

@NFS_ACL = common dso_local global i32 0, align 4
@NFS_DFACL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@NFS_ACL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32*, %struct.nfsd3_getaclres*)* @nfsaclsvc_encode_getaclres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsaclsvc_encode_getaclres(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_getaclres* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsd3_getaclres*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.kvec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nfsd3_getaclres* %2, %struct.nfsd3_getaclres** %7, align 8
  %14 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %15 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %17, %struct.dentry** %8, align 8
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %19 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.kvec*, %struct.kvec** %20, align 8
  store %struct.kvec* %21, %struct.kvec** %10, align 8
  %22 = load %struct.dentry*, %struct.dentry** %8, align 8
  %23 = icmp eq %struct.dentry* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load %struct.dentry*, %struct.dentry** %8, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  %28 = icmp eq %struct.inode* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %3
  store i32 0, i32* %4, align 4
  br label %151

30:                                               ; preds = %24
  %31 = load %struct.dentry*, %struct.dentry** %8, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = load %struct.inode*, %struct.inode** %32, align 8
  store %struct.inode* %33, %struct.inode** %9, align 8
  %34 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %37 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %36, i32 0, i32 3
  %38 = call i32* @nfs2svc_encode_fattr(%struct.svc_rqst* %34, i32* %35, %struct.TYPE_4__* %37)
  store i32* %38, i32** %6, align 8
  %39 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %40 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @htonl(i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @xdr_ressize_check(%struct.svc_rqst* %45, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %151

50:                                               ; preds = %30
  %51 = load i32*, i32** %6, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = load %struct.kvec*, %struct.kvec** %10, align 8
  %54 = getelementptr inbounds %struct.kvec, %struct.kvec* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = ptrtoint i8* %52 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %62 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NFS_ACL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %50
  %68 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %69 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  br label %72

71:                                               ; preds = %50
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32* [ %70, %67 ], [ null, %71 ]
  %74 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %75 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @NFS_DFACL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %82 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  br label %85

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi i32* [ %83, %80 ], [ null, %84 ]
  %87 = call i32 @nfsacl_size(i32* %73, i32* %86)
  store i32 %87, i32* %13, align 4
  %88 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %89 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  br label %91

91:                                               ; preds = %107, %85
  %92 = load i32, i32* %13, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %91
  %95 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %96 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %99 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %97, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %151

107:                                              ; preds = %94
  %108 = load i64, i64* @PAGE_SIZE, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = sub nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %13, align 4
  br label %91

113:                                              ; preds = %91
  %114 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %115 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %114, i32 0, i32 0
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.inode*, %struct.inode** %9, align 8
  %118 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %119 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %122 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @NFS_ACL, align 4
  %125 = and i32 %123, %124
  %126 = call i32 @nfsacl_encode(%struct.TYPE_3__* %115, i32 %116, %struct.inode* %117, i32* %120, i32 %125, i32 0)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %113
  %130 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %131 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %130, i32 0, i32 0
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %12, align 4
  %134 = add i32 %132, %133
  %135 = load %struct.inode*, %struct.inode** %9, align 8
  %136 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %137 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %140 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @NFS_DFACL, align 4
  %143 = and i32 %141, %142
  %144 = load i32, i32* @NFS_ACL_DEFAULT, align 4
  %145 = call i32 @nfsacl_encode(%struct.TYPE_3__* %131, i32 %134, %struct.inode* %135, i32* %138, i32 %143, i32 %144)
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %129, %113
  %147 = load i32, i32* %12, align 4
  %148 = icmp sle i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %151

150:                                              ; preds = %146
  store i32 1, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %149, %106, %49, %29
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32* @nfs2svc_encode_fattr(%struct.svc_rqst*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @xdr_ressize_check(%struct.svc_rqst*, i32*) #1

declare dso_local i32 @nfsacl_size(i32*, i32*) #1

declare dso_local i32 @nfsacl_encode(%struct.TYPE_3__*, i32, %struct.inode*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
