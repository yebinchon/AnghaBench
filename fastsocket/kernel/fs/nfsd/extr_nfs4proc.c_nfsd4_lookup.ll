; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_lookup = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_lookup*)* @nfsd4_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_lookup(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_lookup* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %struct.nfsd4_lookup*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %struct.nfsd4_lookup* %2, %struct.nfsd4_lookup** %6, align 8
  %7 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %8 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %9 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %8, i32 0, i32 0
  %10 = load %struct.nfsd4_lookup*, %struct.nfsd4_lookup** %6, align 8
  %11 = getelementptr inbounds %struct.nfsd4_lookup, %struct.nfsd4_lookup* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nfsd4_lookup*, %struct.nfsd4_lookup** %6, align 8
  %14 = getelementptr inbounds %struct.nfsd4_lookup, %struct.nfsd4_lookup* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %16, i32 0, i32 0
  %18 = call i32 @nfsd_lookup(%struct.svc_rqst* %7, i32* %9, i32 %12, i32 %15, i32* %17)
  ret i32 %18
}

declare dso_local i32 @nfsd_lookup(%struct.svc_rqst*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
