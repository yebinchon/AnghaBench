; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_secinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_secinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_secinfo = type { %struct.svc_export*, i32, i32 }
%struct.svc_export = type { i32 }
%struct.svc_fh = type { i32 }
%struct.dentry = type { i32* }

@NFS4_FHSIZE = common dso_local global i32 0, align 4
@nfserr_noent = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_secinfo*)* @nfsd4_secinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_secinfo(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_secinfo* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_secinfo*, align 8
  %8 = alloca %struct.svc_fh, align 4
  %9 = alloca %struct.svc_export*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_secinfo* %2, %struct.nfsd4_secinfo** %7, align 8
  %12 = load i32, i32* @NFS4_FHSIZE, align 4
  %13 = call i32 @fh_init(%struct.svc_fh* %8, i32 %12)
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %15 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %16 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %15, i32 0, i32 0
  %17 = load %struct.nfsd4_secinfo*, %struct.nfsd4_secinfo** %7, align 8
  %18 = getelementptr inbounds %struct.nfsd4_secinfo, %struct.nfsd4_secinfo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nfsd4_secinfo*, %struct.nfsd4_secinfo** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd4_secinfo, %struct.nfsd4_secinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @nfsd_lookup_dentry(%struct.svc_rqst* %14, i32* %16, i32 %19, i32 %22, %struct.svc_export** %9, %struct.dentry** %10)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i64, i64* %11, align 8
  store i64 %27, i64* %4, align 8
  br label %45

28:                                               ; preds = %3
  %29 = load %struct.dentry*, %struct.dentry** %10, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %35 = call i32 @exp_put(%struct.svc_export* %34)
  %36 = load i64, i64* @nfserr_noent, align 8
  store i64 %36, i64* %11, align 8
  br label %41

37:                                               ; preds = %28
  %38 = load %struct.svc_export*, %struct.svc_export** %9, align 8
  %39 = load %struct.nfsd4_secinfo*, %struct.nfsd4_secinfo** %7, align 8
  %40 = getelementptr inbounds %struct.nfsd4_secinfo, %struct.nfsd4_secinfo* %39, i32 0, i32 0
  store %struct.svc_export* %38, %struct.svc_export** %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.dentry*, %struct.dentry** %10, align 8
  %43 = call i32 @dput(%struct.dentry* %42)
  %44 = load i64, i64* %11, align 8
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %41, %26
  %46 = load i64, i64* %4, align 8
  ret i64 %46
}

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i64 @nfsd_lookup_dentry(%struct.svc_rqst*, i32*, i32, i32, %struct.svc_export**, %struct.dentry**) #1

declare dso_local i32 @exp_put(%struct.svc_export*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
