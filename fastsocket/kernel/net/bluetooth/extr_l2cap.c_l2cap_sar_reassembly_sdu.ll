; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sar_reassembly_sdu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sar_reassembly_sdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.l2cap_pinfo = type { i32, %struct.sk_buff*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@L2CAP_CTRL_SAR = common dso_local global i32 0, align 4
@L2CAP_CONN_SAR_SDU = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @l2cap_sar_reassembly_sdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_sar_reassembly_sdu(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.l2cap_pinfo*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %11)
  store %struct.l2cap_pinfo* %12, %struct.l2cap_pinfo** %8, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @L2CAP_CTRL_SAR, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %205 [
    i32 128, label %18
    i32 129, label %38
    i32 131, label %98
    i32 130, label %142
  ]

18:                                               ; preds = %3
  %19 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %20 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @L2CAP_CONN_SAR_SDU, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %27 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %26, i32 0, i32 1
  %28 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %29 = call i32 @kfree_skb(%struct.sk_buff* %28)
  br label %205

30:                                               ; preds = %18
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @sock_queue_rcv_skb(%struct.sock* %31, %struct.sk_buff* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %209

37:                                               ; preds = %30
  br label %205

38:                                               ; preds = %3
  %39 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %40 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @L2CAP_CONN_SAR_SDU, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %47 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %46, i32 0, i32 1
  %48 = load %struct.sk_buff*, %struct.sk_buff** %47, align 8
  %49 = call i32 @kfree_skb(%struct.sk_buff* %48)
  br label %205

50:                                               ; preds = %38
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @get_unaligned_le16(i32 %53)
  %55 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %56 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i32 @skb_pull(%struct.sk_buff* %57, i32 2)
  %59 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %60 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call %struct.sk_buff* @bt_skb_alloc(i32 %61, i32 %62)
  %64 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %65 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %64, i32 0, i32 1
  store %struct.sk_buff* %63, %struct.sk_buff** %65, align 8
  %66 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %67 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %66, i32 0, i32 1
  %68 = load %struct.sk_buff*, %struct.sk_buff** %67, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %50
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %205

73:                                               ; preds = %50
  %74 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %75 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %74, i32 0, i32 1
  %76 = load %struct.sk_buff*, %struct.sk_buff** %75, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @skb_put(%struct.sk_buff* %76, i32 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memcpy(i32 %80, i32 %83, i32 %86)
  %88 = load i32, i32* @L2CAP_CONN_SAR_SDU, align 4
  %89 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %90 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %97 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  store i32 0, i32* %10, align 4
  br label %205

98:                                               ; preds = %3
  %99 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %100 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @L2CAP_CONN_SAR_SDU, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %98
  br label %205

106:                                              ; preds = %98
  %107 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %108 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %107, i32 0, i32 1
  %109 = load %struct.sk_buff*, %struct.sk_buff** %108, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @skb_put(%struct.sk_buff* %109, i32 %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @memcpy(i32 %113, i32 %116, i32 %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %125 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %129 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %132 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %130, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %106
  %136 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %137 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %136, i32 0, i32 1
  %138 = load %struct.sk_buff*, %struct.sk_buff** %137, align 8
  %139 = call i32 @kfree_skb(%struct.sk_buff* %138)
  br label %141

140:                                              ; preds = %106
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %140, %135
  br label %205

142:                                              ; preds = %3
  %143 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %144 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @L2CAP_CONN_SAR_SDU, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %142
  br label %205

150:                                              ; preds = %142
  %151 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %152 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %151, i32 0, i32 1
  %153 = load %struct.sk_buff*, %struct.sk_buff** %152, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @skb_put(%struct.sk_buff* %153, i32 %156)
  %158 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @memcpy(i32 %157, i32 %160, i32 %163)
  %165 = load i32, i32* @L2CAP_CONN_SAR_SDU, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %168 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %175 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, %173
  store i32 %177, i32* %175, align 4
  %178 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %179 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %182 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %180, %183
  br i1 %184, label %185, label %200

185:                                              ; preds = %150
  %186 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %187 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %186, i32 0, i32 1
  %188 = load %struct.sk_buff*, %struct.sk_buff** %187, align 8
  %189 = load i32, i32* @GFP_ATOMIC, align 4
  %190 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %188, i32 %189)
  store %struct.sk_buff* %190, %struct.sk_buff** %9, align 8
  %191 = load %struct.sock*, %struct.sock** %5, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %193 = call i32 @sock_queue_rcv_skb(%struct.sock* %191, %struct.sk_buff* %192)
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %185
  %197 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %198 = call i32 @kfree_skb(%struct.sk_buff* %197)
  br label %199

199:                                              ; preds = %196, %185
  br label %200

200:                                              ; preds = %199, %150
  %201 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %202 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %201, i32 0, i32 1
  %203 = load %struct.sk_buff*, %struct.sk_buff** %202, align 8
  %204 = call i32 @kfree_skb(%struct.sk_buff* %203)
  store i32 0, i32* %10, align 4
  br label %205

205:                                              ; preds = %3, %200, %149, %141, %105, %73, %70, %45, %37, %25
  %206 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %207 = call i32 @kfree_skb(%struct.sk_buff* %206)
  %208 = load i32, i32* %10, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %205, %36
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local %struct.l2cap_pinfo* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @get_unaligned_le16(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
