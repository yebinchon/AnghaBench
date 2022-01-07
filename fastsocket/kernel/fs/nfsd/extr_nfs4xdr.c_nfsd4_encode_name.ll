; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }

@IDMAP_NAMESZ = common dso_local global i32 0, align 4
@nfserr_resource = common dso_local global i32 0, align 4
@NFS4_ACL_WHO_NAMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32, i32, i32, i32**, i32*)* @nfsd4_encode_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_name(%struct.svc_rqst* %0, i32 %1, i32 %2, i32 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.svc_rqst*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32*, i32** %13, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IDMAP_NAMESZ, align 4
  %18 = call i32 @XDR_QUADLEN(i32 %17)
  %19 = shl i32 %18, 2
  %20 = add nsw i32 %19, 4
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @nfserr_resource, align 4
  store i32 %23, i32* %7, align 4
  br label %76

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @NFS4_ACL_WHO_NAMED, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = load i32**, i32*** %12, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = call i32 @nfs4_acl_write_who(i32 %29, i32* %32)
  store i32 %33, i32* %14, align 4
  br label %52

34:                                               ; preds = %24
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32**, i32*** %12, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = call i32 @nfsd_map_gid_to_name(%struct.svc_rqst* %38, i32 %39, i32* %42)
  store i32 %43, i32* %14, align 4
  br label %51

44:                                               ; preds = %34
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32**, i32*** %12, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = call i32 @nfsd_map_uid_to_name(%struct.svc_rqst* %45, i32 %46, i32* %49)
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %44, %37
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @nfserrno(i32 %56)
  store i32 %57, i32* %7, align 4
  br label %76

58:                                               ; preds = %52
  %59 = load i32**, i32*** %12, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32* @xdr_encode_opaque(i32* %60, i32* null, i32 %61)
  %63 = load i32**, i32*** %12, align 8
  store i32* %62, i32** %63, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @XDR_QUADLEN(i32 %64)
  %66 = shl i32 %65, 2
  %67 = add nsw i32 %66, 4
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %58, %55, %22
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32 @nfs4_acl_write_who(i32, i32*) #1

declare dso_local i32 @nfsd_map_gid_to_name(%struct.svc_rqst*, i32, i32*) #1

declare dso_local i32 @nfsd_map_uid_to_name(%struct.svc_rqst*, i32, i32*) #1

declare dso_local i32 @nfserrno(i32) #1

declare dso_local i32* @xdr_encode_opaque(i32*, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
