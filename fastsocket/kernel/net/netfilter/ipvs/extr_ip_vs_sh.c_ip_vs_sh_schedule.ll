; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sh.c_ip_vs_sh_schedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sh.c_ip_vs_sh_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest = type { i32, i32, i32, i32 }
%struct.ip_vs_service = type { i32, i64 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_sh_bucket = type { i32 }
%struct.ip_vs_iphdr = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"ip_vs_sh_schedule(): Scheduling...\0A\00", align 1
@IP_VS_DEST_F_AVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"SH: no destination available\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"SH: source IP address %s --> server %s:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_vs_dest* (%struct.ip_vs_service*, %struct.sk_buff*)* @ip_vs_sh_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_vs_dest* @ip_vs_sh_schedule(%struct.ip_vs_service* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ip_vs_dest*, align 8
  %4 = alloca %struct.ip_vs_service*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ip_vs_dest*, align 8
  %7 = alloca %struct.ip_vs_sh_bucket*, align 8
  %8 = alloca %struct.ip_vs_iphdr, align 4
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %10 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i32 @skb_network_header(%struct.sk_buff* %12)
  %14 = call i32 @ip_vs_fill_iphdr(i32 %11, i32 %13, %struct.ip_vs_iphdr* %8)
  %15 = call i32 @IP_VS_DBG(i32 6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %17 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ip_vs_sh_bucket*
  store %struct.ip_vs_sh_bucket* %19, %struct.ip_vs_sh_bucket** %7, align 8
  %20 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %21 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ip_vs_sh_bucket*, %struct.ip_vs_sh_bucket** %7, align 8
  %24 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %8, i32 0, i32 0
  %25 = call %struct.ip_vs_dest* @ip_vs_sh_get(i32 %22, %struct.ip_vs_sh_bucket* %23, i32* %24)
  store %struct.ip_vs_dest* %25, %struct.ip_vs_dest** %6, align 8
  %26 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %27 = icmp ne %struct.ip_vs_dest* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %2
  %29 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %30 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IP_VS_DEST_F_AVAILABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %37 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %36, i32 0, i32 3
  %38 = call i64 @atomic_read(i32* %37)
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %42 = call i64 @is_overloaded(%struct.ip_vs_dest* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %35, %28, %2
  %45 = call i32 @IP_VS_ERR_RL(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store %struct.ip_vs_dest* null, %struct.ip_vs_dest** %3, align 8
  br label %64

46:                                               ; preds = %40
  %47 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %48 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %8, i32 0, i32 0
  %51 = call i32 @IP_VS_DBG_ADDR(i32 %49, i32* %50)
  %52 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %53 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %56 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %55, i32 0, i32 2
  %57 = call i32 @IP_VS_DBG_ADDR(i32 %54, i32* %56)
  %58 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %59 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ntohs(i32 %60)
  %62 = call i32 @IP_VS_DBG_BUF(i32 6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %57, i32 %61)
  %63 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  store %struct.ip_vs_dest* %63, %struct.ip_vs_dest** %3, align 8
  br label %64

64:                                               ; preds = %46, %44
  %65 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  ret %struct.ip_vs_dest* %65
}

declare dso_local i32 @ip_vs_fill_iphdr(i32, i32, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*) #1

declare dso_local %struct.ip_vs_dest* @ip_vs_sh_get(i32, %struct.ip_vs_sh_bucket*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @is_overloaded(%struct.ip_vs_dest*) #1

declare dso_local i32 @IP_VS_ERR_RL(i8*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
