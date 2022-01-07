; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { i32 (%struct.sock*)*, i32, i32, i32, i32 }
%struct.dn_scp = type { i32, i32, i32 }
%struct.dst_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.flowi = type { i32, i8*, i8*, i32 }

@jiffies = common dso_local global i32 0, align 4
@DNPROTO_NSP = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @dn_nsp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_nsp_send(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.dn_scp*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.flowi, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.dn_scp* @DN_SK(%struct.sock* %10)
  store %struct.dn_scp* %11, %struct.dn_scp** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = call i32 @skb_reset_transport_header(%struct.sk_buff* %12)
  %14 = load i32, i32* @jiffies, align 4
  %15 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %16 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call %struct.dst_entry* @sk_dst_check(%struct.sock* %17, i32 0)
  store %struct.dst_entry* %18, %struct.dst_entry** %5, align 8
  %19 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %20 = icmp ne %struct.dst_entry* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %51, %21
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %25 = call i32 @skb_dst_set(%struct.sk_buff* %23, %struct.dst_entry* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %27 = call i32 @dst_output(%struct.sk_buff* %26)
  br label %75

28:                                               ; preds = %1
  %29 = call i32 @memset(%struct.flowi* %6, i32 0, i32 32)
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.flowi, %struct.flowi* %6, i32 0, i32 3
  store i32 %32, i32* %33, align 8
  %34 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %35 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %34, i32 0, i32 1
  %36 = call i8* @dn_saddr2dn(i32* %35)
  %37 = getelementptr inbounds %struct.flowi, %struct.flowi* %6, i32 0, i32 2
  store i8* %36, i8** %37, align 8
  %38 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %39 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %38, i32 0, i32 0
  %40 = call i8* @dn_saddr2dn(i32* %39)
  %41 = getelementptr inbounds %struct.flowi, %struct.flowi* %6, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = load %struct.dn_scp*, %struct.dn_scp** %4, align 8
  %43 = call i32 @dn_sk_ports_copy(%struct.flowi* %6, %struct.dn_scp* %42)
  %44 = load i32, i32* @DNPROTO_NSP, align 4
  %45 = getelementptr inbounds %struct.flowi, %struct.flowi* %6, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.sock*, %struct.sock** %3, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 3
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = call i64 @dn_route_output_sock(i32* %47, %struct.flowi* %6, %struct.sock* %48, i32 0)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %28
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = call %struct.dst_entry* @sk_dst_get(%struct.sock* %52)
  store %struct.dst_entry* %53, %struct.dst_entry** %5, align 8
  %54 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %55 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %22

61:                                               ; preds = %28
  %62 = load i32, i32* @EHOSTUNREACH, align 4
  %63 = load %struct.sock*, %struct.sock** %3, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = load i32, i32* @SOCK_DEAD, align 4
  %67 = call i32 @sock_flag(%struct.sock* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %61
  %70 = load %struct.sock*, %struct.sock** %3, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 0
  %72 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %71, align 8
  %73 = load %struct.sock*, %struct.sock** %3, align 8
  %74 = call i32 %72(%struct.sock* %73)
  br label %75

75:                                               ; preds = %22, %69, %61
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.dst_entry* @sk_dst_check(%struct.sock*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @dst_output(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i8* @dn_saddr2dn(i32*) #1

declare dso_local i32 @dn_sk_ports_copy(%struct.flowi*, %struct.dn_scp*) #1

declare dso_local i64 @dn_route_output_sock(i32*, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local %struct.dst_entry* @sk_dst_get(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
