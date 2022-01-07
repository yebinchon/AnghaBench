; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_tunnel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.link** }
%struct.tipc_msg = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Link changeover error, tunnel link no longer available\0A\00", align 1
@INT_H_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Link changeover error, unable to send tunnel msg\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%c->%c:\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c">SEND>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_tunnel(%struct.link* %0, %struct.tipc_msg* %1, %struct.tipc_msg* %2, i32 %3) #0 {
  %5 = alloca %struct.link*, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca %struct.tipc_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.link*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.link* %0, %struct.link** %5, align 8
  store %struct.tipc_msg* %1, %struct.tipc_msg** %6, align 8
  store %struct.tipc_msg* %2, %struct.tipc_msg** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %13 = call i32 @msg_size(%struct.tipc_msg* %12)
  store i32 %13, i32* %11, align 4
  %14 = load %struct.link*, %struct.link** %5, align 8
  %15 = getelementptr inbounds %struct.link, %struct.link* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.link**, %struct.link*** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.link*, %struct.link** %18, i64 %21
  %23 = load %struct.link*, %struct.link** %22, align 8
  store %struct.link* %23, %struct.link** %9, align 8
  %24 = load %struct.link*, %struct.link** %9, align 8
  %25 = call i32 @tipc_link_is_up(%struct.link* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = call i32 @warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %70

29:                                               ; preds = %4
  %30 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @INT_H_SIZE, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @msg_set_size(%struct.tipc_msg* %30, i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @INT_H_SIZE, align 4
  %37 = add nsw i32 %35, %36
  %38 = call %struct.sk_buff* @buf_acquire(i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %10, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %29
  %42 = call i32 @warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %70

43:                                               ; preds = %29
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %46 = load i32, i32* @INT_H_SIZE, align 4
  %47 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %44, %struct.tipc_msg* %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = load i32, i32* @INT_H_SIZE, align 4
  %50 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %48, i32 %49, %struct.tipc_msg* %50, i32 %51)
  %53 = load %struct.link*, %struct.link** %5, align 8
  %54 = getelementptr inbounds %struct.link, %struct.link* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.link*, %struct.link** %9, align 8
  %59 = getelementptr inbounds %struct.link, %struct.link* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = call i32 @buf_msg(%struct.sk_buff* %64)
  %66 = call i32 @msg_dbg(i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.link*, %struct.link** %9, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %69 = call i32 @tipc_link_send_buf(%struct.link* %67, %struct.sk_buff* %68)
  br label %70

70:                                               ; preds = %43, %41, %27
  ret void
}

declare dso_local i32 @msg_size(%struct.tipc_msg*) #1

declare dso_local i32 @tipc_link_is_up(%struct.link*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i32) #1

declare dso_local %struct.sk_buff* @buf_acquire(i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.tipc_msg*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, %struct.tipc_msg*, i32) #1

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @msg_dbg(i32, i8*) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @tipc_link_send_buf(%struct.link*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
