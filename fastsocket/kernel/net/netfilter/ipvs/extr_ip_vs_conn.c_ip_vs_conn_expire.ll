; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, i32, i32, i32, i32*, i32, i32, i64, i32 }

@HZ = common dso_local global i32 0, align 4
@IP_VS_CONN_F_ONE_PACKET = common dso_local global i32 0, align 4
@IP_VS_CONN_F_NO_CPORT = common dso_local global i32 0, align 4
@ip_vs_conn_no_cport_cnt = common dso_local global i32 0, align 4
@ip_vs_conn_count = common dso_local global i32 0, align 4
@ip_vs_conn_cachep = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"delayed: conn->refcnt-1=%d conn->n_control=%d\0A\00", align 1
@ip_vs_sync_state = common dso_local global i32 0, align 4
@IP_VS_STATE_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ip_vs_conn_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_conn_expire(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ip_vs_conn*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.ip_vs_conn*
  store %struct.ip_vs_conn* %5, %struct.ip_vs_conn** %3, align 8
  %6 = load i32, i32* @HZ, align 4
  %7 = mul nsw i32 60, %6
  %8 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %9 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %11 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %10, i32 0, i32 3
  %12 = call i32 @atomic_inc(i32* %11)
  %13 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %14 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %13, i32 0, i32 2
  %15 = call i32 @atomic_read(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %93

18:                                               ; preds = %1
  %19 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %20 = call i32 @ip_vs_conn_unhash(%struct.ip_vs_conn* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %24 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IP_VS_CONN_F_ONE_PACKET, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %93

30:                                               ; preds = %22, %18
  %31 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %32 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %31, i32 0, i32 3
  %33 = call i32 @atomic_read(i32* %32)
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %90

38:                                               ; preds = %30
  %39 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %40 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %39, i32 0, i32 8
  %41 = call i64 @timer_pending(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %45 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %44, i32 0, i32 8
  %46 = call i32 @del_timer(i32* %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %49 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %48, i32 0, i32 7
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %54 = call i32 @ip_vs_control_del(%struct.ip_vs_conn* %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %57 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ip_vs_pe_put(i32 %58)
  %60 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %61 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @kfree(i32 %62)
  %64 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %65 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %55
  %72 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %73 = call i32 @ip_vs_unbind_app(%struct.ip_vs_conn* %72)
  br label %74

74:                                               ; preds = %71, %55
  %75 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %76 = call i32 @ip_vs_unbind_dest(%struct.ip_vs_conn* %75)
  %77 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %78 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IP_VS_CONN_F_NO_CPORT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = call i32 @atomic_dec(i32* @ip_vs_conn_no_cport_cnt)
  br label %85

85:                                               ; preds = %83, %74
  %86 = call i32 @atomic_dec(i32* @ip_vs_conn_count)
  %87 = load i32, i32* @ip_vs_conn_cachep, align 4
  %88 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %89 = call i32 @kmem_cache_free(i32 %87, %struct.ip_vs_conn* %88)
  br label %113

90:                                               ; preds = %30
  %91 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %92 = call i32 @ip_vs_conn_hash(%struct.ip_vs_conn* %91)
  br label %93

93:                                               ; preds = %90, %29, %17
  %94 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %95 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %94, i32 0, i32 3
  %96 = call i32 @atomic_read(i32* %95)
  %97 = sub nsw i32 %96, 1
  %98 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %99 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %98, i32 0, i32 2
  %100 = call i32 @atomic_read(i32* %99)
  %101 = call i32 @IP_VS_DBG(i32 7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %100)
  %102 = load i32, i32* @ip_vs_sync_state, align 4
  %103 = load i32, i32* @IP_VS_STATE_MASTER, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %93
  %107 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %108 = call i32 (...) @sysctl_sync_threshold()
  %109 = call i32 @ip_vs_sync_conn(%struct.ip_vs_conn* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %93
  %111 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %112 = call i32 @ip_vs_conn_put(%struct.ip_vs_conn* %111)
  br label %113

113:                                              ; preds = %110, %85
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ip_vs_conn_unhash(%struct.ip_vs_conn*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @ip_vs_control_del(%struct.ip_vs_conn*) #1

declare dso_local i32 @ip_vs_pe_put(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_vs_unbind_app(%struct.ip_vs_conn*) #1

declare dso_local i32 @ip_vs_unbind_dest(%struct.ip_vs_conn*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ip_vs_conn*) #1

declare dso_local i32 @ip_vs_conn_hash(%struct.ip_vs_conn*) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32, i32) #1

declare dso_local i32 @ip_vs_sync_conn(%struct.ip_vs_conn*, i32) #1

declare dso_local i32 @sysctl_sync_threshold(...) #1

declare dso_local i32 @ip_vs_conn_put(%struct.ip_vs_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
