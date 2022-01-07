; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpc_setup_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpc_setup_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_request_hdr = type { i8*, i8*, i8*, i8*, i8* }

@next_xid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_rpc_setup_req(%struct.rpc_request_hdr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rpc_request_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rpc_request_hdr* %0, %struct.rpc_request_hdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %10 = call i32 @memset(%struct.rpc_request_hdr* %9, i32 0, i32 40)
  %11 = call i32 @atomic_add_return(i32 1, i32* @next_xid)
  %12 = call i8* @cpu_to_be32(i32 %11)
  %13 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = call i8* @cpu_to_be32(i32 2)
  %16 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i8* @cpu_to_be32(i32 %26)
  %28 = load %struct.rpc_request_hdr*, %struct.rpc_request_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.rpc_request_hdr, %struct.rpc_request_hdr* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  ret void
}

declare dso_local i32 @memset(%struct.rpc_request_hdr*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
