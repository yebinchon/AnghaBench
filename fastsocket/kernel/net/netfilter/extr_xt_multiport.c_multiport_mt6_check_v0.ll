; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_multiport.c_multiport_mt6_check_v0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_multiport.c_multiport_mt6_check_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.xt_multiport*, %struct.ip6t_ip6* }
%struct.xt_multiport = type { i32, i32 }
%struct.ip6t_ip6 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @multiport_mt6_check_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiport_mt6_check_v0(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca %struct.xt_mtchk_param*, align 8
  %3 = alloca %struct.ip6t_ip6*, align 8
  %4 = alloca %struct.xt_multiport*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %2, align 8
  %5 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %2, align 8
  %6 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %5, i32 0, i32 1
  %7 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %6, align 8
  store %struct.ip6t_ip6* %7, %struct.ip6t_ip6** %3, align 8
  %8 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %2, align 8
  %9 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %8, i32 0, i32 0
  %10 = load %struct.xt_multiport*, %struct.xt_multiport** %9, align 8
  store %struct.xt_multiport* %10, %struct.xt_multiport** %4, align 8
  %11 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %3, align 8
  %12 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ip6t_ip6*, %struct.ip6t_ip6** %3, align 8
  %15 = getelementptr inbounds %struct.ip6t_ip6, %struct.ip6t_ip6* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.xt_multiport*, %struct.xt_multiport** %4, align 8
  %18 = getelementptr inbounds %struct.xt_multiport, %struct.xt_multiport* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xt_multiport*, %struct.xt_multiport** %4, align 8
  %21 = getelementptr inbounds %struct.xt_multiport, %struct.xt_multiport* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @check(i32 %13, i32 %16, i32 %19, i32 %22)
  ret i32 %23
}

declare dso_local i32 @check(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
