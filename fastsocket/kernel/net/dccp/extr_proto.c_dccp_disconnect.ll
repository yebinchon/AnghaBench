; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_proto.c_dccp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 (%struct.sock*)*, i64, i32*, i32, i32, i8* }
%struct.inet_connection_sock = type { i32, i64 }
%struct.inet_sock = type { i64, i64 }

@DCCP_CLOSED = common dso_local global i32 0, align 4
@DCCP_LISTEN = common dso_local global i32 0, align 4
@DCCP_RESET_CODE_ABORTED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i8* null, align 8
@DCCP_REQUESTING = common dso_local global i32 0, align 4
@SOCK_BINDADDR_LOCK = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dccp_disconnect(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca %struct.inet_sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %9)
  store %struct.inet_connection_sock* %10, %struct.inet_connection_sock** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.inet_sock* @inet_sk(%struct.sock* %11)
  store %struct.inet_sock* %12, %struct.inet_sock** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @DCCP_CLOSED, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = load i32, i32* @DCCP_CLOSED, align 4
  %22 = call i32 @dccp_set_state(%struct.sock* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @DCCP_LISTEN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = call i32 @inet_csk_listen_stop(%struct.sock* %28)
  br label %51

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @dccp_need_reset(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = load i32, i32* @DCCP_RESET_CODE_ABORTED, align 4
  %37 = call i32 @dccp_send_reset(%struct.sock* %35, i32 %36)
  %38 = load i8*, i8** @ECONNRESET, align 8
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  br label %50

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @DCCP_REQUESTING, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i8*, i8** @ECONNRESET, align 8
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 7
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %34
  br label %51

51:                                               ; preds = %50, %27
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = call i32 @dccp_clear_xmit_timers(%struct.sock* %52)
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 6
  %56 = call i32 @__skb_queue_purge(i32* %55)
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 5
  %59 = call i32 @__skb_queue_purge(i32* %58)
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %51
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @__kfree_skb(i32* %67)
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 4
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %64, %51
  %72 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %73 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.sock*, %struct.sock** %3, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SOCK_BINDADDR_LOCK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %71
  %81 = load %struct.sock*, %struct.sock** %3, align 8
  %82 = call i32 @inet_reset_saddr(%struct.sock* %81)
  br label %83

83:                                               ; preds = %80, %71
  %84 = load %struct.sock*, %struct.sock** %3, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.sock*, %struct.sock** %3, align 8
  %87 = load i32, i32* @SOCK_DONE, align 4
  %88 = call i32 @sock_reset_flag(%struct.sock* %86, i32 %87)
  %89 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %90 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.sock*, %struct.sock** %3, align 8
  %92 = call i32 @inet_csk_delack_init(%struct.sock* %91)
  %93 = load %struct.sock*, %struct.sock** %3, align 8
  %94 = call i32 @__sk_dst_reset(%struct.sock* %93)
  %95 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %96 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %83
  %100 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %101 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  br label %105

105:                                              ; preds = %99, %83
  %106 = phi i1 [ false, %83 ], [ %104, %99 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @WARN_ON(i32 %107)
  %109 = load %struct.sock*, %struct.sock** %3, align 8
  %110 = getelementptr inbounds %struct.sock, %struct.sock* %109, i32 0, i32 2
  %111 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %110, align 8
  %112 = load %struct.sock*, %struct.sock** %3, align 8
  %113 = call i32 %111(%struct.sock* %112)
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @dccp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_listen_stop(%struct.sock*) #1

declare dso_local i64 @dccp_need_reset(i32) #1

declare dso_local i32 @dccp_send_reset(%struct.sock*, i32) #1

declare dso_local i32 @dccp_clear_xmit_timers(%struct.sock*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @__kfree_skb(i32*) #1

declare dso_local i32 @inet_reset_saddr(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_delack_init(%struct.sock*) #1

declare dso_local i32 @__sk_dst_reset(%struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
