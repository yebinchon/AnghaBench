; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_sock.c_hci_sock_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_sock.c_hci_sock_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32 }
%struct.hci_dev = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i8* }
%struct.TYPE_5__ = type { %struct.hci_dev* }
%struct.TYPE_6__ = type { i8 }

@.str = private unnamed_addr constant [14 x i8] c"sock %p sk %p\00", align 1
@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@MSG_ERRQUEUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HCI_MAX_FRAME_SIZE = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@HCI_COMMAND_PKT = common dso_local global i8 0, align 1
@HCI_SFLT_MAX_OGF = common dso_local global i64 0, align 8
@HCI_FLT_OCF_BITS = common dso_local global i64 0, align 8
@hci_sec_filter = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CAP_NET_RAW = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@HCI_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @hci_sock_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_sock_sendmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.hci_dev*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.socket*, %struct.socket** %7, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %10, align 8
  %20 = load %struct.socket*, %struct.socket** %7, align 8
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.socket* %20, %struct.sock* %21)
  %23 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MSG_OOB, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %191

32:                                               ; preds = %4
  %33 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MSG_DONTWAIT, align 4
  %37 = load i32, i32* @MSG_NOSIGNAL, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MSG_ERRQUEUE, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %35, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %191

47:                                               ; preds = %32
  %48 = load i64, i64* %9, align 8
  %49 = icmp ult i64 %48, 4
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @HCI_MAX_FRAME_SIZE, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %191

57:                                               ; preds = %50
  %58 = load %struct.sock*, %struct.sock** %10, align 8
  %59 = call i32 @lock_sock(%struct.sock* %58)
  %60 = load %struct.sock*, %struct.sock** %10, align 8
  %61 = call %struct.TYPE_5__* @hci_pi(%struct.sock* %60)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.hci_dev*, %struct.hci_dev** %62, align 8
  store %struct.hci_dev* %63, %struct.hci_dev** %11, align 8
  %64 = icmp ne %struct.hci_dev* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* @EBADFD, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %13, align 4
  br label %184

68:                                               ; preds = %57
  %69 = load %struct.sock*, %struct.sock** %10, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %72 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MSG_DONTWAIT, align 4
  %75 = and i32 %73, %74
  %76 = call %struct.sk_buff* @bt_skb_send_alloc(%struct.sock* %69, i64 %70, i32 %75, i32* %13)
  store %struct.sk_buff* %76, %struct.sk_buff** %12, align 8
  %77 = icmp ne %struct.sk_buff* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %68
  br label %184

79:                                               ; preds = %68
  %80 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @skb_put(%struct.sk_buff* %80, i64 %81)
  %83 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %84 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %9, align 8
  %87 = call i64 @memcpy_fromiovec(i32 %82, i32 %85, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load i32, i32* @EFAULT, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %13, align 4
  br label %188

92:                                               ; preds = %79
  %93 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = load i8, i8* %96, align 1
  %98 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %99 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i8 %97, i8* %100, align 1
  %101 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %102 = call i32 @skb_pull(%struct.sk_buff* %101, i32 1)
  %103 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %104 = bitcast %struct.hci_dev* %103 to i8*
  %105 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %108 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %107)
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i8, i8* @HCI_COMMAND_PKT, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %167

115:                                              ; preds = %92
  %116 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @get_unaligned_le16(i64 %118)
  store i64 %119, i64* %14, align 8
  %120 = load i64, i64* %14, align 8
  %121 = call i64 @hci_opcode_ogf(i64 %120)
  store i64 %121, i64* %15, align 8
  %122 = load i64, i64* %14, align 8
  %123 = call i64 @hci_opcode_ocf(i64 %122)
  store i64 %123, i64* %16, align 8
  %124 = load i64, i64* %15, align 8
  %125 = load i64, i64* @HCI_SFLT_MAX_OGF, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %136, label %127

127:                                              ; preds = %115
  %128 = load i64, i64* %16, align 8
  %129 = load i64, i64* @HCI_FLT_OCF_BITS, align 8
  %130 = and i64 %128, %129
  %131 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hci_sec_filter, i32 0, i32 0), align 8
  %132 = load i64, i64* %15, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = call i32 @hci_test_bit(i64 %130, i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %127, %115
  %137 = load i32, i32* @CAP_NET_RAW, align 4
  %138 = call i32 @capable(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* @EPERM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %13, align 4
  br label %188

143:                                              ; preds = %136, %127
  %144 = load i32, i32* @HCI_RAW, align 4
  %145 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %146 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %145, i32 0, i32 2
  %147 = call i64 @test_bit(i32 %144, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = load i64, i64* %15, align 8
  %151 = icmp eq i64 %150, 63
  br i1 %151, label %152, label %159

152:                                              ; preds = %149, %143
  %153 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %154 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %153, i32 0, i32 0
  %155 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %156 = call i32 @skb_queue_tail(i32* %154, %struct.sk_buff* %155)
  %157 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %158 = call i32 @hci_sched_tx(%struct.hci_dev* %157)
  br label %166

159:                                              ; preds = %149
  %160 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %161 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %160, i32 0, i32 1
  %162 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %163 = call i32 @skb_queue_tail(i32* %161, %struct.sk_buff* %162)
  %164 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %165 = call i32 @hci_sched_cmd(%struct.hci_dev* %164)
  br label %166

166:                                              ; preds = %159, %152
  br label %181

167:                                              ; preds = %92
  %168 = load i32, i32* @CAP_NET_RAW, align 4
  %169 = call i32 @capable(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* @EPERM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %13, align 4
  br label %188

174:                                              ; preds = %167
  %175 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %176 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %175, i32 0, i32 0
  %177 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %178 = call i32 @skb_queue_tail(i32* %176, %struct.sk_buff* %177)
  %179 = load %struct.hci_dev*, %struct.hci_dev** %11, align 8
  %180 = call i32 @hci_sched_tx(%struct.hci_dev* %179)
  br label %181

181:                                              ; preds = %174, %166
  %182 = load i64, i64* %9, align 8
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %13, align 4
  br label %184

184:                                              ; preds = %188, %181, %78, %65
  %185 = load %struct.sock*, %struct.sock** %10, align 8
  %186 = call i32 @release_sock(%struct.sock* %185)
  %187 = load i32, i32* %13, align 4
  store i32 %187, i32* %5, align 4
  br label %191

188:                                              ; preds = %171, %140, %89
  %189 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %190 = call i32 @kfree_skb(%struct.sk_buff* %189)
  br label %184

191:                                              ; preds = %184, %54, %44, %29
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_5__* @hci_pi(%struct.sock*) #1

declare dso_local %struct.sk_buff* @bt_skb_send_alloc(%struct.sock*, i64, i32, i32*) #1

declare dso_local i64 @memcpy_fromiovec(i32, i32, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local %struct.TYPE_6__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @get_unaligned_le16(i64) #1

declare dso_local i64 @hci_opcode_ogf(i64) #1

declare dso_local i64 @hci_opcode_ocf(i64) #1

declare dso_local i32 @hci_test_bit(i64, i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @hci_sched_tx(%struct.hci_dev*) #1

declare dso_local i32 @hci_sched_cmd(%struct.hci_dev*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
