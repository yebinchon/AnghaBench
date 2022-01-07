; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sock_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_sock_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i64, i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.msghdr = type { i32 }
%struct.l2cap_pinfo = type { i32, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"sock %p, sk %p\00", align 1
@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@L2CAP_SDU_UNSEGMENTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bad state %1.1x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @l2cap_sock_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_sock_sendmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.l2cap_pinfo*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.socket*, %struct.socket** %7, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %10, align 8
  %18 = load %struct.sock*, %struct.sock** %10, align 8
  %19 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %18)
  store %struct.l2cap_pinfo* %19, %struct.l2cap_pinfo** %11, align 8
  %20 = load %struct.socket*, %struct.socket** %7, align 8
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.socket* %20, %struct.sock* %21)
  %23 = load %struct.sock*, %struct.sock** %10, align 8
  %24 = call i32 @sock_error(%struct.sock* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %5, align 4
  br label %181

29:                                               ; preds = %4
  %30 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MSG_OOB, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %181

39:                                               ; preds = %29
  %40 = load %struct.sock*, %struct.sock** %10, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SOCK_SEQPACKET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %47 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 130
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %53 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ugt i64 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %181

59:                                               ; preds = %50, %45, %39
  %60 = load %struct.sock*, %struct.sock** %10, align 8
  %61 = call i32 @lock_sock(%struct.sock* %60)
  %62 = load %struct.sock*, %struct.sock** %10, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BT_CONNECTED, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @ENOTCONN, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %14, align 4
  br label %177

70:                                               ; preds = %59
  %71 = load %struct.sock*, %struct.sock** %10, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SOCK_DGRAM, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70
  %77 = load %struct.sock*, %struct.sock** %10, align 8
  %78 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call %struct.sk_buff* @l2cap_create_connless_pdu(%struct.sock* %77, %struct.msghdr* %78, i64 %79)
  store %struct.sk_buff* %80, %struct.sk_buff** %12, align 8
  %81 = load %struct.sock*, %struct.sock** %10, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %83 = call i32 @l2cap_do_send(%struct.sock* %81, %struct.sk_buff* %82)
  store i32 %83, i32* %14, align 4
  br label %177

84:                                               ; preds = %70
  %85 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %86 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %169 [
    i32 130, label %88
    i32 129, label %109
    i32 128, label %109
  ]

88:                                               ; preds = %84
  %89 = load %struct.sock*, %struct.sock** %10, align 8
  %90 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call %struct.sk_buff* @l2cap_create_basic_pdu(%struct.sock* %89, %struct.msghdr* %90, i64 %91)
  store %struct.sk_buff* %92, %struct.sk_buff** %12, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %94 = call i32 @IS_ERR(%struct.sk_buff* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %98 = call i32 @PTR_ERR(%struct.sk_buff* %97)
  store i32 %98, i32* %14, align 4
  br label %177

99:                                               ; preds = %88
  %100 = load %struct.sock*, %struct.sock** %10, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %102 = call i32 @l2cap_do_send(%struct.sock* %100, %struct.sk_buff* %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = load i64, i64* %9, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %105, %99
  br label %176

109:                                              ; preds = %84, %84
  %110 = load i64, i64* %9, align 8
  %111 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %112 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ule i64 %110, %113
  br i1 %114, label %115, label %142

115:                                              ; preds = %109
  %116 = load i32, i32* @L2CAP_SDU_UNSEGMENTED, align 4
  store i32 %116, i32* %13, align 4
  %117 = load %struct.sock*, %struct.sock** %10, align 8
  %118 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call %struct.sk_buff* @l2cap_create_iframe_pdu(%struct.sock* %117, %struct.msghdr* %118, i64 %119, i32 %120, i32 0)
  store %struct.sk_buff* %121, %struct.sk_buff** %12, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %123 = call i32 @IS_ERR(%struct.sk_buff* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %127 = call i32 @PTR_ERR(%struct.sk_buff* %126)
  store i32 %127, i32* %14, align 4
  br label %177

128:                                              ; preds = %115
  %129 = load %struct.sock*, %struct.sock** %10, align 8
  %130 = call i32 @TX_QUEUE(%struct.sock* %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %132 = call i32 @__skb_queue_tail(i32 %130, %struct.sk_buff* %131)
  %133 = load %struct.sock*, %struct.sock** %10, align 8
  %134 = getelementptr inbounds %struct.sock, %struct.sock* %133, i32 0, i32 2
  %135 = load %struct.sk_buff*, %struct.sk_buff** %134, align 8
  %136 = icmp eq %struct.sk_buff* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %128
  %138 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %139 = load %struct.sock*, %struct.sock** %10, align 8
  %140 = getelementptr inbounds %struct.sock, %struct.sock* %139, i32 0, i32 2
  store %struct.sk_buff* %138, %struct.sk_buff** %140, align 8
  br label %141

141:                                              ; preds = %137, %128
  br label %151

142:                                              ; preds = %109
  %143 = load %struct.sock*, %struct.sock** %10, align 8
  %144 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %145 = load i64, i64* %9, align 8
  %146 = call i32 @l2cap_sar_segment_sdu(%struct.sock* %143, %struct.msghdr* %144, i64 %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %177

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %141
  %152 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %153 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 128
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load %struct.sock*, %struct.sock** %10, align 8
  %158 = call i32 @l2cap_streaming_send(%struct.sock* %157)
  store i32 %158, i32* %14, align 4
  br label %162

159:                                              ; preds = %151
  %160 = load %struct.sock*, %struct.sock** %10, align 8
  %161 = call i32 @l2cap_ertm_send(%struct.sock* %160)
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i64, i64* %9, align 8
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %165, %162
  br label %176

169:                                              ; preds = %84
  %170 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %171 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %14, align 4
  br label %176

176:                                              ; preds = %169, %168, %108
  br label %177

177:                                              ; preds = %176, %149, %125, %96, %76, %67
  %178 = load %struct.sock*, %struct.sock** %10, align 8
  %179 = call i32 @release_sock(%struct.sock* %178)
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %177, %56, %36, %27
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local %struct.l2cap_pinfo* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.sk_buff* @l2cap_create_connless_pdu(%struct.sock*, %struct.msghdr*, i64) #1

declare dso_local i32 @l2cap_do_send(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @l2cap_create_basic_pdu(%struct.sock*, %struct.msghdr*, i64) #1

declare dso_local i32 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @l2cap_create_iframe_pdu(%struct.sock*, %struct.msghdr*, i64, i32, i32) #1

declare dso_local i32 @__skb_queue_tail(i32, %struct.sk_buff*) #1

declare dso_local i32 @TX_QUEUE(%struct.sock*) #1

declare dso_local i32 @l2cap_sar_segment_sdu(%struct.sock*, %struct.msghdr*, i64) #1

declare dso_local i32 @l2cap_streaming_send(%struct.sock*) #1

declare dso_local i32 @l2cap_ertm_send(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
