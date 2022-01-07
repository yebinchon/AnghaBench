; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_send_conninit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_out.c_dn_nsp_send_conninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dn_scp = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8, i8, i8, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.nsp_conn_init_msg = type { i8, i32, i32, i32, i32, i32 }
%struct.dn_skb_cb = type { i32 }
%struct.sk_buff = type { i32 }

@NSP_CI = common dso_local global i8 0, align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DN_MENUVER_ACC = common dso_local global i8 0, align 1
@DN_MENUVER_USR = common dso_local global i8 0, align 1
@SDF_PROXY = common dso_local global i32 0, align 4
@DN_MENUVER_PRX = common dso_local global i8 0, align 1
@SDF_UICPROXY = common dso_local global i32 0, align 4
@DN_MENUVER_UIC = common dso_local global i8 0, align 1
@dn_nsp_retrans_conninit = common dso_local global i32 0, align 4
@DN_RT_F_RQR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_nsp_send_conninit(%struct.sock* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.dn_scp*, align 8
  %6 = alloca %struct.nsp_conn_init_msg*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.dn_skb_cb*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i8 %1, i8* %4, align 1
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.dn_scp* @DN_SK(%struct.sock* %13)
  store %struct.dn_scp* %14, %struct.dn_scp** %5, align 8
  store i8 1, i8* %10, align 1
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @NSP_CI, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %23, %20 ], [ %25, %24 ]
  store i32 %27, i32* %11, align 4
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.sk_buff* @dn_alloc_skb(%struct.sock* %28, i32 200, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %12, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %226

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %36 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %35)
  store %struct.dn_skb_cb* %36, %struct.dn_skb_cb** %9, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %38 = call i8* @skb_put(%struct.sk_buff* %37, i8 zeroext 24)
  %39 = bitcast i8* %38 to %struct.nsp_conn_init_msg*
  store %struct.nsp_conn_init_msg* %39, %struct.nsp_conn_init_msg** %6, align 8
  %40 = load i8, i8* %4, align 1
  %41 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %6, align 8
  %42 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %41, i32 0, i32 0
  store i8 %40, i8* %42, align 4
  %43 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %6, align 8
  %44 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %46 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %6, align 8
  %49 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %51 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %6, align 8
  %54 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %56 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %6, align 8
  %59 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %61 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @cpu_to_le16(i32 %62)
  %64 = load %struct.nsp_conn_init_msg*, %struct.nsp_conn_init_msg** %6, align 8
  %65 = getelementptr inbounds %struct.nsp_conn_init_msg, %struct.nsp_conn_init_msg* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %67 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %34
  store i8 0, i8* %10, align 1
  br label %72

