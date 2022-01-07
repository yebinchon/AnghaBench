; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_putfh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_putfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nfsd4_putfh = type { i32, i32 }

@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_putfh*)* @nfsd4_putfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_putfh(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_putfh* %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.nfsd4_compound_state*, align 8
  %6 = alloca %struct.nfsd4_putfh*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %5, align 8
  store %struct.nfsd4_putfh* %2, %struct.nfsd4_putfh** %6, align 8
  %7 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %8 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %7, i32 0, i32 0
  %9 = call i32 @fh_put(%struct.TYPE_5__* %8)
  %10 = load %struct.nfsd4_putfh*, %struct.nfsd4_putfh** %6, align 8
  %11 = getelementptr inbounds %struct.nfsd4_putfh, %struct.nfsd4_putfh* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %14 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 %12, i32* %16, align 4
  %17 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %18 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.nfsd4_putfh*, %struct.nfsd4_putfh** %6, align 8
  %22 = getelementptr inbounds %struct.nfsd4_putfh, %struct.nfsd4_putfh* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nfsd4_putfh*, %struct.nfsd4_putfh** %6, align 8
  %25 = getelementptr inbounds %struct.nfsd4_putfh, %struct.nfsd4_putfh* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32* %20, i32 %23, i32 %26)
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %29 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %5, align 8
  %30 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %29, i32 0, i32 0
  %31 = load i32, i32* @NFSD_MAY_NOP, align 4
  %32 = call i32 @fh_verify(%struct.svc_rqst* %28, %struct.TYPE_5__* %30, i32 0, i32 %31)
  ret i32 %32
}

declare dso_local i32 @fh_put(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @fh_verify(%struct.svc_rqst*, %struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
