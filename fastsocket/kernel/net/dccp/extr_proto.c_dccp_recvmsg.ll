; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_recvmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.sock = type { i64, i32, i64, i32 }
%struct.msghdr = type { i32, i32 }
%struct.dccp_hdr = type { i32 }
%struct.sk_buff = type { i64 }

@DCCP_LISTEN = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i64 0, align 8
@MSG_PEEK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"found fin (%s) ok!\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"packet_type=%s\0A\00", align 1
@SOCK_DONE = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_recvmsg(%struct.kiocb* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.kiocb*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.msghdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.dccp_hdr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.sk_buff*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.msghdr* %2, %struct.msghdr** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %18 = load %struct.sock*, %struct.sock** %9, align 8
  %19 = call i32 @lock_sock(%struct.sock* %18)
  %20 = load %struct.sock*, %struct.sock** %9, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DCCP_LISTEN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load i64, i64* @ENOTCONN, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %11, align 8
  br label %171

28:                                               ; preds = %7
  %29 = load %struct.sock*, %struct.sock** %9, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i64 @sock_rcvtimeo(%struct.sock* %29, i32 %30)
  store i64 %31, i64* %16, align 8
  br label %32

32:                                               ; preds = %169, %28
  %33 = load %struct.sock*, %struct.sock** %9, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 3
  %35 = call %struct.sk_buff* @skb_peek(i32* %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %17, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %37 = icmp eq %struct.sk_buff* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %71

39:                                               ; preds = %32
  %40 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %41 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %40)
  store %struct.dccp_hdr* %41, %struct.dccp_hdr** %15, align 8
  %42 = load %struct.dccp_hdr*, %struct.dccp_hdr** %15, align 8
  %43 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %61 [
    i32 130, label %45
    i32 129, label %45
    i32 132, label %46
    i32 131, label %46
    i32 128, label %55
  ]

45:                                               ; preds = %39, %39
  br label %124

46:                                               ; preds = %39, %39
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @MSG_PEEK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct.sock*, %struct.sock** %9, align 8
  %53 = call i32 @dccp_finish_passive_close(%struct.sock* %52)
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %39, %54
  %56 = load %struct.dccp_hdr*, %struct.dccp_hdr** %15, align 8
  %57 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dccp_packet_name(i32 %58)
  %60 = call i32 @dccp_pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %59)
  store i64 0, i64* %11, align 8
  br label %159

61:                                               ; preds = %39
  %62 = load %struct.dccp_hdr*, %struct.dccp_hdr** %15, align 8
  %63 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dccp_packet_name(i32 %64)
  %66 = call i32 @dccp_pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.sock*, %struct.sock** %9, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %69 = call i32 @sk_eat_skb(%struct.sock* %67, %struct.sk_buff* %68, i32 0)
  br label %70

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %38
  %72 = load %struct.sock*, %struct.sock** %9, align 8
  %73 = load i32, i32* @SOCK_DONE, align 4
  %74 = call i64 @sock_flag(%struct.sock* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i64 0, i64* %11, align 8
  br label %170

77:                                               ; preds = %71
  %78 = load %struct.sock*, %struct.sock** %9, align 8
  %79 = getelementptr inbounds %struct.sock, %struct.sock* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.sock*, %struct.sock** %9, align 8
  %84 = call i64 @sock_error(%struct.sock* %83)
  store i64 %84, i64* %11, align 8
  br label %170

85:                                               ; preds = %77
  %86 = load %struct.sock*, %struct.sock** %9, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @RCV_SHUTDOWN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i64 0, i64* %11, align 8
  br label %170

93:                                               ; preds = %85
  %94 = load %struct.sock*, %struct.sock** %9, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DCCP_CLOSED, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load %struct.sock*, %struct.sock** %9, align 8
  %101 = load i32, i32* @SOCK_DONE, align 4
  %102 = call i64 @sock_flag(%struct.sock* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i64, i64* @ENOTCONN, align 8
  %106 = sub i64 0, %105
  store i64 %106, i64* %11, align 8
  br label %170

107:                                              ; preds = %99
  store i64 0, i64* %11, align 8
  br label %170

108:                                              ; preds = %93
  %109 = load i64, i64* %16, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i64, i64* @EAGAIN, align 8
  %113 = sub i64 0, %112
  store i64 %113, i64* %11, align 8
  br label %170

114:                                              ; preds = %108
  %115 = load i32, i32* @current, align 4
  %116 = call i64 @signal_pending(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i64, i64* %16, align 8
  %120 = call i64 @sock_intr_errno(i64 %119)
  store i64 %120, i64* %11, align 8
  br label %170

121:                                              ; preds = %114
  %122 = load %struct.sock*, %struct.sock** %9, align 8
  %123 = call i32 @sk_wait_data(%struct.sock* %122, i64* %16)
  br label %169

124:                                              ; preds = %45
  %125 = load i64, i64* %11, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ugt i64 %125, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %11, align 8
  br label %147

134:                                              ; preds = %124
  %135 = load i64, i64* %11, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ult i64 %135, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load i32, i32* @MSG_TRUNC, align 4
  %142 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %143 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %140, %134
  br label %147

147:                                              ; preds = %146, %130
  %148 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %149 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %150 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i64, i64* %11, align 8
  %153 = call i64 @skb_copy_datagram_iovec(%struct.sk_buff* %148, i32 0, i32 %151, i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i64, i64* @EFAULT, align 8
  %157 = sub i64 0, %156
  store i64 %157, i64* %11, align 8
  br label %170

158:                                              ; preds = %147
  br label %159

159:                                              ; preds = %158, %55
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* @MSG_PEEK, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %159
  %165 = load %struct.sock*, %struct.sock** %9, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %167 = call i32 @sk_eat_skb(%struct.sock* %165, %struct.sk_buff* %166, i32 0)
  br label %168

168:                                              ; preds = %164, %159
  br label %170

169:                                              ; preds = %121
  br i1 true, label %32, label %170

170:                                              ; preds = %169, %168, %155, %118, %111, %107, %104, %92, %82, %76
  br label %171

171:                                              ; preds = %170, %25
  %172 = load %struct.sock*, %struct.sock** %9, align 8
  %173 = call i32 @release_sock(%struct.sock* %172)
  %174 = load i64, i64* %11, align 8
  %175 = trunc i64 %174 to i32
  ret i32 %175
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_finish_passive_close(%struct.sock*) #1

declare dso_local i32 @dccp_pr_debug(i8*, i32) #1

declare dso_local i32 @dccp_packet_name(i32) #1

declare dso_local i32 @sk_eat_skb(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @sock_error(%struct.sock*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @sock_intr_errno(i64) #1

declare dso_local i32 @sk_wait_data(%struct.sock*, i64*) #1

declare dso_local i64 @skb_copy_datagram_iovec(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
