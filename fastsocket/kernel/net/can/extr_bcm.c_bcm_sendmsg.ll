; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i64 }
%struct.bcm_sock = type { i32, i32, i32, i32 }
%struct.bcm_msg_head = type { i32, i32, i32 }
%struct.sockaddr_can = type { i64, i32 }
%struct.net_device = type { i64 }

@ENOTCONN = common dso_local global i32 0, align 4
@MHSIZ = common dso_local global i64 0, align 8
@CFSIZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AF_CAN = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ARPHRD_CAN = common dso_local global i64 0, align 8
@TX_STATUS = common dso_local global i32 0, align 4
@RX_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.socket*, %struct.msghdr*, i64)* @bcm_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sendmsg(%struct.kiocb* %0, %struct.socket* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.bcm_sock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bcm_msg_head, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr_can*, align 8
  %16 = alloca %struct.net_device*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.socket*, %struct.socket** %7, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %10, align 8
  %20 = load %struct.sock*, %struct.sock** %10, align 8
  %21 = call %struct.bcm_sock* @bcm_sk(%struct.sock* %20)
  store %struct.bcm_sock* %21, %struct.bcm_sock** %11, align 8
  %22 = load %struct.bcm_sock*, %struct.bcm_sock** %11, align 8
  %23 = getelementptr inbounds %struct.bcm_sock, %struct.bcm_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.bcm_sock*, %struct.bcm_sock** %11, align 8
  %26 = getelementptr inbounds %struct.bcm_sock, %struct.bcm_sock* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOTCONN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %192

32:                                               ; preds = %4
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @MHSIZ, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @MHSIZ, align 8
  %39 = sub i64 %37, %38
  %40 = load i64, i64* @CFSIZ, align 8
  %41 = urem i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36, %32
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %192

46:                                               ; preds = %36
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %96, label %49

49:                                               ; preds = %46
  %50 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %51 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %96

54:                                               ; preds = %49
  %55 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %56 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.sockaddr_can*
  store %struct.sockaddr_can* %58, %struct.sockaddr_can** %15, align 8
  %59 = load %struct.sockaddr_can*, %struct.sockaddr_can** %15, align 8
  %60 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AF_CAN, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %192

67:                                               ; preds = %54
  %68 = load %struct.sockaddr_can*, %struct.sockaddr_can** %15, align 8
  %69 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %67
  %74 = load i32, i32* %12, align 4
  %75 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i32 %74)
  store %struct.net_device* %75, %struct.net_device** %16, align 8
  %76 = load %struct.net_device*, %struct.net_device** %16, align 8
  %77 = icmp ne %struct.net_device* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %192

81:                                               ; preds = %73
  %82 = load %struct.net_device*, %struct.net_device** %16, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ARPHRD_CAN, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.net_device*, %struct.net_device** %16, align 8
  %89 = call i32 @dev_put(%struct.net_device* %88)
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %192

92:                                               ; preds = %81
  %93 = load %struct.net_device*, %struct.net_device** %16, align 8
  %94 = call i32 @dev_put(%struct.net_device* %93)
  br label %95

95:                                               ; preds = %92, %67
  br label %96

