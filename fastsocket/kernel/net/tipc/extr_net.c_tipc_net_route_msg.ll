; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_net.c_tipc_net_route_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_net.c_tipc_net_route_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"NET>DISC>:\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"NET>REJ>:\00", align 1
@TIPC_ERR_NO_PORT = common dso_local global i32 0, align 4
@TIPC_ERR_NO_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"tipc_net->rout: \00", align 1
@tipc_own_addr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"DROP/NET/<REC<\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"NET>SEND>: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_net_route_msg(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.tipc_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = icmp ne %struct.sk_buff* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %106

8:                                                ; preds = %1
  %9 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %10 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %9)
  store %struct.tipc_msg* %10, %struct.tipc_msg** %3, align 8
  %11 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %12 = call i32 @msg_incr_reroute_cnt(%struct.tipc_msg* %11)
  %13 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %14 = call i32 @msg_reroute_cnt(%struct.tipc_msg* %13)
  %15 = icmp sgt i32 %14, 6
  br i1 %15, label %16, label %40

16:                                               ; preds = %8
  %17 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %18 = call i64 @msg_errcode(%struct.tipc_msg* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %22 = call i32 @msg_dbg(%struct.tipc_msg* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = call i32 @buf_discard(%struct.sk_buff* %23)
  br label %39

25:                                               ; preds = %16
  %26 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %27 = call i32 @msg_dbg(%struct.tipc_msg* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %29 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %30 = call i64 @msg_destport(%struct.tipc_msg* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @TIPC_ERR_NO_PORT, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @TIPC_ERR_NO_NAME, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call i32 @tipc_reject_msg(%struct.sk_buff* %28, i32 %37)
  br label %39

39:                                               ; preds = %36, %20
  br label %106

40:                                               ; preds = %8
  %41 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %42 = call i32 @msg_dbg(%struct.tipc_msg* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %44 = call i64 @msg_short(%struct.tipc_msg* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @tipc_own_addr, align 4
  br label %51

48:                                               ; preds = %40
  %49 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %50 = call i32 @msg_destnode(%struct.tipc_msg* %49)
  br label %51

51:                                               ; preds = %48, %46
  %52 = phi i32 [ %47, %46 ], [ %50, %48 ]
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @tipc_own_addr, align 4
  %55 = call i64 @in_scope(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %98

57:                                               ; preds = %51
  %58 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %59 = call i64 @msg_isdata(%struct.tipc_msg* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %63 = call i64 @msg_mcast(%struct.tipc_msg* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %67 = call i32 @tipc_port_recv_mcast(%struct.sk_buff* %66, i32* null)
  br label %79

68:                                               ; preds = %61
  %69 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %70 = call i64 @msg_destport(%struct.tipc_msg* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %74 = call i32 @tipc_port_recv_msg(%struct.sk_buff* %73)
  br label %78

75:                                               ; preds = %68
  %76 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %77 = call i32 @net_route_named_msg(%struct.sk_buff* %76)
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %65
  br label %106

80:                                               ; preds = %57
  %81 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %82 = call i32 @msg_user(%struct.tipc_msg* %81)
  switch i32 %82, label %92 [
    i32 128, label %83
    i32 129, label %86
    i32 130, label %89
  ]

83:                                               ; preds = %80
  %84 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %85 = call i32 @tipc_cltr_recv_routing_table(%struct.sk_buff* %84)
  br label %97

86:                                               ; preds = %80
  %87 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %88 = call i32 @tipc_named_recv(%struct.sk_buff* %87)
  br label %97

89:                                               ; preds = %80
  %90 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %91 = call i32 @tipc_port_recv_proto_msg(%struct.sk_buff* %90)
  br label %97

92:                                               ; preds = %80
  %93 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %94 = call i32 @msg_dbg(%struct.tipc_msg* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %96 = call i32 @buf_discard(%struct.sk_buff* %95)
  br label %97

97:                                               ; preds = %92, %89, %86, %83
  br label %106

98:                                               ; preds = %51
  %99 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %100 = call i32 @msg_dbg(%struct.tipc_msg* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %101 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.tipc_msg*, %struct.tipc_msg** %3, align 8
  %104 = call i32 @msg_link_selector(%struct.tipc_msg* %103)
  %105 = call i32 @tipc_link_send(%struct.sk_buff* %101, i32 %102, i32 %104)
  br label %106

106:                                              ; preds = %98, %97, %79, %39, %7
  ret void
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_incr_reroute_cnt(%struct.tipc_msg*) #1

declare dso_local i32 @msg_reroute_cnt(%struct.tipc_msg*) #1

declare dso_local i64 @msg_errcode(%struct.tipc_msg*) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i32 @tipc_reject_msg(%struct.sk_buff*, i32) #1

declare dso_local i64 @msg_destport(%struct.tipc_msg*) #1

declare dso_local i64 @msg_short(%struct.tipc_msg*) #1

declare dso_local i32 @msg_destnode(%struct.tipc_msg*) #1

declare dso_local i64 @in_scope(i32, i32) #1

declare dso_local i64 @msg_isdata(%struct.tipc_msg*) #1

declare dso_local i64 @msg_mcast(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_port_recv_mcast(%struct.sk_buff*, i32*) #1

declare dso_local i32 @tipc_port_recv_msg(%struct.sk_buff*) #1

declare dso_local i32 @net_route_named_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_user(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_cltr_recv_routing_table(%struct.sk_buff*) #1

declare dso_local i32 @tipc_named_recv(%struct.sk_buff*) #1

declare dso_local i32 @tipc_port_recv_proto_msg(%struct.sk_buff*) #1

declare dso_local i32 @tipc_link_send(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @msg_link_selector(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
