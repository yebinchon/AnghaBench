; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_minisocks.c_dccp_check_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_minisocks.c_dccp_check_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.request_sock*)* }
%struct.dccp_request_sock = type { i64, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*)* }

@DCCP_PKT_REQUEST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Retransmitted REQUEST\0A\00", align 1
@DCCP_RESET_CODE_PACKET_ERROR = common dso_local global i32 0, align 4
@DCCP_PKT_ACK = common dso_local global i64 0, align 8
@DCCP_PKT_DATAACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Invalid ACK number: ack_seq=%llu, dreq_iss=%llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"listen_overflow!\0A\00", align 1
@DCCP_RESET_CODE_TOO_BUSY = common dso_local global i32 0, align 4
@DCCP_PKT_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @dccp_check_req(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2, %struct.request_sock** %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.request_sock*, align 8
  %9 = alloca %struct.request_sock**, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.dccp_request_sock*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.request_sock* %2, %struct.request_sock** %8, align 8
  store %struct.request_sock** %3, %struct.request_sock*** %9, align 8
  store %struct.sock* null, %struct.sock** %10, align 8
  %12 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %13 = call %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock* %12)
  store %struct.dccp_request_sock* %13, %struct.dccp_request_sock** %11, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call %struct.TYPE_9__* @dccp_hdr(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DCCP_PKT_REQUEST, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %11, align 8
  %26 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @after48(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %20
  %31 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %11, align 8
  %37 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %39 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %43 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32 (%struct.sock*, %struct.request_sock*)*, i32 (%struct.sock*, %struct.request_sock*)** %45, align 8
  %47 = load %struct.sock*, %struct.sock** %6, align 8
  %48 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %49 = call i32 %46(%struct.sock* %47, %struct.request_sock* %48)
  br label %50

50:                                               ; preds = %30, %20
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %150

51:                                               ; preds = %4
  %52 = load i32, i32* @DCCP_RESET_CODE_PACKET_ERROR, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call %struct.TYPE_9__* @dccp_hdr(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DCCP_PKT_ACK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %51
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = call %struct.TYPE_9__* @dccp_hdr(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DCCP_PKT_DATAACK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %129

70:                                               ; preds = %62, %51
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %11, align 8
  %76 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %70
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %11, align 8
  %85 = getelementptr inbounds %struct.dccp_request_sock, %struct.dccp_request_sock* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %83, i64 %86)
  br label %129

88:                                               ; preds = %70
  %89 = load %struct.sock*, %struct.sock** %6, align 8
  %90 = load %struct.dccp_request_sock*, %struct.dccp_request_sock** %11, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = call i64 @dccp_parse_options(%struct.sock* %89, %struct.dccp_request_sock* %90, %struct.sk_buff* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %129

95:                                               ; preds = %88
  %96 = load %struct.sock*, %struct.sock** %6, align 8
  %97 = call %struct.TYPE_8__* @inet_csk(%struct.sock* %96)
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*)*, %struct.sock* (%struct.sock*, %struct.sk_buff*, %struct.request_sock*, i32*)** %100, align 8
  %102 = load %struct.sock*, %struct.sock** %6, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %105 = call %struct.sock* %101(%struct.sock* %102, %struct.sk_buff* %103, %struct.request_sock* %104, i32* null)
  store %struct.sock* %105, %struct.sock** %10, align 8
  %106 = load %struct.sock*, %struct.sock** %10, align 8
  %107 = icmp eq %struct.sock* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %123

109:                                              ; preds = %95
  %110 = load %struct.sock*, %struct.sock** %6, align 8
  %111 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %112 = load %struct.request_sock**, %struct.request_sock*** %9, align 8
  %113 = call i32 @inet_csk_reqsk_queue_unlink(%struct.sock* %110, %struct.request_sock* %111, %struct.request_sock** %112)
  %114 = load %struct.sock*, %struct.sock** %6, align 8
  %115 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %116 = call i32 @inet_csk_reqsk_queue_removed(%struct.sock* %114, %struct.request_sock* %115)
  %117 = load %struct.sock*, %struct.sock** %6, align 8
  %118 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %119 = load %struct.sock*, %struct.sock** %10, align 8
  %120 = call i32 @inet_csk_reqsk_queue_add(%struct.sock* %117, %struct.request_sock* %118, %struct.sock* %119)
  br label %121

121:                                              ; preds = %145, %109
  %122 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %122, %struct.sock** %5, align 8
  br label %150

123:                                              ; preds = %108
  %124 = call i32 (i8*, ...) @dccp_pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* @DCCP_RESET_CODE_TOO_BUSY, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %127 = call %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff* %126)
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 8
  br label %129

129:                                              ; preds = %123, %94, %79, %69
  %130 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %131 = call %struct.TYPE_9__* @dccp_hdr(%struct.sk_buff* %130)
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @DCCP_PKT_RESET, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %129
  %137 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %138 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %140, align 8
  %142 = load %struct.sock*, %struct.sock** %6, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %144 = call i32 %141(%struct.sock* %142, %struct.sk_buff* %143)
  br label %145

145:                                              ; preds = %136, %129
  %146 = load %struct.sock*, %struct.sock** %6, align 8
  %147 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %148 = load %struct.request_sock**, %struct.request_sock*** %9, align 8
  %149 = call i32 @inet_csk_reqsk_queue_drop(%struct.sock* %146, %struct.request_sock* %147, %struct.request_sock** %148)
  br label %121

150:                                              ; preds = %121, %50
  %151 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %151
}

declare dso_local %struct.dccp_request_sock* @dccp_rsk(%struct.request_sock*) #1

declare dso_local %struct.TYPE_9__* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @after48(i32, i32) #1

declare dso_local %struct.TYPE_10__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_pr_debug(i8*, ...) #1

declare dso_local i64 @dccp_parse_options(%struct.sock*, %struct.dccp_request_sock*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_unlink(%struct.sock*, %struct.request_sock*, %struct.request_sock**) #1

declare dso_local i32 @inet_csk_reqsk_queue_removed(%struct.sock*, %struct.request_sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_add(%struct.sock*, %struct.request_sock*, %struct.sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_drop(%struct.sock*, %struct.request_sock*, %struct.request_sock**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
