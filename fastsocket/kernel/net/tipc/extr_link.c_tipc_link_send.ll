; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.link = type { i32 }
%struct.tipc_node = type { %struct.link** }

@ELINKCONG = common dso_local global i32 0, align 4
@tipc_net_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"tipc_link_send: found link %x for dest %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Attempt to send msg to unreachable node:\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c">>>\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Attempt to send msg to unknown node:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_send(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.link*, align 8
  %8 = alloca %struct.tipc_node*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @ELINKCONG, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = call i32 @read_lock_bh(i32* @tipc_net_lock)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.tipc_node* @tipc_node_select(i32 %13, i32 %14)
  store %struct.tipc_node* %15, %struct.tipc_node** %8, align 8
  %16 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %17 = icmp ne %struct.tipc_node* %16, null
  br i1 %17, label %18, label %48

18:                                               ; preds = %3
  %19 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %20 = call i32 @tipc_node_lock(%struct.tipc_node* %19)
  %21 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %22 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %21, i32 0, i32 0
  %23 = load %struct.link**, %struct.link*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.link*, %struct.link** %23, i64 %26
  %28 = load %struct.link*, %struct.link** %27, align 8
  store %struct.link* %28, %struct.link** %7, align 8
  %29 = load %struct.link*, %struct.link** %7, align 8
  %30 = icmp ne %struct.link* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %18
  %32 = load %struct.link*, %struct.link** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.link* %32, i32 %33)
  %35 = load %struct.link*, %struct.link** %7, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @tipc_link_send_buf(%struct.link* %35, %struct.sk_buff* %36)
  store i32 %37, i32* %9, align 4
  br label %45

38:                                               ; preds = %18
  %39 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @buf_msg(%struct.sk_buff* %40)
  %42 = call i32 @msg_dbg(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @buf_discard(%struct.sk_buff* %43)
  br label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %47 = call i32 @tipc_node_unlock(%struct.tipc_node* %46)
  br label %55

48:                                               ; preds = %3
  %49 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @buf_msg(%struct.sk_buff* %50)
  %52 = call i32 @msg_dbg(i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @buf_discard(%struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %48, %45
  %56 = call i32 @read_unlock_bh(i32* @tipc_net_lock)
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.tipc_node* @tipc_node_select(i32, i32) #1

declare dso_local i32 @tipc_node_lock(%struct.tipc_node*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @tipc_link_send_buf(%struct.link*, %struct.sk_buff*) #1

declare dso_local i32 @msg_dbg(i32, i8*) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i32 @tipc_node_unlock(%struct.tipc_node*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
