; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_eth_media.c_disable_bearer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_eth_media.c_disable_bearer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_bearer = type { i64 }
%struct.eth_bearer = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_bearer*)* @disable_bearer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_bearer(%struct.tipc_bearer* %0) #0 {
  %2 = alloca %struct.tipc_bearer*, align 8
  store %struct.tipc_bearer* %0, %struct.tipc_bearer** %2, align 8
  %3 = load %struct.tipc_bearer*, %struct.tipc_bearer** %2, align 8
  %4 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to %struct.eth_bearer*
  %7 = getelementptr inbounds %struct.eth_bearer, %struct.eth_bearer* %6, i32 0, i32 0
  store i32* null, i32** %7, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
