; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_set_tcp_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_proto_tcp.c_set_tcp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.ip_vs_protocol = type { i32*, i32 }
%struct.ip_vs_conn = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.ip_vs_dest* }
%struct.ip_vs_dest = type { i32, i32 }
%struct.tcphdr = type { i64, i64, i64, i64 }

@IP_VS_TCP_S_CLOSE = common dso_local global i32 0, align 4
@tcp_state_off = common dso_local global i32* null, align 8
@IP_VS_CONN_F_NOOUTPUT = common dso_local global i32 0, align 4
@TCP_DIR_OUTPUT = common dso_local global i32 0, align 4
@TCP_DIR_INPUT_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"tcp_state_idx=%d!!!\0A\00", align 1
@tcp_state_table = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"%s %s [%c%c%c%c] %s:%d->%s:%d state: %s->%s conn->refcnt:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"output \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"input \00", align 1
@IP_VS_CONN_F_INACTIVE = common dso_local global i32 0, align 4
@IP_VS_TCP_S_ESTABLISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_protocol*, %struct.ip_vs_conn*, i32, %struct.tcphdr*)* @set_tcp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tcp_state(%struct.ip_vs_protocol* %0, %struct.ip_vs_conn* %1, i32 %2, %struct.tcphdr* %3) #0 {
  %5 = alloca %struct.ip_vs_protocol*, align 8
  %6 = alloca %struct.ip_vs_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ip_vs_dest*, align 8
  store %struct.ip_vs_protocol* %0, %struct.ip_vs_protocol** %5, align 8
  store %struct.ip_vs_conn* %1, %struct.ip_vs_conn** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.tcphdr* %3, %struct.tcphdr** %8, align 8
  %13 = load i32, i32* @IP_VS_TCP_S_CLOSE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32*, i32** @tcp_state_off, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %20 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IP_VS_CONN_F_NOOUTPUT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @TCP_DIR_OUTPUT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* @IP_VS_CONN_F_NOOUTPUT, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %33 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @TCP_DIR_INPUT_ONLY, align 4
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %36, %29
  br label %39

39:                                               ; preds = %38, %4
  %40 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %41 = call i32 @tcp_state_idx(%struct.tcphdr* %40)
  store i32 %41, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @IP_VS_DBG(i32 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %60

46:                                               ; preds = %39
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcp_state_table, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %56 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %46, %43
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %64 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %190

67:                                               ; preds = %60
  %68 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %69 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %68, i32 0, i32 9
  %70 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %69, align 8
  store %struct.ip_vs_dest* %70, %struct.ip_vs_dest** %12, align 8
  %71 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %5, align 8
  %72 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @TCP_DIR_OUTPUT, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %79 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %80 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 83, i32 46
  %85 = trunc i32 %84 to i8
  %86 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %87 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 70, i32 46
  %92 = sitofp i32 %91 to float
  %93 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %94 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 65, i32 46
  %99 = trunc i32 %98 to i8
  %100 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %101 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 82, i32 46
  %106 = trunc i32 %105 to i8
  %107 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %108 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %111 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %110, i32 0, i32 8
  %112 = call i32 @IP_VS_DBG_ADDR(i32 %109, i32* %111)
  %113 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %114 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ntohs(i32 %115)
  %117 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %118 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %121 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %120, i32 0, i32 5
  %122 = call i32 @IP_VS_DBG_ADDR(i32 %119, i32* %121)
  %123 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %124 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ntohs(i32 %125)
  %127 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %128 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 @tcp_state_name(i32 %130)
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @tcp_state_name(i32 %132)
  %134 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %135 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %134, i32 0, i32 3
  %136 = call i32 @atomic_read(i32* %135)
  %137 = call i32 @IP_VS_DBG_BUF(i32 8, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %73, i8* %78, i8 signext %85, float %92, i8 signext %99, i8 signext %106, i32 %112, i32 %116, i32 %122, i32 %126, i32 %131, i32 %133, i32 %136)
  %138 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %139 = icmp ne %struct.ip_vs_dest* %138, null
  br i1 %139, label %140, label %189

140:                                              ; preds = %67
  %141 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %142 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %140
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @IP_VS_TCP_S_ESTABLISHED, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %147
  %152 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %153 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %152, i32 0, i32 1
  %154 = call i32 @atomic_dec(i32* %153)
  %155 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %156 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %155, i32 0, i32 0
  %157 = call i32 @atomic_inc(i32* %156)
  %158 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %159 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %160 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %188

163:                                              ; preds = %147, %140
  %164 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %165 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %187

170:                                              ; preds = %163
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @IP_VS_TCP_S_ESTABLISHED, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %170
  %175 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %176 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %175, i32 0, i32 1
  %177 = call i32 @atomic_inc(i32* %176)
  %178 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %12, align 8
  %179 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %178, i32 0, i32 0
  %180 = call i32 @atomic_dec(i32* %179)
  %181 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %182 = xor i32 %181, -1
  %183 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %184 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, %182
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %174, %170, %163
  br label %188

188:                                              ; preds = %187, %151
  br label %189

189:                                              ; preds = %188, %67
  br label %190

190:                                              ; preds = %189, %60
  %191 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %5, align 8
  %192 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %197 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %196, i32 0, i32 1
  store i64 %195, i64* %197, align 8
  %198 = getelementptr inbounds i32, i32* %193, i64 %195
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %6, align 8
  %201 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 8
  ret void
}

declare dso_local i32 @tcp_state_idx(%struct.tcphdr*) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i8*, i8 signext, float, i8 signext, i8 signext, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @tcp_state_name(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
