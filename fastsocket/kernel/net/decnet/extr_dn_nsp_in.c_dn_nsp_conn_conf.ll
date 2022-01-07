; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_nsp_conn_conf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_nsp_conn_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.sk_buff = type { i32, i8* }
%struct.dn_skb_cb = type { i32, i32, i32, i32 }
%struct.dn_scp = type { i64, i32, %struct.TYPE_2__, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@DN_CI = common dso_local global i64 0, align 8
@DN_CD = common dso_local global i64 0, align 8
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@DN_RUN = common dso_local global i64 0, align 8
@NSP_FC_MASK = common dso_local global i32 0, align 4
@NSP_FC_NONE = common dso_local global i32 0, align 4
@decnet_no_fc_max_cwnd = common dso_local global i32 0, align 4
@DN_NOCHANGE = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @dn_nsp_conn_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_nsp_conn_conf(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.dn_skb_cb*, align 8
  %6 = alloca %struct.dn_scp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %9)
  store %struct.dn_skb_cb* %10, %struct.dn_skb_cb** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.dn_scp* @DN_SK(%struct.sock* %11)
  store %struct.dn_scp* %12, %struct.dn_scp** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %140

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %7, align 8
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i32
  %26 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %5, align 8
  %27 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  %30 = load i8, i8* %28, align 1
  %31 = zext i8 %30 to i32
  %32 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %5, align 8
  %33 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %5, align 8
  %39 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %41 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DN_CI, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %18
  %46 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %47 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DN_CD, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %139

51:                                               ; preds = %45, %18
  %52 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %53 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %52, i32 0, i32 7
  store i64 0, i64* %53, align 8
  %54 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %5, align 8
  %55 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %58 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @TCP_ESTABLISHED, align 4
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i64, i64* @DN_RUN, align 8
  %63 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %64 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %5, align 8
  %66 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %69 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %5, align 8
  %71 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %74 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %5, align 8
  %76 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %79 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %81 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @NSP_FC_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @NSP_FC_NONE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %51
  %88 = load i32, i32* @decnet_no_fc_max_cwnd, align 4
  %89 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %90 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %51
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %91
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp sle i32 %102, 16
  br i1 %103, label %104, label %123

104:                                              ; preds = %96
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sle i32 %105, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %104
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @cpu_to_le16(i32 %111)
  %113 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %114 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = load %struct.dn_scp*, %struct.dn_scp** %6, align 8
  %118 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %116, i32 1, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %110, %104, %96
  br label %124

124:                                              ; preds = %123, %91
  %125 = load %struct.sock*, %struct.sock** %3, align 8
  %126 = load i32, i32* @DN_NOCHANGE, align 4
  %127 = call i32 @dn_nsp_send_link(%struct.sock* %125, i32 %126, i32 0)
  %128 = load %struct.sock*, %struct.sock** %3, align 8
  %129 = load i32, i32* @SOCK_DEAD, align 4
  %130 = call i32 @sock_flag(%struct.sock* %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %124
  %133 = load %struct.sock*, %struct.sock** %3, align 8
  %134 = getelementptr inbounds %struct.sock, %struct.sock* %133, i32 0, i32 0
  %135 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %134, align 8
  %136 = load %struct.sock*, %struct.sock** %3, align 8
  %137 = call i32 %135(%struct.sock* %136)
  br label %138

138:                                              ; preds = %132, %124
  br label %139

139:                                              ; preds = %138, %45
  br label %140

140:                                              ; preds = %139, %17
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = call i32 @kfree_skb(%struct.sk_buff* %141)
  ret void
}

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @dn_nsp_send_link(%struct.sock*, i32, i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
