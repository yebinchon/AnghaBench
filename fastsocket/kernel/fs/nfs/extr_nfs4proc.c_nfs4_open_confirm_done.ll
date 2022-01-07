; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_confirm_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_confirm_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64 }
%struct.nfs4_opendata = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*, i8*)* @nfs4_open_confirm_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_open_confirm_done(%struct.rpc_task* %0, i8* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs4_opendata*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.nfs4_opendata*
  store %struct.nfs4_opendata* %7, %struct.nfs4_opendata** %5, align 8
  %8 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %12 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %14 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %19 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %22 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @nfs4_stateid_copy(i32* %20, i32* %23)
  %25 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %26 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %25, i32 0, i32 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @nfs_confirm_seqid(i32* %28, i32 0)
  %30 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %31 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %35 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @renew_lease(i32 %33, i32 %36)
  %38 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %5, align 8
  %39 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %38, i32 0, i32 1
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @nfs_confirm_seqid(i32*, i32) #1

declare dso_local i32 @renew_lease(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