96:                                               ; preds = %95, %49, %46
  %97 = bitcast %struct.bcm_msg_head* %13 to i32*
  %98 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %99 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* @MHSIZ, align 8
  %102 = call i32 @memcpy_fromiovec(i32* %97, i32 %100, i64 %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %5, align 4
  br label %192

107:                                              ; preds = %96
  %108 = load %struct.sock*, %struct.sock** %10, align 8
  %109 = call i32 @lock_sock(%struct.sock* %108)
  %110 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %13, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %185 [
    i32 128, label %112
    i32 132, label %117
    i32 131, label %122
    i32 134, label %137
    i32 130, label %152
    i32 133, label %159
    i32 129, label %166
  ]

112:                                              ; preds = %107
  %113 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.sock*, %struct.sock** %10, align 8
  %116 = call i32 @bcm_tx_setup(%struct.bcm_msg_head* %13, %struct.msghdr* %113, i32 %114, %struct.sock* %115)
  store i32 %116, i32* %14, align 4
  br label %188

117:                                              ; preds = %107
  %118 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.sock*, %struct.sock** %10, align 8
  %121 = call i32 @bcm_rx_setup(%struct.bcm_msg_head* %13, %struct.msghdr* %118, i32 %119, %struct.sock* %120)
  store i32 %121, i32* %14, align 4
  br label %188

122:                                              ; preds = %107
  %123 = load %struct.bcm_sock*, %struct.bcm_sock** %11, align 8
  %124 = getelementptr inbounds %struct.bcm_sock, %struct.bcm_sock* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %13, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @bcm_delete_tx_op(i32* %124, i32 %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load i64, i64* @MHSIZ, align 8
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %14, align 4
  br label %136

133:                                              ; preds = %122
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %133, %130
  br label %188

137:                                              ; preds = %107
  %138 = load %struct.bcm_sock*, %struct.bcm_sock** %11, align 8
  %139 = getelementptr inbounds %struct.bcm_sock, %struct.bcm_sock* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %13, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @bcm_delete_rx_op(i32* %139, i32 %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load i64, i64* @MHSIZ, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %14, align 4
  br label %151

148:                                              ; preds = %137
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %14, align 4
  br label %151

151:                                              ; preds = %148, %145
  br label %188

152:                                              ; preds = %107
  %153 = load i32, i32* @TX_STATUS, align 4
  %154 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %13, i32 0, i32 0
  store i32 %153, i32* %154, align 4
  %155 = load %struct.bcm_sock*, %struct.bcm_sock** %11, align 8
  %156 = getelementptr inbounds %struct.bcm_sock, %struct.bcm_sock* %155, i32 0, i32 2
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @bcm_read_op(i32* %156, %struct.bcm_msg_head* %13, i32 %157)
  store i32 %158, i32* %14, align 4
  br label %188

159:                                              ; preds = %107
  %160 = load i32, i32* @RX_STATUS, align 4
  %161 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %13, i32 0, i32 0
  store i32 %160, i32* %161, align 4
  %162 = load %struct.bcm_sock*, %struct.bcm_sock** %11, align 8
  %163 = getelementptr inbounds %struct.bcm_sock, %struct.bcm_sock* %162, i32 0, i32 1
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @bcm_read_op(i32* %163, %struct.bcm_msg_head* %13, i32 %164)
  store i32 %165, i32* %14, align 4
  br label %188

166:                                              ; preds = %107
  %167 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %13, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 1
  br i1 %169, label %176, label %170

170:                                              ; preds = %166
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* @CFSIZ, align 8
  %173 = load i64, i64* @MHSIZ, align 8
  %174 = add i64 %172, %173
  %175 = icmp ne i64 %171, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %170, %166
  %177 = load i32, i32* @EINVAL, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %14, align 4
  br label %184

179:                                              ; preds = %170
  %180 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %181 = load i32, i32* %12, align 4
  %182 = load %struct.sock*, %struct.sock** %10, align 8
  %183 = call i32 @bcm_tx_send(%struct.msghdr* %180, i32 %181, %struct.sock* %182)
  store i32 %183, i32* %14, align 4
  br label %184

184:                                              ; preds = %179, %176
  br label %188

185:                                              ; preds = %107
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %14, align 4
  br label %188

188:                                              ; preds = %185, %184, %159, %152, %151, %136, %117, %112
  %189 = load %struct.sock*, %struct.sock** %10, align 8
  %190 = call i32 @release_sock(%struct.sock* %189)
  %191 = load i32, i32* %14, align 4
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %188, %105, %87, %78, %64, %43, %29
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local %struct.bcm_sock* @bcm_sk(%struct.sock*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @memcpy_fromiovec(i32*, i32, i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @bcm_tx_setup(%struct.bcm_msg_head*, %struct.msghdr*, i32, %struct.sock*) #1

declare dso_local i32 @bcm_rx_setup(%struct.bcm_msg_head*, %struct.msghdr*, i32, %struct.sock*) #1

declare dso_local i32 @bcm_delete_tx_op(i32*, i32, i32) #1

declare dso_local i32 @bcm_delete_rx_op(i32*, i32, i32) #1

declare dso_local i32 @bcm_read_op(i32*, %struct.bcm_msg_head*, i32) #1

declare dso_local i32 @bcm_tx_send(%struct.msghdr*, i32, %struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
