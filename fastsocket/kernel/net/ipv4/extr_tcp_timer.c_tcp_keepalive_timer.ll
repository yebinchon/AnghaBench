; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_timer.c_tcp_keepalive_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_timer.c_tcp_keepalive_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.inet_connection_sock = type { i64 }
%struct.tcp_sock = type { i64, i64 }
%struct.TYPE_2__ = type { i64 }

@HZ = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@TCP_FIN_WAIT2 = common dso_local global i64 0, align 8
@SOCK_DEAD = common dso_local global i32 0, align 4
@TCP_TIMEWAIT_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SOCK_KEEPOPEN = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@TCP_RESOURCE_PROBE_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @tcp_keepalive_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_keepalive_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.inet_connection_sock*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.sock*
  store %struct.sock* %10, %struct.sock** %3, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %11)
  store %struct.inet_connection_sock* %12, %struct.inet_connection_sock** %4, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %13)
  store %struct.tcp_sock* %14, %struct.tcp_sock** %5, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call i32 @bh_lock_sock(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call i64 @sock_owned_by_user(%struct.sock* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = load i32, i32* @HZ, align 4
  %23 = sdiv i32 %22, 20
  %24 = sext i32 %23 to i64
  %25 = call i32 @inet_csk_reset_keepalive_timer(%struct.sock* %21, i64 %24)
  br label %162

26:                                               ; preds = %1
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TCP_LISTEN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = call i32 @tcp_synack_timer(%struct.sock* %33)
  br label %162

35:                                               ; preds = %26
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TCP_FIN_WAIT2, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %35
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = load i32, i32* @SOCK_DEAD, align 4
  %44 = call i64 @sock_flag(%struct.sock* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %41
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = call i32 @tcp_fin_time(%struct.sock* %52)
  %54 = load i32, i32* @TCP_TIMEWAIT_LEN, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = load i64, i64* @TCP_FIN_WAIT2, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @tcp_time_wait(%struct.sock* %59, i64 %60, i32 %61)
  br label %162

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %46
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = load i32, i32* @GFP_ATOMIC, align 4
  %67 = call i32 @tcp_send_active_reset(%struct.sock* %65, i32 %66)
  br label %159

68:                                               ; preds = %41, %35
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = load i32, i32* @SOCK_KEEPOPEN, align 4
  %71 = call i64 @sock_flag(%struct.sock* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.sock*, %struct.sock** %3, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TCP_CLOSE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %68
  br label %162

80:                                               ; preds = %73
  %81 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %82 = call i64 @keepalive_time_when(%struct.tcp_sock* %81)
  store i64 %82, i64* %6, align 8
  %83 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %84 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %80
  %88 = load %struct.sock*, %struct.sock** %3, align 8
  %89 = call i64 @tcp_send_head(%struct.sock* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87, %80
  br label %155

92:                                               ; preds = %87
  %93 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %94 = call i64 @keepalive_time_elapsed(%struct.tcp_sock* %93)
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* %6, align 8
  %96 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %97 = call i64 @keepalive_time_when(%struct.tcp_sock* %96)
  %98 = icmp sge i64 %95, %97
  br i1 %98, label %99, label %145

99:                                               ; preds = %92
  %100 = load %struct.sock*, %struct.sock** %3, align 8
  %101 = call %struct.TYPE_2__* @sk_extended(%struct.sock* %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %8, align 8
  %104 = load i64, i64* %8, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* %8, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %112 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %110, %106, %99
  %116 = load i64, i64* %8, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %120 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %123 = call i64 @keepalive_probes(%struct.tcp_sock* %122)
  %124 = icmp sge i64 %121, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %118, %110
  %126 = load %struct.sock*, %struct.sock** %3, align 8
  %127 = load i32, i32* @GFP_ATOMIC, align 4
  %128 = call i32 @tcp_send_active_reset(%struct.sock* %126, i32 %127)
  %129 = load %struct.sock*, %struct.sock** %3, align 8
  %130 = call i32 @tcp_write_err(%struct.sock* %129)
  br label %162

131:                                              ; preds = %118, %115
  %132 = load %struct.sock*, %struct.sock** %3, align 8
  %133 = call i64 @tcp_write_wakeup(%struct.sock* %132)
  %134 = icmp sle i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %137 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %137, align 8
  %140 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %141 = call i64 @keepalive_intvl_when(%struct.tcp_sock* %140)
  store i64 %141, i64* %6, align 8
  br label %144

142:                                              ; preds = %131
  %143 = load i64, i64* @TCP_RESOURCE_PROBE_INTERVAL, align 8
  store i64 %143, i64* %6, align 8
  br label %144

144:                                              ; preds = %142, %135
  br label %150

145:                                              ; preds = %92
  %146 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %147 = call i64 @keepalive_time_when(%struct.tcp_sock* %146)
  %148 = load i64, i64* %6, align 8
  %149 = sub nsw i64 %147, %148
  store i64 %149, i64* %6, align 8
  br label %150

150:                                              ; preds = %145, %144
  %151 = load %struct.sock*, %struct.sock** %3, align 8
  %152 = call i32 @TCP_CHECK_TIMER(%struct.sock* %151)
  %153 = load %struct.sock*, %struct.sock** %3, align 8
  %154 = call i32 @sk_mem_reclaim(%struct.sock* %153)
  br label %155

155:                                              ; preds = %150, %91
  %156 = load %struct.sock*, %struct.sock** %3, align 8
  %157 = load i64, i64* %6, align 8
  %158 = call i32 @inet_csk_reset_keepalive_timer(%struct.sock* %156, i64 %157)
  br label %162

159:                                              ; preds = %64
  %160 = load %struct.sock*, %struct.sock** %3, align 8
  %161 = call i32 @tcp_done(%struct.sock* %160)
  br label %162

162:                                              ; preds = %159, %155, %125, %79, %58, %32, %20
  %163 = load %struct.sock*, %struct.sock** %3, align 8
  %164 = call i32 @bh_unlock_sock(%struct.sock* %163)
  %165 = load %struct.sock*, %struct.sock** %3, align 8
  %166 = call i32 @sock_put(%struct.sock* %165)
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @inet_csk_reset_keepalive_timer(%struct.sock*, i64) #1

declare dso_local i32 @tcp_synack_timer(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @tcp_fin_time(%struct.sock*) #1

declare dso_local i32 @tcp_time_wait(%struct.sock*, i64, i32) #1

declare dso_local i32 @tcp_send_active_reset(%struct.sock*, i32) #1

declare dso_local i64 @keepalive_time_when(%struct.tcp_sock*) #1

declare dso_local i64 @tcp_send_head(%struct.sock*) #1

declare dso_local i64 @keepalive_time_elapsed(%struct.tcp_sock*) #1

declare dso_local %struct.TYPE_2__* @sk_extended(%struct.sock*) #1

declare dso_local i64 @keepalive_probes(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_write_err(%struct.sock*) #1

declare dso_local i64 @tcp_write_wakeup(%struct.sock*) #1

declare dso_local i64 @keepalive_intvl_when(%struct.tcp_sock*) #1

declare dso_local i32 @TCP_CHECK_TIMER(%struct.sock*) #1

declare dso_local i32 @sk_mem_reclaim(%struct.sock*) #1

declare dso_local i32 @tcp_done(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
