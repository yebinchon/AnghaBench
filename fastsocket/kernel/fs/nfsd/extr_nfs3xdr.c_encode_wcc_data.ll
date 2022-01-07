; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_encode_wcc_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs3xdr.c_encode_wcc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32, i32, i64, i64, i64, %struct.dentry* }
%struct.dentry = type { i64 }

@xdr_one = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.svc_rqst*, i32*, %struct.svc_fh*)* @encode_wcc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @encode_wcc_data(%struct.svc_rqst* %0, i32* %1, %struct.svc_fh* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca %struct.dentry*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %7, align 8
  %9 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %10 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %9, i32 0, i32 5
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %8, align 8
  %12 = load %struct.dentry*, %struct.dentry** %8, align 8
  %13 = icmp ne %struct.dentry* %12, null
  br i1 %13, label %14, label %57

14:                                               ; preds = %3
  %15 = load %struct.dentry*, %struct.dentry** %8, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %14
  %20 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %21 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %19
  %25 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %26 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load i32, i32* @xdr_one, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %35 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32* @xdr_encode_hyper(i32* %33, i32 %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %41 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %40, i32 0, i32 1
  %42 = call i32* @encode_time3(i32* %39, i32* %41)
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %45 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %44, i32 0, i32 0
  %46 = call i32* @encode_time3(i32* %43, i32* %45)
  store i32* %46, i32** %6, align 8
  br label %52

47:                                               ; preds = %24
  %48 = load i8*, i8** @xdr_zero, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  br label %52

52:                                               ; preds = %47, %29
  %53 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %56 = call i32* @encode_saved_post_attr(%struct.svc_rqst* %53, i32* %54, %struct.svc_fh* %55)
  store i32* %56, i32** %4, align 8
  br label %66

57:                                               ; preds = %19, %14, %3
  %58 = load i8*, i8** @xdr_zero, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  %62 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %65 = call i32* @encode_post_op_attr(%struct.svc_rqst* %62, i32* %63, %struct.svc_fh* %64)
  store i32* %65, i32** %4, align 8
  br label %66

66:                                               ; preds = %57, %52
  %67 = load i32*, i32** %4, align 8
  ret i32* %67
}

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32* @encode_time3(i32*, i32*) #1

declare dso_local i32* @encode_saved_post_attr(%struct.svc_rqst*, i32*, %struct.svc_fh*) #1

declare dso_local i32* @encode_post_op_attr(%struct.svc_rqst*, i32*, %struct.svc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
