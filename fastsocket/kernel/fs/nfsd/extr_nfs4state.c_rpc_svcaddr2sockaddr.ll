; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_rpc_svcaddr2sockaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_rpc_svcaddr2sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%union.svc_addr_u = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*, i16, %union.svc_addr_u*)* @rpc_svcaddr2sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_svcaddr2sockaddr(%struct.sockaddr* %0, i16 zeroext %1, %union.svc_addr_u* %2) #0 {
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %union.svc_addr_u*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i16 %1, i16* %5, align 2
  store %union.svc_addr_u* %2, %union.svc_addr_u** %6, align 8
  %7 = load i16, i16* %5, align 2
  %8 = zext i16 %7 to i32
  switch i32 %8, label %29 [
    i32 129, label %9
    i32 128, label %19
  ]

9:                                                ; preds = %3
  %10 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %11 = bitcast %struct.sockaddr* %10 to %struct.sockaddr_in*
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  store i32 129, i32* %12, align 4
  %13 = load %union.svc_addr_u*, %union.svc_addr_u** %6, align 8
  %14 = bitcast %union.svc_addr_u* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_in*
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  br label %29

19:                                               ; preds = %3
  %20 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %21 = bitcast %struct.sockaddr* %20 to %struct.sockaddr_in6*
  %22 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %21, i32 0, i32 0
  store i32 128, i32* %22, align 4
  %23 = load %union.svc_addr_u*, %union.svc_addr_u** %6, align 8
  %24 = bitcast %union.svc_addr_u* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %27 = bitcast %struct.sockaddr* %26 to %struct.sockaddr_in6*
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %9, %19, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
