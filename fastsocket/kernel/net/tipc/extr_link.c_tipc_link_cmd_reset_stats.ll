; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_cmd_reset_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_cmd_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.link = type { i32 }
%struct.tipc_node = type { i32 }

@TIPC_TLV_LINK_NAME = common dso_local global i32 0, align 4
@TIPC_CFG_TLV_ERROR = common dso_local global i8* null, align 8
@tipc_bclink_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"link not found\00", align 1
@tipc_net_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @tipc_link_cmd_reset_stats(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.link*, align 8
  %8 = alloca %struct.tipc_node*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @TIPC_TLV_LINK_NAME, align 4
  %12 = call i32 @TLV_CHECK(i8* %9, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** @TIPC_CFG_TLV_ERROR, align 8
  %16 = call %struct.sk_buff* @tipc_cfg_reply_error_string(i8* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %3, align 8
  br label %50

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @TLV_DATA(i8* %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @tipc_bclink_name, align 4
  %23 = call i32 @strcmp(i8* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %17
  %26 = call i64 (...) @tipc_bclink_reset_stats()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call %struct.sk_buff* @tipc_cfg_reply_error_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* %29, %struct.sk_buff** %3, align 8
  br label %50

30:                                               ; preds = %25
  %31 = call %struct.sk_buff* (...) @tipc_cfg_reply_none()
  store %struct.sk_buff* %31, %struct.sk_buff** %3, align 8
  br label %50

32:                                               ; preds = %17
  %33 = call i32 @read_lock_bh(i32* @tipc_net_lock)
  %34 = load i8*, i8** %6, align 8
  %35 = call %struct.link* @link_find_link(i8* %34, %struct.tipc_node** %8)
  store %struct.link* %35, %struct.link** %7, align 8
  %36 = load %struct.link*, %struct.link** %7, align 8
  %37 = icmp ne %struct.link* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = call i32 @read_unlock_bh(i32* @tipc_net_lock)
  %40 = call %struct.sk_buff* @tipc_cfg_reply_error_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* %40, %struct.sk_buff** %3, align 8
  br label %50

41:                                               ; preds = %32
  %42 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %43 = call i32 @tipc_node_lock(%struct.tipc_node* %42)
  %44 = load %struct.link*, %struct.link** %7, align 8
  %45 = call i32 @link_reset_statistics(%struct.link* %44)
  %46 = load %struct.tipc_node*, %struct.tipc_node** %8, align 8
  %47 = call i32 @tipc_node_unlock(%struct.tipc_node* %46)
  %48 = call i32 @read_unlock_bh(i32* @tipc_net_lock)
  %49 = call %struct.sk_buff* (...) @tipc_cfg_reply_none()
  store %struct.sk_buff* %49, %struct.sk_buff** %3, align 8
  br label %50

50:                                               ; preds = %41, %38, %30, %28, %14
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %51
}

declare dso_local i32 @TLV_CHECK(i8*, i32, i32) #1

declare dso_local %struct.sk_buff* @tipc_cfg_reply_error_string(i8*) #1

declare dso_local i64 @TLV_DATA(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @tipc_bclink_reset_stats(...) #1

declare dso_local %struct.sk_buff* @tipc_cfg_reply_none(...) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.link* @link_find_link(i8*, %struct.tipc_node**) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @tipc_node_lock(%struct.tipc_node*) #1

declare dso_local i32 @link_reset_statistics(%struct.link*) #1

declare dso_local i32 @tipc_node_unlock(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
