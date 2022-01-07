; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4proc.c_nfsd4_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nfsd4_link = type { i32, i32, i32 }

@nfserr_nofilehandle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_link*)* @nfsd4_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_link(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_link* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_link*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_link* %2, %struct.nfsd4_link** %7, align 8
  %9 = load i32, i32* @nfserr_nofilehandle, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %11 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %19 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %20 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %19, i32 0, i32 0
  %21 = load %struct.nfsd4_link*, %struct.nfsd4_link** %7, align 8
  %22 = getelementptr inbounds %struct.nfsd4_link, %struct.nfsd4_link* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nfsd4_link*, %struct.nfsd4_link** %7, align 8
  %25 = getelementptr inbounds %struct.nfsd4_link, %struct.nfsd4_link* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %28 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %27, i32 0, i32 1
  %29 = call i32 @nfsd_link(%struct.svc_rqst* %18, i32* %20, i32 %23, i32 %26, %struct.TYPE_2__* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %17
  %33 = load %struct.nfsd4_link*, %struct.nfsd4_link** %7, align 8
  %34 = getelementptr inbounds %struct.nfsd4_link, %struct.nfsd4_link* %33, i32 0, i32 0
  %35 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %36 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %35, i32 0, i32 0
  %37 = call i32 @set_change_info(i32* %34, i32* %36)
  br label %38

38:                                               ; preds = %32, %17
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @nfsd_link(%struct.svc_rqst*, i32*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @set_change_info(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
