; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_recv.c_rds_recv_incoming.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_recv.c_rds_recv_incoming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i64, i32 }
%struct.rds_incoming = type { i32, %struct.TYPE_2__, %struct.rds_connection*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32 }
%struct.rds_sock = type { i32, i32 }
%struct.sock = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"conn %p next %llu inc %p seq %llu len %u sport %u dport %u flags 0x%x rx_jiffies %lu\0A\00", align 1
@RDS_FLAG_RETRANSMITTED = common dso_local global i32 0, align 4
@s_recv_drop_old_seq = common dso_local global i32 0, align 4
@rds_sysctl_ping_enable = common dso_local global i64 0, align 8
@s_recv_ping = common dso_local global i32 0, align 4
@s_recv_drop_no_sock = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"adding inc %p to rs %p's recv queue\0A\00", align 1
@s_recv_queued = common dso_local global i32 0, align 4
@s_recv_drop_dead_sock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_recv_incoming(%struct.rds_connection* %0, i32 %1, i32 %2, %struct.rds_incoming* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.rds_connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rds_incoming*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rds_sock*, align 8
  %14 = alloca %struct.sock*, align 8
  %15 = alloca i64, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.rds_incoming* %3, %struct.rds_incoming** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store %struct.rds_sock* null, %struct.rds_sock** %13, align 8
  %16 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %17 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %18 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %17, i32 0, i32 2
  store %struct.rds_connection* %16, %struct.rds_connection** %18, align 8
  %19 = load i32, i32* @jiffies, align 4
  %20 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %21 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %23 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %24 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %27 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %28 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @be64_to_cpu(i32 %30)
  %32 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %33 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  %37 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %38 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @be16_to_cpu(i64 %40)
  %42 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %43 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @be16_to_cpu(i64 %45)
  %47 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %48 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %52 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), %struct.rds_connection* %22, i64 %25, %struct.rds_incoming* %26, i64 %31, i32 %36, i32 %41, i32 %46, i32 %50, i32 %53)
  %55 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %56 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @be64_to_cpu(i32 %58)
  %60 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %61 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %6
  %65 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %66 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RDS_FLAG_RETRANSMITTED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @s_recv_drop_old_seq, align 4
  %74 = call i32 @rds_stats_inc(i32 %73)
  br label %167

75:                                               ; preds = %64, %6
  %76 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %77 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @be64_to_cpu(i32 %79)
  %81 = add nsw i64 %80, 1
  %82 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %83 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* @rds_sysctl_ping_enable, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %75
  %87 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %88 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load i32, i32* @s_recv_ping, align 4
  %94 = call i32 @rds_stats_inc(i32 %93)
  %95 = load %struct.rds_connection*, %struct.rds_connection** %7, align 8
  %96 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %97 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @rds_send_pong(%struct.rds_connection* %95, i64 %99)
  br label %167

101:                                              ; preds = %86, %75
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %104 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call %struct.rds_sock* @rds_find_bound(i32 %102, i64 %106)
  store %struct.rds_sock* %107, %struct.rds_sock** %13, align 8
  %108 = load %struct.rds_sock*, %struct.rds_sock** %13, align 8
  %109 = icmp ne %struct.rds_sock* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %101
  %111 = load i32, i32* @s_recv_drop_no_sock, align 4
  %112 = call i32 @rds_stats_inc(i32 %111)
  br label %167

113:                                              ; preds = %101
  %114 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %115 = load %struct.rds_sock*, %struct.rds_sock** %13, align 8
  %116 = call i32 @rds_recv_incoming_exthdrs(%struct.rds_incoming* %114, %struct.rds_sock* %115)
  %117 = load %struct.rds_sock*, %struct.rds_sock** %13, align 8
  %118 = call %struct.sock* @rds_rs_to_sk(%struct.rds_sock* %117)
  store %struct.sock* %118, %struct.sock** %14, align 8
  %119 = load %struct.rds_sock*, %struct.rds_sock** %13, align 8
  %120 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %119, i32 0, i32 0
  %121 = load i64, i64* %15, align 8
  %122 = call i32 @write_lock_irqsave(i32* %120, i64 %121)
  %123 = load %struct.sock*, %struct.sock** %14, align 8
  %124 = load i32, i32* @SOCK_DEAD, align 4
  %125 = call i32 @sock_flag(%struct.sock* %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %159, label %127

127:                                              ; preds = %113
  %128 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %129 = load %struct.rds_sock*, %struct.rds_sock** %13, align 8
  %130 = call i32 (i8*, ...) @rdsdebug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.rds_incoming* %128, %struct.rds_sock* %129)
  %131 = load i32, i32* @s_recv_queued, align 4
  %132 = call i32 @rds_stats_inc(i32 %131)
  %133 = load %struct.rds_sock*, %struct.rds_sock** %13, align 8
  %134 = load %struct.sock*, %struct.sock** %14, align 8
  %135 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %136 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %135, i32 0, i32 2
  %137 = load %struct.rds_connection*, %struct.rds_connection** %136, align 8
  %138 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %141 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @be32_to_cpu(i32 %143)
  %145 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %146 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @rds_recv_rcvbuf_delta(%struct.rds_sock* %133, %struct.sock* %134, i32 %139, i32 %144, i64 %148)
  %150 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %151 = call i32 @rds_inc_addref(%struct.rds_incoming* %150)
  %152 = load %struct.rds_incoming*, %struct.rds_incoming** %10, align 8
  %153 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %152, i32 0, i32 0
  %154 = load %struct.rds_sock*, %struct.rds_sock** %13, align 8
  %155 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %154, i32 0, i32 1
  %156 = call i32 @list_add_tail(i32* %153, i32* %155)
  %157 = load %struct.sock*, %struct.sock** %14, align 8
  %158 = call i32 @__rds_wake_sk_sleep(%struct.sock* %157)
  br label %162

159:                                              ; preds = %113
  %160 = load i32, i32* @s_recv_drop_dead_sock, align 4
  %161 = call i32 @rds_stats_inc(i32 %160)
  br label %162

162:                                              ; preds = %159, %127
  %163 = load %struct.rds_sock*, %struct.rds_sock** %13, align 8
  %164 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %163, i32 0, i32 0
  %165 = load i64, i64* %15, align 8
  %166 = call i32 @write_unlock_irqrestore(i32* %164, i64 %165)
  br label %167

167:                                              ; preds = %162, %110, %92, %72
  %168 = load %struct.rds_sock*, %struct.rds_sock** %13, align 8
  %169 = icmp ne %struct.rds_sock* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load %struct.rds_sock*, %struct.rds_sock** %13, align 8
  %172 = call i32 @rds_sock_put(%struct.rds_sock* %171)
  br label %173

173:                                              ; preds = %170, %167
  ret void
}

declare dso_local i32 @rdsdebug(i8*, ...) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i32 @rds_stats_inc(i32) #1

declare dso_local i32 @rds_send_pong(%struct.rds_connection*, i64) #1

declare dso_local %struct.rds_sock* @rds_find_bound(i32, i64) #1

declare dso_local i32 @rds_recv_incoming_exthdrs(%struct.rds_incoming*, %struct.rds_sock*) #1

declare dso_local %struct.sock* @rds_rs_to_sk(%struct.rds_sock*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @rds_recv_rcvbuf_delta(%struct.rds_sock*, %struct.sock*, i32, i32, i64) #1

declare dso_local i32 @rds_inc_addref(%struct.rds_incoming*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @__rds_wake_sk_sleep(%struct.sock*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rds_sock_put(%struct.rds_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
