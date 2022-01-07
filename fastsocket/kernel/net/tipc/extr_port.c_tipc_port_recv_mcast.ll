; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_port_recv_mcast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_port.c_tipc_port_recv_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.port_list = type { i32, i32*, %struct.port_list*, i32*, i32 }
%struct.tipc_msg = type { i32 }

@TIPC_CLUSTER_SCOPE = common dso_local global i32 0, align 4
@PLSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to deliver multicast message(s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"LOST:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_port_recv_mcast(%struct.sk_buff* %0, %struct.port_list* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.port_list*, align 8
  %5 = alloca %struct.tipc_msg*, align 8
  %6 = alloca %struct.port_list, align 8
  %7 = alloca %struct.port_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.port_list* %1, %struct.port_list** %4, align 8
  %11 = bitcast %struct.port_list* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 40, i1 false)
  %12 = load %struct.port_list*, %struct.port_list** %4, align 8
  store %struct.port_list* %12, %struct.port_list** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %13)
  store %struct.tipc_msg* %14, %struct.tipc_msg** %5, align 8
  %15 = load %struct.port_list*, %struct.port_list** %4, align 8
  %16 = icmp eq %struct.port_list* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %19 = call i32 @msg_nametype(%struct.tipc_msg* %18)
  %20 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %21 = call i32 @msg_namelower(%struct.tipc_msg* %20)
  %22 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %23 = call i32 @msg_nameupper(%struct.tipc_msg* %22)
  %24 = load i32, i32* @TIPC_CLUSTER_SCOPE, align 4
  %25 = call i32 @tipc_nametbl_mc_translate(i32 %19, i32 %21, i32 %23, i32 %24, %struct.port_list* %6)
  store %struct.port_list* %6, %struct.port_list** %4, align 8
  store %struct.port_list* %6, %struct.port_list** %7, align 8
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.port_list*, %struct.port_list** %4, align 8
  %28 = getelementptr inbounds %struct.port_list, %struct.port_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %95

31:                                               ; preds = %26
  %32 = load %struct.port_list*, %struct.port_list** %4, align 8
  %33 = getelementptr inbounds %struct.port_list, %struct.port_list* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %38 = load %struct.port_list*, %struct.port_list** %4, align 8
  %39 = getelementptr inbounds %struct.port_list, %struct.port_list* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @msg_set_destport(%struct.tipc_msg* %37, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call i32 @tipc_port_recv_msg(%struct.sk_buff* %44)
  %46 = load %struct.port_list*, %struct.port_list** %4, align 8
  %47 = call i32 @tipc_port_list_free(%struct.port_list* %46)
  br label %101

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %91, %48
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.port_list*, %struct.port_list** %4, align 8
  %52 = getelementptr inbounds %struct.port_list, %struct.port_list* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %94

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @PLSIZE, align 4
  %58 = srem i32 %56, %57
  store i32 %58, i32* %9, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = load i32, i32* @GFP_ATOMIC, align 4
  %61 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %59, i32 %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %10, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = icmp eq %struct.sk_buff* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = call i32 @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %67 = call i32 @msg_dbg(%struct.tipc_msg* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %96

68:                                               ; preds = %55
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.port_list*, %struct.port_list** %7, align 8
  %76 = getelementptr inbounds %struct.port_list, %struct.port_list* %75, i32 0, i32 2
  %77 = load %struct.port_list*, %struct.port_list** %76, align 8
  store %struct.port_list* %77, %struct.port_list** %7, align 8
  br label %78

78:                                               ; preds = %74, %71, %68
  %79 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %80 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %79)
  %81 = load %struct.port_list*, %struct.port_list** %7, align 8
  %82 = getelementptr inbounds %struct.port_list, %struct.port_list* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @msg_set_destport(%struct.tipc_msg* %80, i32 %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %90 = call i32 @tipc_port_recv_msg(%struct.sk_buff* %89)
  br label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %49

94:                                               ; preds = %49
  br label %95

95:                                               ; preds = %94, %26
  br label %96

96:                                               ; preds = %95, %64
  %97 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %98 = call i32 @buf_discard(%struct.sk_buff* %97)
  %99 = load %struct.port_list*, %struct.port_list** %4, align 8
  %100 = call i32 @tipc_port_list_free(%struct.port_list* %99)
  br label %101

101:                                              ; preds = %96, %36
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #2

declare dso_local i32 @tipc_nametbl_mc_translate(i32, i32, i32, i32, %struct.port_list*) #2

declare dso_local i32 @msg_nametype(%struct.tipc_msg*) #2

declare dso_local i32 @msg_namelower(%struct.tipc_msg*) #2

declare dso_local i32 @msg_nameupper(%struct.tipc_msg*) #2

declare dso_local i32 @msg_set_destport(%struct.tipc_msg*, i32) #2

declare dso_local i32 @tipc_port_recv_msg(%struct.sk_buff*) #2

declare dso_local i32 @tipc_port_list_free(%struct.port_list*) #2

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #2

declare dso_local i32 @buf_discard(%struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
