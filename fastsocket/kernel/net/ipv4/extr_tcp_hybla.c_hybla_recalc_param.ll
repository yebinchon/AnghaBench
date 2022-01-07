; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_hybla.c_hybla_recalc_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_hybla.c_hybla_recalc_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hybla = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@u32 = common dso_local global i32 0, align 4
@rtt0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @hybla_recalc_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hybla_recalc_param(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.hybla*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.hybla* @inet_csk_ca(%struct.sock* %4)
  store %struct.hybla* %5, %struct.hybla** %3, align 8
  %6 = load i32, i32* @u32, align 4
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.TYPE_2__* @tcp_sk(%struct.sock* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @rtt0, align 4
  %12 = call i32 @msecs_to_jiffies(i32 %11)
  %13 = sdiv i32 %10, %12
  %14 = call i32 @max_t(i32 %6, i32 %13, i32 8)
  %15 = load %struct.hybla*, %struct.hybla** %3, align 8
  %16 = getelementptr inbounds %struct.hybla, %struct.hybla* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.hybla*, %struct.hybla** %3, align 8
  %18 = getelementptr inbounds %struct.hybla, %struct.hybla* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 3
  %21 = load %struct.hybla*, %struct.hybla** %3, align 8
  %22 = getelementptr inbounds %struct.hybla, %struct.hybla* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.hybla*, %struct.hybla** %3, align 8
  %24 = getelementptr inbounds %struct.hybla, %struct.hybla* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hybla*, %struct.hybla** %3, align 8
  %27 = getelementptr inbounds %struct.hybla, %struct.hybla* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = shl i32 %29, 1
  %31 = load %struct.hybla*, %struct.hybla** %3, align 8
  %32 = getelementptr inbounds %struct.hybla, %struct.hybla* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.hybla*, %struct.hybla** %3, align 8
  %34 = getelementptr inbounds %struct.hybla, %struct.hybla* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 7
  %37 = load %struct.hybla*, %struct.hybla** %3, align 8
  %38 = getelementptr inbounds %struct.hybla, %struct.hybla* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local %struct.hybla* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
