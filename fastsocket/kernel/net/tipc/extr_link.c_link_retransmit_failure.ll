; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_retransmit_failure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_retransmit_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i64, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { %struct.tipc_node* }
%struct.tipc_node = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"Retransmission failure on link <%s>\0A\00", align 1
@TIPC_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c">RETR-FAIL>\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Resetting link\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Msg seq number: %u,  \00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Outstanding acks: %lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Multicast link info for %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Supported: %d,  \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Acked: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Last in: %u,  \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Gap after: %u,  \00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Gap to: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Nack sync: %u\0A\0A\00", align 1
@link_reset_all = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link*, %struct.sk_buff*)* @link_retransmit_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_retransmit_failure(%struct.link* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.link*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tipc_msg*, align 8
  %6 = alloca %struct.tipc_node*, align 8
  %7 = alloca [16 x i8], align 16
  store %struct.link* %0, %struct.link** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %8)
  store %struct.tipc_msg* %9, %struct.tipc_msg** %5, align 8
  %10 = load %struct.link*, %struct.link** %3, align 8
  %11 = getelementptr inbounds %struct.link, %struct.link* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @TIPC_OUTPUT, align 4
  %15 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %16 = call i32 @tipc_msg_dbg(i32 %14, %struct.tipc_msg* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.link*, %struct.link** %3, align 8
  %18 = getelementptr inbounds %struct.link, %struct.link* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.link*, %struct.link** %3, align 8
  %23 = load i32, i32* @TIPC_OUTPUT, align 4
  %24 = call i32 @link_print(%struct.link* %22, i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.link*, %struct.link** %3, align 8
  %26 = call i32 @tipc_link_reset(%struct.link* %25)
  br label %99

27:                                               ; preds = %2
  %28 = load i32, i32* @TIPC_OUTPUT, align 4
  %29 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %30 = call i8* @msg_seqno(%struct.tipc_msg* %29)
  %31 = call i32 (i32, i8*, ...) @tipc_printf(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @TIPC_OUTPUT, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call %struct.TYPE_6__* @TIPC_SKB_CB(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i32, i8*, ...) @tipc_printf(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %36)
  %38 = load %struct.link*, %struct.link** %3, align 8
  %39 = getelementptr inbounds %struct.link, %struct.link* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.tipc_node*, %struct.tipc_node** %41, align 8
  store %struct.tipc_node* %42, %struct.tipc_node** %6, align 8
  %43 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %44 = call i32 @tipc_node_lock(%struct.tipc_node* %43)
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %46 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %47 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @addr_string_fill(i8* %45, i64 %48)
  %50 = load i32, i32* @TIPC_OUTPUT, align 4
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %52 = call i32 (i32, i8*, ...) @tipc_printf(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @TIPC_OUTPUT, align 4
  %54 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %55 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32, i8*, ...) @tipc_printf(i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* @TIPC_OUTPUT, align 4
  %60 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %61 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32, i8*, ...) @tipc_printf(i32 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @TIPC_OUTPUT, align 4
  %66 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %67 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i32, i8*, ...) @tipc_printf(i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* @TIPC_OUTPUT, align 4
  %72 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %73 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i32, i8*, ...) @tipc_printf(i32 %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* @TIPC_OUTPUT, align 4
  %78 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %79 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, i8*, ...) @tipc_printf(i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* @TIPC_OUTPUT, align 4
  %84 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %85 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 5
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i32, i8*, ...) @tipc_printf(i32 %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %87)
  %89 = load i64, i64* @link_reset_all, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %92 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @tipc_k_signal(i32 %90, i64 %93)
  %95 = load %struct.tipc_node*, %struct.tipc_node** %6, align 8
  %96 = call i32 @tipc_node_unlock(%struct.tipc_node* %95)
  %97 = load %struct.link*, %struct.link** %3, align 8
  %98 = getelementptr inbounds %struct.link, %struct.link* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %27, %21
  ret void
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @tipc_msg_dbg(i32, %struct.tipc_msg*, i8*) #1

declare dso_local i32 @link_print(%struct.link*, i32, i8*) #1

declare dso_local i32 @tipc_link_reset(%struct.link*) #1

declare dso_local i32 @tipc_printf(i32, i8*, ...) #1

declare dso_local i8* @msg_seqno(%struct.tipc_msg*) #1

declare dso_local %struct.TYPE_6__* @TIPC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tipc_node_lock(%struct.tipc_node*) #1

declare dso_local i32 @addr_string_fill(i8*, i64) #1

declare dso_local i32 @tipc_k_signal(i32, i64) #1

declare dso_local i32 @tipc_node_unlock(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
