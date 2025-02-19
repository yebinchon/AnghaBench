; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_fragment.c_ip_evictor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_fragment.c_ip_evictor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ip4_frags = common dso_local global i32 0, align 4
@IPSTATS_MIB_REASMFAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @ip_evictor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_evictor(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load %struct.net*, %struct.net** %2, align 8
  %5 = getelementptr inbounds %struct.net, %struct.net* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @inet_frag_evictor(i32* %6, i32* @ip4_frags)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.net*, %struct.net** %2, align 8
  %12 = load i32, i32* @IPSTATS_MIB_REASMFAILS, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @IP_ADD_STATS_BH(%struct.net* %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @inet_frag_evictor(i32*, i32*) #1

declare dso_local i32 @IP_ADD_STATS_BH(%struct.net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
