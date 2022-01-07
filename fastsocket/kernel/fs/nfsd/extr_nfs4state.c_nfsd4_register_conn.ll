; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_register_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_register_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_conn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@nfsd4_conn_lost = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_conn*)* @nfsd4_register_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_register_conn(%struct.nfsd4_conn* %0) #0 {
  %2 = alloca %struct.nfsd4_conn*, align 8
  store %struct.nfsd4_conn* %0, %struct.nfsd4_conn** %2, align 8
  %3 = load i32, i32* @nfsd4_conn_lost, align 4
  %4 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %2, align 8
  %5 = getelementptr inbounds %struct.nfsd4_conn, %struct.nfsd4_conn* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 %3, i32* %6, align 4
  %7 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %2, align 8
  %8 = getelementptr inbounds %struct.nfsd4_conn, %struct.nfsd4_conn* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %2, align 8
  %11 = getelementptr inbounds %struct.nfsd4_conn, %struct.nfsd4_conn* %10, i32 0, i32 0
  %12 = call i32 @register_xpt_user(i32 %9, %struct.TYPE_2__* %11)
  ret i32 %12
}

declare dso_local i32 @register_xpt_user(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
