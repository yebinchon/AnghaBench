; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_access = type { i32, i32, i32 }

@NFS3_ACCESS_FULL = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_access*)* @nfsd4_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_access(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_access* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_access*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_access* %2, %struct.nfsd4_access** %7, align 8
  %8 = load %struct.nfsd4_access*, %struct.nfsd4_access** %7, align 8
  %9 = getelementptr inbounds %struct.nfsd4_access, %struct.nfsd4_access* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NFS3_ACCESS_FULL, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @nfserr_inval, align 4
  store i32 %16, i32* %4, align 4
  br label %31

17:                                               ; preds = %3
  %18 = load %struct.nfsd4_access*, %struct.nfsd4_access** %7, align 8
  %19 = getelementptr inbounds %struct.nfsd4_access, %struct.nfsd4_access* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nfsd4_access*, %struct.nfsd4_access** %7, align 8
  %22 = getelementptr inbounds %struct.nfsd4_access, %struct.nfsd4_access* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %24 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %25 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %24, i32 0, i32 0
  %26 = load %struct.nfsd4_access*, %struct.nfsd4_access** %7, align 8
  %27 = getelementptr inbounds %struct.nfsd4_access, %struct.nfsd4_access* %26, i32 0, i32 1
  %28 = load %struct.nfsd4_access*, %struct.nfsd4_access** %7, align 8
  %29 = getelementptr inbounds %struct.nfsd4_access, %struct.nfsd4_access* %28, i32 0, i32 2
  %30 = call i32 @nfsd_access(%struct.svc_rqst* %23, i32* %25, i32* %27, i32* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %17, %15
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @nfsd_access(%struct.svc_rqst*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
