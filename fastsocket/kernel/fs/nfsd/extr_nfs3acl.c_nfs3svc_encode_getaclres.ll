; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3acl.c_nfs3svc_encode_getaclres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3acl.c_nfs3svc_encode_getaclres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { %struct.TYPE_3__, i32, i32* }
%struct.TYPE_3__ = type { i32, %struct.kvec* }
%struct.kvec = type { i64 }
%struct.nfsd3_getaclres = type { i64, i32, i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }

@NFS_ACL = common dso_local global i32 0, align 4
@NFS_DFACL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@NFS_ACL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32*, %struct.nfsd3_getaclres*)* @nfs3svc_encode_getaclres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3svc_encode_getaclres(%struct.svc_rqst* %0, i32* %1, %struct.nfsd3_getaclres* %2) #0 {
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
  %15 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %17, %struct.dentry** %8, align 8
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %20, i32 0, i32 4
  %22 = call i32* @nfs3svc_encode_post_op_attr(%struct.svc_rqst* %18, i32* %19, %struct.TYPE_4__* %21)
  store i32* %22, i32** %6, align 8
  %23 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %24 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %155

27:                                               ; preds = %3
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  %29 = icmp ne %struct.dentry* %28, null
  br i1 %29, label %30, label %155

30:                                               ; preds = %27
  %31 = load %struct.dentry*, %struct.dentry** %8, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = load %struct.inode*, %struct.inode** %32, align 8
  %34 = icmp ne %struct.inode* %33, null
  br i1 %34, label %35, label %155

35:                                               ; preds = %30
  %36 = load %struct.dentry*, %struct.dentry** %8, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = load %struct.inode*, %struct.inode** %37, align 8
  store %struct.inode* %38, %struct.inode** %9, align 8
  %39 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %40 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load %struct.kvec*, %struct.kvec** %41, align 8
  store %struct.kvec* %42, %struct.kvec** %10, align 8
  %43 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %44 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @htonl(i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  %49 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @xdr_ressize_check(%struct.svc_rqst* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %163

54:                                               ; preds = %35
  %55 = load i32*, i32** %6, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = load %struct.kvec*, %struct.kvec** %10, align 8
  %58 = getelementptr inbounds %struct.kvec, %struct.kvec* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = ptrtoint i8* %56 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %11, align 4
  %65 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %66 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NFS_ACL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %54
  %72 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %73 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  br label %76

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i32* [ %74, %71 ], [ null, %75 ]
  %78 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %79 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @NFS_DFACL, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %86 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  br label %89

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i32* [ %87, %84 ], [ null, %88 ]
  %91 = call i32 @nfsacl_size(i32* %77, i32* %90)
  store i32 %91, i32* %13, align 4
  %92 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %93 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  br label %95

95:                                               ; preds = %111, %89
  %96 = load i32, i32* %13, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %95
  %99 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %100 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %103 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %163

111:                                              ; preds = %98
  %112 = load i64, i64* @PAGE_SIZE, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %13, align 4
  br label %95

117:                                              ; preds = %95
  %118 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %119 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %118, i32 0, i32 0
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.inode*, %struct.inode** %9, align 8
  %122 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %123 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %126 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @NFS_ACL, align 4
  %129 = and i32 %127, %128
  %130 = call i32 @nfsacl_encode(%struct.TYPE_3__* %119, i32 %120, %struct.inode* %121, i32* %124, i32 %129, i32 0)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %117
  %134 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %135 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %134, i32 0, i32 0
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %12, align 4
  %138 = add i32 %136, %137
  %139 = load %struct.inode*, %struct.inode** %9, align 8
  %140 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %141 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.nfsd3_getaclres*, %struct.nfsd3_getaclres** %7, align 8
  %144 = getelementptr inbounds %struct.nfsd3_getaclres, %struct.nfsd3_getaclres* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @NFS_DFACL, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @NFS_ACL_DEFAULT, align 4
  %149 = call i32 @nfsacl_encode(%struct.TYPE_3__* %135, i32 %138, %struct.inode* %139, i32* %142, i32 %147, i32 %148)
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %133, %117
  %151 = load i32, i32* %12, align 4
  %152 = icmp sle i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 0, i32* %4, align 4
  br label %163

154:                                              ; preds = %150
  br label %162

155:                                              ; preds = %30, %27, %3
  %156 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = call i32 @xdr_ressize_check(%struct.svc_rqst* %156, i32* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  store i32 0, i32* %4, align 4
  br label %163

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161, %154
  store i32 1, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %160, %153, %110, %53
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32* @nfs3svc_encode_post_op_attr(%struct.svc_rqst*, i32*, %struct.TYPE_4__*) #1

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
