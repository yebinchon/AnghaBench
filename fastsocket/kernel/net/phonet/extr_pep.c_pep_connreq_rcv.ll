; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_connreq_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_pep.c_pep_connreq_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 (%struct.sock*, i32)*, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.pep_sock = type { i32, i32, i64, i32, i32, i64, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pnpipehdr = type { i64, i32, i32, i64* }
%struct.sockaddr_pn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PN_PIPE_ERR_INVALID_PARAM = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@PN_PIPE_ERR_PEP_IN_USE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PF_PHONET = common dso_local global i32 0, align 4
@TCP_SYN_RECV = common dso_local global i64 0, align 8
@pipe_do_rcv = common dso_local global i32 0, align 4
@pipe_destruct = common dso_local global i32 0, align 4
@PN_LEGACY_FLOW_CONTROL = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @pep_connreq_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pep_connreq_rcv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.pep_sock*, align 8
  %8 = alloca %struct.pep_sock*, align 8
  %9 = alloca %struct.pnpipehdr*, align 8
  %10 = alloca %struct.sockaddr_pn, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [1 x i64], align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call %struct.pep_sock* @pep_sk(%struct.sock* %19)
  store %struct.pep_sock* %20, %struct.pep_sock** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @pskb_pull(%struct.sk_buff* %21, i32 28)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %214

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff* %28)
  store %struct.pnpipehdr* %29, %struct.pnpipehdr** %9, align 8
  %30 = load %struct.pnpipehdr*, %struct.pnpipehdr** %9, align 8
  %31 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %12, align 8
  %33 = load %struct.pnpipehdr*, %struct.pnpipehdr** %9, align 8
  %34 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %38 [
    i32 130, label %36
    i32 129, label %37
  ]

36:                                               ; preds = %27
  store i64 0, i64* %13, align 8
  br label %45

37:                                               ; preds = %27
  store i64 1, i64* %13, align 8
  br label %45

