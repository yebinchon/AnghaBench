; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_do_set_nfs4_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_do_set_nfs4_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.nfs4_acl = type { i32 }

@FATTR4_WORD0_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rqst*, %struct.svc_fh*, %struct.nfs4_acl*, i32*)* @do_set_nfs4_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_set_nfs4_acl(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.nfs4_acl* %2, i32* %3) #0 {
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.svc_fh*, align 8
  %7 = alloca %struct.nfs4_acl*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %6, align 8
  store %struct.nfs4_acl* %2, %struct.nfs4_acl** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %11 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %12 = load %struct.nfs4_acl*, %struct.nfs4_acl** %7, align 8
  %13 = call i64 @nfsd4_set_nfs4_acl(%struct.svc_rqst* %10, %struct.svc_fh* %11, %struct.nfs4_acl* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %18 = xor i32 %17, -1
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %16, %4
  ret void
}

declare dso_local i64 @nfsd4_set_nfs4_acl(%struct.svc_rqst*, %struct.svc_fh*, %struct.nfs4_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
