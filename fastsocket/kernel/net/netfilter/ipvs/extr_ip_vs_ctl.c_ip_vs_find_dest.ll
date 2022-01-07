; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_find_dest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_find_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest = type { i32 }
%union.nf_inet_addr = type { i32 }
%struct.ip_vs_service = type { i32 }

@IP_VS_CONN_F_FWD_MASK = common dso_local global i32 0, align 4
@IP_VS_CONN_F_MASQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip_vs_dest* @ip_vs_find_dest(i32 %0, %union.nf_inet_addr* %1, i32 %2, %union.nf_inet_addr* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ip_vs_dest*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.nf_inet_addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.nf_inet_addr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ip_vs_dest*, align 8
  %19 = alloca %struct.ip_vs_service*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %union.nf_inet_addr* %1, %union.nf_inet_addr** %11, align 8
  store i32 %2, i32* %12, align 4
  store %union.nf_inet_addr* %3, %union.nf_inet_addr** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load %union.nf_inet_addr*, %union.nf_inet_addr** %13, align 8
  %26 = load i32, i32* %14, align 4
  %27 = call %struct.ip_vs_service* @ip_vs_service_get(i32 %22, i32 %23, i32 %24, %union.nf_inet_addr* %25, i32 %26)
  store %struct.ip_vs_service* %27, %struct.ip_vs_service** %19, align 8
  %28 = load %struct.ip_vs_service*, %struct.ip_vs_service** %19, align 8
  %29 = icmp ne %struct.ip_vs_service* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %8
  store %struct.ip_vs_dest* null, %struct.ip_vs_dest** %9, align 8
  br label %66

31:                                               ; preds = %8
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* @IP_VS_CONN_F_FWD_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @IP_VS_CONN_F_MASQ, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %20, align 4
  br label %41

41:                                               ; preds = %40, %34, %31
  %42 = load %struct.ip_vs_service*, %struct.ip_vs_service** %19, align 8
  %43 = load %union.nf_inet_addr*, %union.nf_inet_addr** %11, align 8
  %44 = load i32, i32* %20, align 4
  %45 = call %struct.ip_vs_dest* @ip_vs_lookup_dest(%struct.ip_vs_service* %42, %union.nf_inet_addr* %43, i32 %44)
  store %struct.ip_vs_dest* %45, %struct.ip_vs_dest** %18, align 8
  %46 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %18, align 8
  %47 = icmp ne %struct.ip_vs_dest* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.ip_vs_service*, %struct.ip_vs_service** %19, align 8
  %50 = load %union.nf_inet_addr*, %union.nf_inet_addr** %11, align 8
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %12, align 4
  %53 = xor i32 %51, %52
  %54 = call %struct.ip_vs_dest* @ip_vs_lookup_dest(%struct.ip_vs_service* %49, %union.nf_inet_addr* %50, i32 %53)
  store %struct.ip_vs_dest* %54, %struct.ip_vs_dest** %18, align 8
  br label %55

55:                                               ; preds = %48, %41
  %56 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %18, align 8
  %57 = icmp ne %struct.ip_vs_dest* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %18, align 8
  %60 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %59, i32 0, i32 0
  %61 = call i32 @atomic_inc(i32* %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load %struct.ip_vs_service*, %struct.ip_vs_service** %19, align 8
  %64 = call i32 @ip_vs_service_put(%struct.ip_vs_service* %63)
  %65 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %18, align 8
  store %struct.ip_vs_dest* %65, %struct.ip_vs_dest** %9, align 8
  br label %66

66:                                               ; preds = %62, %30
  %67 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %9, align 8
  ret %struct.ip_vs_dest* %67
}

declare dso_local %struct.ip_vs_service* @ip_vs_service_get(i32, i32, i32, %union.nf_inet_addr*, i32) #1

declare dso_local %struct.ip_vs_dest* @ip_vs_lookup_dest(%struct.ip_vs_service*, %union.nf_inet_addr*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ip_vs_service_put(%struct.ip_vs_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
