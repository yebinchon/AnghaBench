; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_restorefh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_restorefh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@nfserr_restorefh = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, i8*)* @nfsd4_restorefh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_restorefh(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca i8*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %9 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @nfserr_restorefh, align 4
  store i32 %14, i32* %4, align 4
  br label %22

15:                                               ; preds = %3
  %16 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %17 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %16, i32 0, i32 1
  %18 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %19 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %18, i32 0, i32 0
  %20 = call i32 @fh_dup2(i32* %17, %struct.TYPE_2__* %19)
  %21 = load i32, i32* @nfs_ok, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %15, %13
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @fh_dup2(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