38:                                               ; preds = %27
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* @PN_PIPE_ERR_INVALID_PARAM, align 4
  %42 = call i32 @pep_reject_conn(%struct.sock* %39, %struct.sk_buff* %40, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %214

45:                                               ; preds = %37, %36
  %46 = load %struct.pnpipehdr*, %struct.pnpipehdr** %9, align 8
  %47 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 8
  store i32 %49, i32* %11, align 4
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TCP_LISTEN, align 8
  %54 = icmp ne i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %45
  %59 = load %struct.sock*, %struct.sock** %4, align 8
  %60 = call i64 @sk_acceptq_is_full(%struct.sock* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58, %45
  %63 = load %struct.sock*, %struct.sock** %4, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = load i32, i32* @PN_PIPE_ERR_PEP_IN_USE, align 4
  %66 = call i32 @pep_reject_conn(%struct.sock* %63, %struct.sk_buff* %64, i32 %65)
  %67 = load i32, i32* @ENOBUFS, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %214

69:                                               ; preds = %58
  %70 = load %struct.pnpipehdr*, %struct.pnpipehdr** %9, align 8
  %71 = getelementptr inbounds %struct.pnpipehdr, %struct.pnpipehdr* %70, i32 0, i32 3
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 4
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %14, align 8
  br label %75

75:                                               ; preds = %104, %69
  %76 = load i64, i64* %14, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %75
  store i64 8, i64* %17, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = getelementptr inbounds [1 x i64], [1 x i64]* %16, i64 0, i64 0
  %81 = call i64* @pep_get_sb(%struct.sk_buff* %79, i64* %15, i64* %17, i64* %80)
  store i64* %81, i64** %18, align 8
  %82 = load i64*, i64** %18, align 8
  %83 = icmp eq i64* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %214

87:                                               ; preds = %78
  %88 = load i64, i64* %15, align 8
  switch i64 %88, label %104 [
    i64 128, label %89
  ]

89:                                               ; preds = %87
  %90 = load i64, i64* %17, align 8
  %91 = icmp slt i64 %90, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %214

95:                                               ; preds = %89
  %96 = load i32, i32* %11, align 4
  %97 = and i32 %96, 65280
  %98 = sext i32 %97 to i64
  %99 = load i64*, i64** %18, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = or i64 %98, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %87, %95
  %105 = load i64, i64* %14, align 8
  %106 = add nsw i64 %105, -1
  store i64 %106, i64* %14, align 8
  br label %75

107:                                              ; preds = %75
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = load i32, i32* @GFP_ATOMIC, align 4
  %110 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %108, i32 %109)
  store %struct.sk_buff* %110, %struct.sk_buff** %5, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = icmp ne %struct.sk_buff* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %214

116:                                              ; preds = %107
  %117 = load %struct.sock*, %struct.sock** %4, align 8
  %118 = call i32 @sock_net(%struct.sock* %117)
  %119 = load i32, i32* @PF_PHONET, align 4
  %120 = load i32, i32* @GFP_ATOMIC, align 4
  %121 = load %struct.sock*, %struct.sock** %4, align 8
  %122 = getelementptr inbounds %struct.sock, %struct.sock* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = call %struct.sock* @sk_alloc(i32 %118, i32 %119, i32 %120, i32 %123)
  store %struct.sock* %124, %struct.sock** %6, align 8
  %125 = load %struct.sock*, %struct.sock** %6, align 8
  %126 = icmp ne %struct.sock* %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %116
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = call i32 @kfree_skb(%struct.sk_buff* %128)
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %214

132:                                              ; preds = %116
  %133 = load %struct.sock*, %struct.sock** %6, align 8
  %134 = call i32 @sock_init_data(i32* null, %struct.sock* %133)
  %135 = load i64, i64* @TCP_SYN_RECV, align 8
  %136 = load %struct.sock*, %struct.sock** %6, align 8
  %137 = getelementptr inbounds %struct.sock, %struct.sock* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load i32, i32* @pipe_do_rcv, align 4
  %139 = load %struct.sock*, %struct.sock** %6, align 8
  %140 = getelementptr inbounds %struct.sock, %struct.sock* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  %141 = load %struct.sock*, %struct.sock** %4, align 8
  %142 = getelementptr inbounds %struct.sock, %struct.sock* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.sock*, %struct.sock** %6, align 8
  %145 = getelementptr inbounds %struct.sock, %struct.sock* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* @pipe_destruct, align 4
  %147 = load %struct.sock*, %struct.sock** %6, align 8
  %148 = getelementptr inbounds %struct.sock, %struct.sock* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load %struct.sock*, %struct.sock** %6, align 8
  %150 = call %struct.pep_sock* @pep_sk(%struct.sock* %149)
  store %struct.pep_sock* %150, %struct.pep_sock** %7, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %152 = call i32 @pn_skb_get_dst_sockaddr(%struct.sk_buff* %151, %struct.sockaddr_pn* %10)
  %153 = call i32 @pn_sockaddr_get_object(%struct.sockaddr_pn* %10)
  %154 = load %struct.pep_sock*, %struct.pep_sock** %7, align 8
  %155 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %154, i32 0, i32 9
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 4
  %157 = load %struct.pep_sock*, %struct.pep_sock** %8, align 8
  %158 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %157, i32 0, i32 9
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.pep_sock*, %struct.pep_sock** %7, align 8
  %162 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %161, i32 0, i32 9
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 4
  %164 = load %struct.pep_sock*, %struct.pep_sock** %7, align 8
  %165 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %164, i32 0, i32 8
  %166 = call i32 @skb_queue_head_init(i32* %165)
  %167 = load i64, i64* %12, align 8
  %168 = load %struct.pep_sock*, %struct.pep_sock** %7, align 8
  %169 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %168, i32 0, i32 7
  store i64 %167, i64* %169, align 8
  %170 = load %struct.pep_sock*, %struct.pep_sock** %7, align 8
  %171 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %170, i32 0, i32 6
  %172 = call i32 @atomic_set(i32* %171, i32 0)
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.pep_sock*, %struct.pep_sock** %7, align 8
  %175 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.pep_sock*, %struct.pep_sock** %7, align 8
  %177 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %176, i32 0, i32 5
  store i64 0, i64* %177, align 8
  %178 = load i32, i32* @PN_LEGACY_FLOW_CONTROL, align 4
  %179 = load %struct.pep_sock*, %struct.pep_sock** %7, align 8
  %180 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 8
  %181 = load %struct.pep_sock*, %struct.pep_sock** %7, align 8
  %182 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %181, i32 0, i32 4
  store i32 %178, i32* %182, align 4
  %183 = load i64, i64* %13, align 8
  %184 = load %struct.pep_sock*, %struct.pep_sock** %7, align 8
  %185 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %184, i32 0, i32 2
  store i64 %183, i64* %185, align 8
  %186 = load %struct.sock*, %struct.sock** %6, align 8
  %187 = getelementptr inbounds %struct.sock, %struct.sock* %186, i32 0, i32 2
  %188 = call i32 @skb_queue_empty(i32* %187)
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i32 @BUG_ON(i32 %191)
  %193 = load %struct.sock*, %struct.sock** %6, align 8
  %194 = getelementptr inbounds %struct.sock, %struct.sock* %193, i32 0, i32 2
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %196 = call i32 @skb_queue_head(i32* %194, %struct.sk_buff* %195)
  %197 = load %struct.sock*, %struct.sock** %4, align 8
  %198 = load i32, i32* @SOCK_DEAD, align 4
  %199 = call i32 @sock_flag(%struct.sock* %197, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %132
  %202 = load %struct.sock*, %struct.sock** %4, align 8
  %203 = getelementptr inbounds %struct.sock, %struct.sock* %202, i32 0, i32 1
  %204 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %203, align 8
  %205 = load %struct.sock*, %struct.sock** %4, align 8
  %206 = call i32 %204(%struct.sock* %205, i32 0)
  br label %207

207:                                              ; preds = %201, %132
  %208 = load %struct.sock*, %struct.sock** %4, align 8
  %209 = call i32 @sk_acceptq_added(%struct.sock* %208)
  %210 = load %struct.sock*, %struct.sock** %6, align 8
  %211 = load %struct.pep_sock*, %struct.pep_sock** %8, align 8
  %212 = getelementptr inbounds %struct.pep_sock, %struct.pep_sock* %211, i32 0, i32 1
  %213 = call i32 @sk_add_node(%struct.sock* %210, i32* %212)
  store i32 0, i32* %3, align 4
  br label %214

214:                                              ; preds = %207, %127, %113, %92, %84, %62, %38, %24
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local %struct.pep_sock* @pep_sk(%struct.sock*) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.pnpipehdr* @pnp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @pep_reject_conn(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local i64* @pep_get_sb(%struct.sk_buff*, i64*, i64*, i64*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.sock* @sk_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @sock_init_data(i32*, %struct.sock*) #1

declare dso_local i32 @pn_skb_get_dst_sockaddr(%struct.sk_buff*, %struct.sockaddr_pn*) #1

declare dso_local i32 @pn_sockaddr_get_object(%struct.sockaddr_pn*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sk_acceptq_added(%struct.sock*) #1

declare dso_local i32 @sk_add_node(%struct.sock*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