72:                                               ; preds = %71, %34
  %73 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %74 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %75 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %74, i32 0, i32 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %77 = call i32 @skb_tail_pointer(%struct.sk_buff* %76)
  %78 = load i8, i8* %10, align 1
  %79 = zext i8 %78 to i32
  %80 = call zeroext i8 @dn_sockaddr2username(%struct.TYPE_6__* %75, i32 %77, i32 %79)
  %81 = call i8* @skb_put(%struct.sk_buff* %73, i8 zeroext %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %83 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %84 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %83, i32 0, i32 5
  %85 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %86 = call i32 @skb_tail_pointer(%struct.sk_buff* %85)
  %87 = call zeroext i8 @dn_sockaddr2username(%struct.TYPE_6__* %84, i32 %86, i32 2)
  %88 = call i8* @skb_put(%struct.sk_buff* %82, i8 zeroext %87)
  %89 = load i8, i8* @DN_MENUVER_ACC, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @DN_MENUVER_USR, align 1
  %92 = zext i8 %91 to i32
  %93 = or i32 %90, %92
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %8, align 1
  %95 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %96 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SDF_PROXY, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %72
  %103 = load i8, i8* @DN_MENUVER_PRX, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* %8, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %106, %104
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %8, align 1
  br label %109

109:                                              ; preds = %102, %72
  %110 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %111 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @SDF_UICPROXY, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %109
  %118 = load i8, i8* @DN_MENUVER_UIC, align 1
  %119 = zext i8 %118 to i32
  %120 = load i8, i8* %8, align 1
  %121 = zext i8 %120 to i32
  %122 = or i32 %121, %119
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %8, align 1
  br label %124

124:                                              ; preds = %117, %109
  %125 = load i8, i8* %8, align 1
  %126 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %127 = call i8* @skb_put(%struct.sk_buff* %126, i8 zeroext 1)
  store i8 %125, i8* %127, align 1
  %128 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %129 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i8, i8* %130, align 8
  store i8 %131, i8* %7, align 1
  %132 = load i8, i8* %7, align 1
  %133 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %134 = call i8* @skb_put(%struct.sk_buff* %133, i8 zeroext 1)
  store i8 %132, i8* %134, align 1
  %135 = load i8, i8* %7, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %124
  %139 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %140 = load i8, i8* %7, align 1
  %141 = call i8* @skb_put(%struct.sk_buff* %139, i8 zeroext %140)
  %142 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %143 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load i8, i8* %7, align 1
  %147 = call i32 @memcpy(i8* %141, i32 %145, i8 zeroext %146)
  br label %148

148:                                              ; preds = %138, %124
  %149 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %150 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i8, i8* %151, align 1
  store i8 %152, i8* %7, align 1
  %153 = load i8, i8* %7, align 1
  %154 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %155 = call i8* @skb_put(%struct.sk_buff* %154, i8 zeroext 1)
  store i8 %153, i8* %155, align 1
  %156 = load i8, i8* %7, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %148
  %160 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %161 = load i8, i8* %7, align 1
  %162 = call i8* @skb_put(%struct.sk_buff* %160, i8 zeroext %161)
  %163 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %164 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load i8, i8* %7, align 1
  %168 = call i32 @memcpy(i8* %162, i32 %166, i8 zeroext %167)
  br label %169

169:                                              ; preds = %159, %148
  %170 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %171 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  %173 = load i8, i8* %172, align 2
  store i8 %173, i8* %7, align 1
  %174 = load i8, i8* %7, align 1
  %175 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %176 = call i8* @skb_put(%struct.sk_buff* %175, i8 zeroext 1)
  store i8 %174, i8* %176, align 1
  %177 = load i8, i8* %7, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %169
  %181 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %182 = load i8, i8* %7, align 1
  %183 = call i8* @skb_put(%struct.sk_buff* %181, i8 zeroext %182)
  %184 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %185 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load i8, i8* %7, align 1
  %189 = call i32 @memcpy(i8* %183, i32 %187, i8 zeroext %188)
  br label %190

190:                                              ; preds = %180, %169
  %191 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %192 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @le16_to_cpu(i32 %194)
  %196 = trunc i64 %195 to i8
  store i8 %196, i8* %7, align 1
  %197 = load i8, i8* %7, align 1
  %198 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %199 = call i8* @skb_put(%struct.sk_buff* %198, i8 zeroext 1)
  store i8 %197, i8* %199, align 1
  %200 = load i8, i8* %7, align 1
  %201 = zext i8 %200 to i32
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %190
  %204 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %205 = load i8, i8* %7, align 1
  %206 = call i8* @skb_put(%struct.sk_buff* %204, i8 zeroext %205)
  %207 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %208 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i8, i8* %7, align 1
  %212 = call i32 @memcpy(i8* %206, i32 %210, i8 zeroext %211)
  br label %213

213:                                              ; preds = %203, %190
  %214 = load %struct.sock*, %struct.sock** %3, align 8
  %215 = call i32 @dn_nsp_persist(%struct.sock* %214)
  %216 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %217 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* @dn_nsp_retrans_conninit, align 4
  %219 = load %struct.dn_scp*, %struct.dn_scp** %5, align 8
  %220 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* @DN_RT_F_RQR, align 4
  %222 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %9, align 8
  %223 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 4
  %224 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %225 = call i32 @dn_nsp_send(%struct.sk_buff* %224)
  br label %226

226:                                              ; preds = %213, %33
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local %struct.sk_buff* @dn_alloc_skb(%struct.sock*, i32, i32) #1

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i8 zeroext) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local zeroext i8 @dn_sockaddr2username(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i32, i8 zeroext) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dn_nsp_persist(%struct.sock*) #1

declare dso_local i32 @dn_nsp_send(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
