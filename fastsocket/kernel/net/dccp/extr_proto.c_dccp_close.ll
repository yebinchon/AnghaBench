; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.sock*, i32)* }
%struct.dccp_sock = type { i32 }
%struct.sk_buff = type { i64 }

@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@DCCP_LISTEN = common dso_local global i32 0, align 4
@DCCP_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DCCP: ABORT -- %u bytes unread\0A\00", align 1
@DCCP_RESET_CODE_ABORTED = common dso_local global i32 0, align 4
@SOCK_LINGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_close(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dccp_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %9)
  store %struct.dccp_sock* %10, %struct.dccp_sock** %5, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i32 @lock_sock(%struct.sock* %11)
  %13 = load i32, i32* @SHUTDOWN_MASK, align 4
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DCCP_LISTEN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = load i32, i32* @DCCP_CLOSED, align 4
  %24 = call i32 @dccp_set_state(%struct.sock* %22, i32 %23)
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = call i32 @inet_csk_listen_stop(%struct.sock* %25)
  br label %90

27:                                               ; preds = %2
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %30 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %29, i32 0, i32 0
  %31 = call i32 @sk_stop_timer(%struct.sock* %28, i32* %30)
  br label %32

32:                                               ; preds = %37, %27
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 3
  %35 = call %struct.sk_buff* @__skb_dequeue(i32* %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %6, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i32 @__kfree_skb(%struct.sk_buff* %43)
  br label %32

45:                                               ; preds = %32
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = load i32, i32* @DCCP_RESET_CODE_ABORTED, align 4
  %53 = call i32 @dccp_send_reset(%struct.sock* %51, i32 %52)
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = load i32, i32* @DCCP_CLOSED, align 4
  %56 = call i32 @dccp_set_state(%struct.sock* %54, i32 %55)
  br label %86

57:                                               ; preds = %45
  %58 = load %struct.sock*, %struct.sock** %3, align 8
  %59 = load i32, i32* @SOCK_LINGER, align 4
  %60 = call i64 @sock_flag(%struct.sock* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.sock*, %struct.sock** %3, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = load %struct.sock*, %struct.sock** %3, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %71, align 8
  %73 = load %struct.sock*, %struct.sock** %3, align 8
  %74 = call i32 %72(%struct.sock* %73, i32 0)
  br label %85

75:                                               ; preds = %62, %57
  %76 = load %struct.sock*, %struct.sock** %3, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @DCCP_CLOSED, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.sock*, %struct.sock** %3, align 8
  %83 = call i32 @dccp_terminate_connection(%struct.sock* %82)
  br label %84

84:                                               ; preds = %81, %75
  br label %85

85:                                               ; preds = %84, %67
  br label %86

86:                                               ; preds = %85, %48
  %87 = load %struct.sock*, %struct.sock** %3, align 8
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @sk_stream_wait_close(%struct.sock* %87, i64 %88)
  br label %90

90:                                               ; preds = %86, %21
  %91 = load %struct.sock*, %struct.sock** %3, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %8, align 4
  %94 = load %struct.sock*, %struct.sock** %3, align 8
  %95 = call i32 @sock_hold(%struct.sock* %94)
  %96 = load %struct.sock*, %struct.sock** %3, align 8
  %97 = call i32 @sock_orphan(%struct.sock* %96)
  %98 = load %struct.sock*, %struct.sock** %3, align 8
  %99 = call i32 @release_sock(%struct.sock* %98)
  %100 = call i32 (...) @local_bh_disable()
  %101 = load %struct.sock*, %struct.sock** %3, align 8
  %102 = call i32 @bh_lock_sock(%struct.sock* %101)
  %103 = load %struct.sock*, %struct.sock** %3, align 8
  %104 = call i32 @sock_owned_by_user(%struct.sock* %103)
  %105 = call i32 @WARN_ON(i32 %104)
  %106 = load %struct.sock*, %struct.sock** %3, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @percpu_counter_inc(i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @DCCP_CLOSED, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %90
  %116 = load %struct.sock*, %struct.sock** %3, align 8
  %117 = getelementptr inbounds %struct.sock, %struct.sock* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @DCCP_CLOSED, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %132

122:                                              ; preds = %115, %90
  %123 = load %struct.sock*, %struct.sock** %3, align 8
  %124 = getelementptr inbounds %struct.sock, %struct.sock* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @DCCP_CLOSED, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.sock*, %struct.sock** %3, align 8
  %130 = call i32 @inet_csk_destroy_sock(%struct.sock* %129)
  br label %131

131:                                              ; preds = %128, %122
  br label %132

132:                                              ; preds = %131, %121
  %133 = load %struct.sock*, %struct.sock** %3, align 8
  %134 = call i32 @bh_unlock_sock(%struct.sock* %133)
  %135 = call i32 (...) @local_bh_enable()
  %136 = load %struct.sock*, %struct.sock** %3, align 8
  %137 = call i32 @sock_put(%struct.sock* %136)
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @dccp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_listen_stop(%struct.sock*) #1

declare dso_local i32 @sk_stop_timer(%struct.sock*, i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @DCCP_WARN(i8*, i64) #1

declare dso_local i32 @dccp_send_reset(%struct.sock*, i32) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @dccp_terminate_connection(%struct.sock*) #1

declare dso_local i32 @sk_stream_wait_close(%struct.sock*, i64) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @percpu_counter_inc(i32) #1

declare dso_local i32 @inet_csk_destroy_sock(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
