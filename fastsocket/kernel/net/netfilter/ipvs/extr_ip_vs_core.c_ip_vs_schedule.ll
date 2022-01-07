; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_schedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ip_vs_service = type { i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ip_vs_dest* (%struct.ip_vs_service*, %struct.sk_buff*)* }
%struct.ip_vs_dest = type { i64, i32 }
%struct.sk_buff = type { i32 }
%struct.ip_vs_iphdr = type { i64, i32, i32, i32 }
%struct.ip_vs_conn_param = type { i32 }

@IP_VS_SVC_F_PERSISTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"Schedule: port zero only supported in persistent services, check your ipvs configuration\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Schedule: no dest found.\0A\00", align 1
@IP_VS_SVC_F_ONEPACKET = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IP_VS_CONN_F_ONE_PACKET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"Schedule fwd:%c c:%s:%u v:%s:%u d:%s:%u conn->flags:%X conn->refcnt:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip_vs_conn* @ip_vs_schedule(%struct.ip_vs_service* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca %struct.ip_vs_service*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ip_vs_conn*, align 8
  %7 = alloca %struct.ip_vs_iphdr, align 8
  %8 = alloca %struct.ip_vs_dest*, align 8
  %9 = alloca [2 x i64], align 16
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ip_vs_conn_param, align 4
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %6, align 8
  %13 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %14 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @skb_network_header(%struct.sk_buff* %16)
  %18 = call i32 @ip_vs_fill_iphdr(i32 %15, i32 %17, %struct.ip_vs_iphdr* %7)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %7, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %23 = call i64* @skb_header_pointer(%struct.sk_buff* %19, i32 %21, i32 16, i64* %22)
  store i64* %23, i64** %10, align 8
  %24 = load i64*, i64** %10, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %3, align 8
  br label %178

27:                                               ; preds = %2
  %28 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %29 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IP_VS_SVC_F_PERSISTENT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i64*, i64** %10, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %10, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.ip_vs_conn* @ip_vs_sched_persist(%struct.ip_vs_service* %35, %struct.sk_buff* %36, i64 %39, i64 %42)
  store %struct.ip_vs_conn* %43, %struct.ip_vs_conn** %3, align 8
  br label %178

44:                                               ; preds = %27
  %45 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %46 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %44
  %50 = load i64*, i64** %10, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %54 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %59 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %3, align 8
  br label %178

65:                                               ; preds = %49, %44
  %66 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %67 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.ip_vs_dest* (%struct.ip_vs_service*, %struct.sk_buff*)*, %struct.ip_vs_dest* (%struct.ip_vs_service*, %struct.sk_buff*)** %69, align 8
  %71 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call %struct.ip_vs_dest* %70(%struct.ip_vs_service* %71, %struct.sk_buff* %72)
  store %struct.ip_vs_dest* %73, %struct.ip_vs_dest** %8, align 8
  %74 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %8, align 8
  %75 = icmp eq %struct.ip_vs_dest* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = call i32 @IP_VS_DBG(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %3, align 8
  br label %178

78:                                               ; preds = %65
  %79 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %80 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IP_VS_SVC_F_ONEPACKET, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %7, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IPPROTO_UDP, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @IP_VS_CONN_F_ONE_PACKET, align 4
  br label %93

92:                                               ; preds = %85, %78
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  store i32 %94, i32* %11, align 4
  %95 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %96 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %7, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %7, i32 0, i32 2
  %101 = load i64*, i64** %10, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.ip_vs_iphdr, %struct.ip_vs_iphdr* %7, i32 0, i32 1
  %105 = load i64*, i64** %10, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @ip_vs_conn_fill_param(i32 %97, i64 %99, i32* %100, i64 %103, i32* %104, i64 %107, %struct.ip_vs_conn_param* %12)
  %109 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %8, align 8
  %110 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %109, i32 0, i32 1
  %111 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %8, align 8
  %112 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %93
  %116 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %8, align 8
  %117 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  br label %123

119:                                              ; preds = %93
  %120 = load i64*, i64** %10, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 1
  %122 = load i64, i64* %121, align 8
  br label %123

123:                                              ; preds = %119, %115
  %124 = phi i64 [ %118, %115 ], [ %122, %119 ]
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %8, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call %struct.ip_vs_conn* @ip_vs_conn_new(%struct.ip_vs_conn_param* %12, i32* %110, i64 %124, i32 %125, %struct.ip_vs_dest* %126, i32 %129)
  store %struct.ip_vs_conn* %130, %struct.ip_vs_conn** %6, align 8
  %131 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %132 = icmp ne %struct.ip_vs_conn* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %123
  store %struct.ip_vs_conn* null, %struct.ip_vs_conn** %3, align 8
  br label %178

134:                                              ; preds = %123
  %135 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %136 = call i32 @ip_vs_fwd_tag(%struct.ip_vs_conn* %135)
  %137 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %138 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %141 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %140, i32 0, i32 7
  %142 = call i32 @IP_VS_DBG_ADDR(i32 %139, i32* %141)
  %143 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %144 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ntohs(i32 %145)
  %147 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %148 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %151 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %150, i32 0, i32 5
  %152 = call i32 @IP_VS_DBG_ADDR(i32 %149, i32* %151)
  %153 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %154 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ntohs(i32 %155)
  %157 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %158 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %161 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %160, i32 0, i32 3
  %162 = call i32 @IP_VS_DBG_ADDR(i32 %159, i32* %161)
  %163 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %164 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ntohs(i32 %165)
  %167 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %168 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %171 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %170, i32 0, i32 0
  %172 = call i32 @atomic_read(i32* %171)
  %173 = call i32 @IP_VS_DBG_BUF(i32 6, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %136, i32 %142, i32 %146, i32 %152, i32 %156, i32 %162, i32 %166, i32 %169, i32 %172)
  %174 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %175 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %176 = call i32 @ip_vs_conn_stats(%struct.ip_vs_conn* %174, %struct.ip_vs_service* %175)
  %177 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  store %struct.ip_vs_conn* %177, %struct.ip_vs_conn** %3, align 8
  br label %178

178:                                              ; preds = %134, %133, %76, %64, %34, %26
  %179 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  ret %struct.ip_vs_conn* %179
}

declare dso_local i32 @ip_vs_fill_iphdr(i32, i32, %struct.ip_vs_iphdr*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i64* @skb_header_pointer(%struct.sk_buff*, i32, i32, i64*) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_sched_persist(%struct.ip_vs_service*, %struct.sk_buff*, i64, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*) #1

declare dso_local i32 @ip_vs_conn_fill_param(i32, i64, i32*, i64, i32*, i64, %struct.ip_vs_conn_param*) #1

declare dso_local %struct.ip_vs_conn* @ip_vs_conn_new(%struct.ip_vs_conn_param*, i32*, i64, i32, %struct.ip_vs_dest*, i32) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ip_vs_fwd_tag(%struct.ip_vs_conn*) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ip_vs_conn_stats(%struct.ip_vs_conn*, %struct.ip_vs_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
