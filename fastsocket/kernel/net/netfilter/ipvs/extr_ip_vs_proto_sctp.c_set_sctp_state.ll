; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_sctp.c_set_sctp_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_sctp.c_set_sctp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ip_vs_protocol = type { i32*, i32 }
%struct.ip_vs_conn = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.ip_vs_dest* }
%struct.ip_vs_dest = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i8, i32 }

@SCTP_CID_COOKIE_ECHO = common dso_local global i8 0, align 1
@SCTP_CID_COOKIE_ACK = common dso_local global i8 0, align 1
@SCTP_CID_ABORT = common dso_local global i8 0, align 1
@sctp_events = common dso_local global i32* null, align 8
@IP_VS_DIR_OUTPUT = common dso_local global i32 0, align 4
@sctp_states_table = common dso_local global %struct.TYPE_6__** null, align 8
@.str = private unnamed_addr constant [51 x i8] c"%s %s  %s:%d->%s:%d state: %s->%s conn->refcnt:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"output \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"input \00", align 1
@IP_VS_CONN_F_INACTIVE = common dso_local global i32 0, align 4
@IP_VS_SCTP_S_ESTABLISHED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_protocol*, %struct.ip_vs_conn*, i32, %struct.sk_buff*)* @set_sctp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sctp_state(%struct.ip_vs_protocol* %0, %struct.ip_vs_conn* %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_vs_protocol*, align 8
  %7 = alloca %struct.ip_vs_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ip_vs_dest*, align 8
  store %struct.ip_vs_protocol* %0, %struct.ip_vs_protocol** %6, align 8
  store %struct.ip_vs_conn* %1, %struct.ip_vs_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = call i32 @ip_hdrlen(%struct.sk_buff* %17)
  store i32 %18, i32* %15, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = load i32, i32* %15, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call %struct.TYPE_5__* @skb_header_pointer(%struct.sk_buff* %19, i32 %23, i32 8, %struct.TYPE_5__* %10)
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %11, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %26 = icmp eq %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %212

28:                                               ; preds = %4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 4
  store i8 %31, i8* %12, align 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 4
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @SCTP_CID_COOKIE_ECHO, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %28
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 4
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @SCTP_CID_COOKIE_ACK, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %39, %28
  %48 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %51, %55
  %57 = trunc i64 %56 to i32
  %58 = call %struct.TYPE_5__* @skb_header_pointer(%struct.sk_buff* %48, i32 %57, i32 8, %struct.TYPE_5__* %10)
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %11, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = icmp ne %struct.TYPE_5__* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %47
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i8, i8* %63, align 4
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @SCTP_CID_ABORT, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i8, i8* %71, align 4
  store i8 %72, i8* %12, align 1
  br label %73

73:                                               ; preds = %69, %61
  br label %74

74:                                               ; preds = %73, %47
  br label %75

75:                                               ; preds = %74, %39
  %76 = load i32*, i32** @sctp_events, align 8
  %77 = load i8, i8* %12, align 1
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @IP_VS_DIR_OUTPUT, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %84, %75
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @sctp_states_table, align 8
  %89 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %90 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 %91
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %102 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %105, label %200

105:                                              ; preds = %87
  %106 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %107 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %106, i32 0, i32 9
  %108 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %107, align 8
  store %struct.ip_vs_dest* %108, %struct.ip_vs_dest** %16, align 8
  %109 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %6, align 8
  %110 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @IP_VS_DIR_OUTPUT, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %117 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %118 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %121 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %120, i32 0, i32 8
  %122 = call i32 @IP_VS_DBG_ADDR(i64 %119, i32* %121)
  %123 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %124 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ntohs(i32 %125)
  %127 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %128 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %131 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %130, i32 0, i32 6
  %132 = call i32 @IP_VS_DBG_ADDR(i64 %129, i32* %131)
  %133 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %134 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ntohs(i32 %135)
  %137 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %138 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @sctp_state_name(i32 %140)
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @sctp_state_name(i32 %142)
  %144 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %145 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %144, i32 0, i32 4
  %146 = call i32 @atomic_read(i32* %145)
  %147 = call i32 @IP_VS_DBG_BUF(i32 8, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %111, i8* %116, i32 %122, i32 %126, i32 %132, i32 %136, i32 %141, i32 %143, i32 %146)
  %148 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %16, align 8
  %149 = icmp ne %struct.ip_vs_dest* %148, null
  br i1 %149, label %150, label %199

150:                                              ; preds = %105
  %151 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %152 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %173, label %157

157:                                              ; preds = %150
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* @IP_VS_SCTP_S_ESTABLISHED, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %157
  %162 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %16, align 8
  %163 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %162, i32 0, i32 1
  %164 = call i32 @atomic_dec(i32* %163)
  %165 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %16, align 8
  %166 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %165, i32 0, i32 0
  %167 = call i32 @atomic_inc(i32* %166)
  %168 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %169 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %170 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %198

173:                                              ; preds = %157, %150
  %174 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %175 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %173
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* @IP_VS_SCTP_S_ESTABLISHED, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %197

184:                                              ; preds = %180
  %185 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %16, align 8
  %186 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %185, i32 0, i32 1
  %187 = call i32 @atomic_inc(i32* %186)
  %188 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %16, align 8
  %189 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %188, i32 0, i32 0
  %190 = call i32 @atomic_dec(i32* %189)
  %191 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %192 = xor i32 %191, -1
  %193 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %194 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %184, %180, %173
  br label %198

198:                                              ; preds = %197, %161
  br label %199

199:                                              ; preds = %198, %105
  br label %200

200:                                              ; preds = %199, %87
  %201 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %6, align 8
  %202 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %207 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %206, i32 0, i32 1
  store i64 %205, i64* %207, align 8
  %208 = getelementptr inbounds i32, i32* %203, i64 %205
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %211 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %210, i32 0, i32 3
  store i32 %209, i32* %211, align 4
  store i32 1, i32* %5, align 4
  br label %212

212:                                              ; preds = %200, %27
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i64, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_state_name(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
