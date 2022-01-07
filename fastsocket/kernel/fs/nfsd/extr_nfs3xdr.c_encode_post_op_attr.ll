; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_encode_post_op_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_encode_post_op_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { %struct.TYPE_4__*, %struct.dentry* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i64 }
%struct.kstat = type { i32 }

@xdr_one = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.svc_rqst*, i32*, %struct.svc_fh*)* @encode_post_op_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @encode_post_op_attr(%struct.svc_rqst* %0, i32* %1, %struct.svc_fh* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kstat, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %7, align 8
  %11 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %12 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %11, i32 0, i32 1
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %8, align 8
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = icmp ne %struct.dentry* %14, null
  br i1 %15, label %16, label %46

16:                                               ; preds = %3
  %17 = load %struct.dentry*, %struct.dentry** %8, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %16
  %22 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %23 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  %29 = call i32 @vfs_getattr(i32 %27, %struct.dentry* %28, %struct.kstat* %10)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @xdr_one, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %36 = load %struct.dentry*, %struct.dentry** %8, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.kstat, %struct.kstat* %10, i32 0, i32 0
  %40 = call i32 @lease_get_mtime(i64 %38, i32* %39)
  %41 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %44 = call i32* @encode_fattr3(%struct.svc_rqst* %41, i32* %42, %struct.svc_fh* %43, %struct.kstat* %10)
  store i32* %44, i32** %4, align 8
  br label %51

45:                                               ; preds = %21
  br label %46

46:                                               ; preds = %45, %16, %3
  %47 = load i32, i32* @xdr_zero, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  store i32* %50, i32** %4, align 8
  br label %51

51:                                               ; preds = %46, %32
  %52 = load i32*, i32** %4, align 8
  ret i32* %52
}

declare dso_local i32 @vfs_getattr(i32, %struct.dentry*, %struct.kstat*) #1

declare dso_local i32 @lease_get_mtime(i64, i32*) #1

declare dso_local i32* @encode_fattr3(%struct.svc_rqst*, i32*, %struct.svc_fh*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
