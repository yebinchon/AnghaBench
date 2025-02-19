; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_input.c_dccp_check_seqno.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_input.c_dccp_check_seqno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i64 }
%struct.dccp_sock = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@DCCP_PKT_SYNC = common dso_local global i64 0, align 8
@DCCP_PKT_SYNCACK = common dso_local global i64 0, align 8
@DCCP_PKT_CLOSEREQ = common dso_local global i64 0, align 8
@DCCP_PKT_CLOSE = common dso_local global i64 0, align 8
@DCCP_PKT_RESET = common dso_local global i64 0, align 8
@DCCP_PKT_WITHOUT_ACK_SEQ = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@sysctl_dccp_sync_ratelimit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [160 x i8] c"DCCP: Step 6 failed for %s packet, (LSWL(%llu) <= P.seqno(%llu) <= S.SWH(%llu)) and (P.ackno %s or LAWL(%llu) <= P.ackno(%llu) <= S.AWH(%llu), sending SYNC...\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"doesn't exist\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @dccp_check_seqno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_check_seqno(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dccp_hdr*, align 8
  %7 = alloca %struct.dccp_sock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %13)
  store %struct.dccp_hdr* %14, %struct.dccp_hdr** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %15)
  store %struct.dccp_sock* %16, %struct.dccp_sock** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DCCP_PKT_SYNC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %32 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DCCP_PKT_SYNCACK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %30, %2
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %39 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %42 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @between48(i64 %37, i64 %40, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %36
  %47 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %48 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @dccp_delta_seqno(i64 %49, i64 %50)
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @dccp_update_gsr(%struct.sock* %54, i64 %55)
  br label %58

57:                                               ; preds = %46, %36
  store i32 -1, i32* %3, align 4
  br label %179

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %30
  %60 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %61 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %8, align 8
  %63 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %64 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %9, align 8
  %66 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %67 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DCCP_PKT_CLOSEREQ, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %59
  %72 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %73 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DCCP_PKT_CLOSE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %79 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @DCCP_PKT_RESET, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77, %71, %59
  %84 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %85 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @ADD48(i64 %86, i32 1)
  store i64 %87, i64* %8, align 8
  %88 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %89 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %83, %77
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %95 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @between48(i64 %92, i64 %93, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %129

99:                                               ; preds = %91
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* @DCCP_PKT_WITHOUT_ACK_SEQ, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %107 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @between48(i64 %104, i64 %105, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %103, %99
  %112 = load %struct.sock*, %struct.sock** %4, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @dccp_update_gsr(%struct.sock* %112, i64 %113)
  %115 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %116 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @DCCP_PKT_SYNC, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %111
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* @DCCP_PKT_WITHOUT_ACK_SEQ, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i64, i64* %11, align 8
  %126 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %127 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %124, %120, %111
  br label %178

129:                                              ; preds = %103, %91
  %130 = load i64, i64* @jiffies, align 8
  store i64 %130, i64* %12, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %133 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @sysctl_dccp_sync_ratelimit, align 8
  %136 = add i64 %134, %135
  %137 = call i64 @time_before(i64 %131, i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %179

140:                                              ; preds = %129
  %141 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %142 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @dccp_packet_name(i64 %143)
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %148 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* @DCCP_PKT_WITHOUT_ACK_SEQ, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %155 = load i64, i64* %9, align 8
  %156 = load i64, i64* %11, align 8
  %157 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %158 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str, i64 0, i64 0), i32 %144, i64 %145, i64 %146, i64 %149, i8* %154, i64 %155, i64 %156, i64 %159)
  %161 = load i64, i64* %12, align 8
  %162 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %163 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %162, i32 0, i32 4
  store i64 %161, i64* %163, align 8
  %164 = load %struct.dccp_hdr*, %struct.dccp_hdr** %6, align 8
  %165 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @DCCP_PKT_RESET, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %140
  %170 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %171 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %10, align 8
  br label %173

173:                                              ; preds = %169, %140
  %174 = load %struct.sock*, %struct.sock** %4, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load i64, i64* @DCCP_PKT_SYNC, align 8
  %177 = call i32 @dccp_send_sync(%struct.sock* %174, i64 %175, i64 %176)
  store i32 -1, i32* %3, align 4
  br label %179

178:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %173, %139, %57
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @between48(i64, i64, i64) #1

declare dso_local i64 @dccp_delta_seqno(i64, i64) #1

declare dso_local i32 @dccp_update_gsr(%struct.sock*, i64) #1

declare dso_local i64 @ADD48(i64, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @DCCP_WARN(i8*, i32, i64, i64, i64, i8*, i64, i64, i64) #1

declare dso_local i32 @dccp_packet_name(i64) #1

declare dso_local i32 @dccp_send_sync(%struct.sock*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
