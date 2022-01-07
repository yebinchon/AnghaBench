; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sk_clone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sk_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, %struct.TYPE_7__*, i32*, i32, i64, i64, i32*, %struct.sk_filter*, i32, i32*, i64, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.sk_filter = type { i32 }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@af_callback_keys = common dso_local global i64 0, align 8
@af_family_clock_key_strings = common dso_local global i32* null, align 8
@SOCK_BINDPORT_LOCK = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@SOCK_TIMESTAMP = common dso_local global i32 0, align 4
@SOCK_TIMESTAMPING_RX_SOFTWARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @sk_clone(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_filter*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call %struct.sock* @sk_prot_alloc(%struct.TYPE_7__* %9, i32 %10, i64 %13)
  store %struct.sock* %14, %struct.sock** %5, align 8
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = icmp ne %struct.sock* %15, null
  br i1 %16, label %17, label %158

17:                                               ; preds = %2
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call i32 @sock_copy(%struct.sock* %18, %struct.sock* %19)
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = call i32 @sock_net(%struct.sock* %21)
  %23 = call i32 @get_net(i32 %22)
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 23
  %26 = call i32 @sk_node_init(i32* %25)
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = call i32 @sock_lock_init(%struct.sock* %27)
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = call i32 @bh_lock_sock(%struct.sock* %29)
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 22
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 22
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 0, i32* %36, align 8
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = call %struct.TYPE_8__* @sk_extended(%struct.sock* %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 21
  %43 = call i32 @atomic_set(i32* %42, i32 0)
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 20
  %46 = call i32 @atomic_set(i32* %45, i32 1)
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 19
  %49 = call i32 @atomic_set(i32* %48, i32 0)
  %50 = load %struct.sock*, %struct.sock** %5, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 18
  %52 = call i32 @skb_queue_head_init(i32* %51)
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 17
  %55 = call i32 @skb_queue_head_init(i32* %54)
  %56 = load %struct.sock*, %struct.sock** %5, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 15
  %58 = call i32 @rwlock_init(i32* %57)
  %59 = load %struct.sock*, %struct.sock** %5, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 14
  %61 = call i32 @rwlock_init(i32* %60)
  %62 = load %struct.sock*, %struct.sock** %5, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 14
  %64 = load i64, i64* @af_callback_keys, align 8
  %65 = load %struct.sock*, %struct.sock** %5, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %64, %67
  %69 = load i32*, i32** @af_family_clock_key_strings, align 8
  %70 = load %struct.sock*, %struct.sock** %5, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @lockdep_set_class_and_name(i32* %63, i64 %68, i32 %74)
  %76 = load %struct.sock*, %struct.sock** %5, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 13
  store i32* null, i32** %77, align 8
  %78 = load %struct.sock*, %struct.sock** %5, align 8
  %79 = getelementptr inbounds %struct.sock, %struct.sock* %78, i32 0, i32 12
  store i64 0, i64* %79, align 8
  %80 = load %struct.sock*, %struct.sock** %5, align 8
  %81 = getelementptr inbounds %struct.sock, %struct.sock* %80, i32 0, i32 11
  store i64 0, i64* %81, align 8
  %82 = load %struct.sock*, %struct.sock** %5, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 10
  store i32* null, i32** %83, align 8
  %84 = load %struct.sock*, %struct.sock** %3, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SOCK_BINDPORT_LOCK, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = load %struct.sock*, %struct.sock** %5, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load %struct.sock*, %struct.sock** %5, align 8
  %93 = load i32, i32* @SOCK_DONE, align 4
  %94 = call i32 @sock_reset_flag(%struct.sock* %92, i32 %93)
  %95 = load %struct.sock*, %struct.sock** %5, align 8
  %96 = getelementptr inbounds %struct.sock, %struct.sock* %95, i32 0, i32 9
  %97 = call i32 @skb_queue_head_init(i32* %96)
  %98 = load %struct.sock*, %struct.sock** %5, align 8
  %99 = getelementptr inbounds %struct.sock, %struct.sock* %98, i32 0, i32 8
  %100 = load %struct.sk_filter*, %struct.sk_filter** %99, align 8
  store %struct.sk_filter* %100, %struct.sk_filter** %6, align 8
  %101 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %102 = icmp ne %struct.sk_filter* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %17
  %104 = load %struct.sock*, %struct.sock** %5, align 8
  %105 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %106 = call i32 @sk_filter_charge(%struct.sock* %104, %struct.sk_filter* %105)
  br label %107

107:                                              ; preds = %103, %17
  %108 = load %struct.sock*, %struct.sock** %5, align 8
  %109 = call i32 @xfrm_sk_clone_policy(%struct.sock* %108)
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.sock*, %struct.sock** %5, align 8
  %114 = getelementptr inbounds %struct.sock, %struct.sock* %113, i32 0, i32 7
  store i32* null, i32** %114, align 8
  %115 = load %struct.sock*, %struct.sock** %5, align 8
  %116 = call i32 @sk_free(%struct.sock* %115)
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %159

117:                                              ; preds = %107
  %118 = load %struct.sock*, %struct.sock** %5, align 8
  %119 = getelementptr inbounds %struct.sock, %struct.sock* %118, i32 0, i32 6
  store i64 0, i64* %119, align 8
  %120 = load %struct.sock*, %struct.sock** %5, align 8
  %121 = getelementptr inbounds %struct.sock, %struct.sock* %120, i32 0, i32 5
  store i64 0, i64* %121, align 8
  %122 = call i32 (...) @smp_wmb()
  %123 = load %struct.sock*, %struct.sock** %5, align 8
  %124 = getelementptr inbounds %struct.sock, %struct.sock* %123, i32 0, i32 4
  %125 = call i32 @atomic_set(i32* %124, i32 2)
  %126 = load %struct.sock*, %struct.sock** %5, align 8
  %127 = call i32 @sk_refcnt_debug_inc(%struct.sock* %126)
  %128 = load %struct.sock*, %struct.sock** %5, align 8
  %129 = call i32 @sk_set_socket(%struct.sock* %128, i32* null)
  %130 = load %struct.sock*, %struct.sock** %5, align 8
  %131 = getelementptr inbounds %struct.sock, %struct.sock* %130, i32 0, i32 3
  store i32* null, i32** %131, align 8
  %132 = load %struct.sock*, %struct.sock** %5, align 8
  %133 = getelementptr inbounds %struct.sock, %struct.sock* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %117
  %139 = load %struct.sock*, %struct.sock** %5, align 8
  %140 = getelementptr inbounds %struct.sock, %struct.sock* %139, i32 0, i32 2
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @percpu_counter_inc(i64 %143)
  br label %145

145:                                              ; preds = %138, %117
  %146 = load %struct.sock*, %struct.sock** %5, align 8
  %147 = load i32, i32* @SOCK_TIMESTAMP, align 4
  %148 = call i64 @sock_flag(%struct.sock* %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load %struct.sock*, %struct.sock** %5, align 8
  %152 = load i32, i32* @SOCK_TIMESTAMPING_RX_SOFTWARE, align 4
  %153 = call i64 @sock_flag(%struct.sock* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150, %145
  %156 = call i32 (...) @net_enable_timestamp()
  br label %157

157:                                              ; preds = %155, %150
  br label %158

158:                                              ; preds = %157, %2
  br label %159

159:                                              ; preds = %158, %112
  %160 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %160
}

declare dso_local %struct.sock* @sk_prot_alloc(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @sock_copy(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @get_net(i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sk_node_init(i32*) #1

declare dso_local i32 @sock_lock_init(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_8__* @sk_extended(%struct.sock*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @lockdep_set_class_and_name(i32*, i64, i32) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @sk_filter_charge(%struct.sock*, %struct.sk_filter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xfrm_sk_clone_policy(%struct.sock*) #1

declare dso_local i32 @sk_free(%struct.sock*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @sk_refcnt_debug_inc(%struct.sock*) #1

declare dso_local i32 @sk_set_socket(%struct.sock*, i32*) #1

declare dso_local i32 @percpu_counter_inc(i64) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @net_enable_timestamp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
