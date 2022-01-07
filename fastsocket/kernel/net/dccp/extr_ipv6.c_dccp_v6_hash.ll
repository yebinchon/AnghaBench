; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_ipv6.c_dccp_v6_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.TYPE_2__ = type { i32* }

@DCCP_CLOSED = common dso_local global i64 0, align 8
@dccp_ipv6_mapped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @dccp_v6_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_v6_hash(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = getelementptr inbounds %struct.sock, %struct.sock* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @DCCP_CLOSED, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, @dccp_ipv6_mapped
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = call i32 @inet_hash(%struct.sock* %15)
  br label %22

17:                                               ; preds = %8
  %18 = call i32 (...) @local_bh_disable()
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call i32 @__inet6_hash(%struct.sock* %19)
  %21 = call i32 (...) @local_bh_enable()
  br label %22

22:                                               ; preds = %14, %17, %1
  ret void
}

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_hash(%struct.sock*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @__inet6_hash(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
