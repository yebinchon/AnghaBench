; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_handle_out_of_seq_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_handle_out_of_seq_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@LINK_PROTOCOL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"rx OOS msg: seq_no %u, expecting %u (%u)\0A\00", align 1
@STATE_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link*, %struct.sk_buff*)* @link_handle_out_of_seq_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_handle_out_of_seq_msg(%struct.link* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.link*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.link* %0, %struct.link** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call i32 @buf_msg(%struct.sk_buff* %6)
  %8 = call i32 @msg_seqno(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i32 @buf_msg(%struct.sk_buff* %9)
  %11 = call i64 @msg_user(i32 %10)
  %12 = load i64, i64* @LINK_PROTOCOL, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.link*, %struct.link** %3, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @link_recv_proto_msg(%struct.link* %18, %struct.sk_buff* %19)
  br label %84

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.link*, %struct.link** %3, align 8
  %24 = getelementptr inbounds %struct.link, %struct.link* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mod(i32 %25)
  %27 = load %struct.link*, %struct.link** %3, align 8
  %28 = getelementptr inbounds %struct.link, %struct.link* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26, i32 %29)
  %31 = load %struct.link*, %struct.link** %3, align 8
  %32 = getelementptr inbounds %struct.link, %struct.link* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.link*, %struct.link** %3, align 8
  %37 = getelementptr inbounds %struct.link, %struct.link* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mod(i32 %38)
  %40 = call i64 @less(i32 %35, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %21
  %43 = load %struct.link*, %struct.link** %3, align 8
  %44 = getelementptr inbounds %struct.link, %struct.link* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @buf_discard(%struct.sk_buff* %48)
  br label %84

50:                                               ; preds = %21
  %51 = load %struct.link*, %struct.link** %3, align 8
  %52 = getelementptr inbounds %struct.link, %struct.link* %51, i32 0, i32 3
  %53 = load %struct.link*, %struct.link** %3, align 8
  %54 = getelementptr inbounds %struct.link, %struct.link* %53, i32 0, i32 2
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call i64 @tipc_link_defer_pkt(i32* %52, i32* %54, %struct.sk_buff* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %50
  %59 = load %struct.link*, %struct.link** %3, align 8
  %60 = getelementptr inbounds %struct.link, %struct.link* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.link*, %struct.link** %3, align 8
  %64 = getelementptr inbounds %struct.link, %struct.link* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.link*, %struct.link** %3, align 8
  %69 = getelementptr inbounds %struct.link, %struct.link* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = srem i32 %70, 16
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %58
  %74 = load %struct.link*, %struct.link** %3, align 8
  %75 = load i32, i32* @STATE_MSG, align 4
  %76 = call i32 @tipc_link_send_proto_msg(%struct.link* %74, i32 %75, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %77

77:                                               ; preds = %73, %58
  br label %84

78:                                               ; preds = %50
  %79 = load %struct.link*, %struct.link** %3, align 8
  %80 = getelementptr inbounds %struct.link, %struct.link* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %17, %42, %78, %77
  ret void
}

declare dso_local i32 @msg_seqno(i32) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @msg_user(i32) #1

declare dso_local i32 @link_recv_proto_msg(%struct.link*, %struct.sk_buff*) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @mod(i32) #1

declare dso_local i64 @less(i32, i32) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i64 @tipc_link_defer_pkt(i32*, i32*, %struct.sk_buff*) #1

declare dso_local i32 @tipc_link_send_proto_msg(%struct.link*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
