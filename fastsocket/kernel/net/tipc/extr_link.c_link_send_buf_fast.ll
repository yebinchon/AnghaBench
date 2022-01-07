; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_send_buf_fast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_send_buf_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { %struct.sk_buff*, %struct.TYPE_4__, %struct.TYPE_5__*, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"SENT_FAST:\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"failed sent fast...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link*, %struct.sk_buff*, i64*)* @link_send_buf_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_send_buf_fast(%struct.link* %0, %struct.sk_buff* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.link*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca i32, align 4
  store %struct.link* %0, %struct.link** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %10)
  store %struct.tipc_msg* %11, %struct.tipc_msg** %8, align 8
  %12 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %13 = call i32 @msg_data_sz(%struct.tipc_msg* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.link*, %struct.link** %5, align 8
  %15 = call i32 @link_congested(%struct.link* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %80

21:                                               ; preds = %3
  %22 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %23 = call i64 @msg_size(%struct.tipc_msg* %22)
  %24 = load %struct.link*, %struct.link** %5, align 8
  %25 = call i64 @link_max_pkt(%struct.link* %24)
  %26 = icmp sle i64 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %21
  %31 = load %struct.link*, %struct.link** %5, align 8
  %32 = getelementptr inbounds %struct.link, %struct.link* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @list_empty(i32* %34)
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %30
  %39 = load %struct.link*, %struct.link** %5, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %42 = call i32 @link_add_to_outqueue(%struct.link* %39, %struct.sk_buff* %40, %struct.tipc_msg* %41)
  %43 = load %struct.link*, %struct.link** %5, align 8
  %44 = getelementptr inbounds %struct.link, %struct.link* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load %struct.link*, %struct.link** %5, align 8
  %48 = getelementptr inbounds %struct.link, %struct.link* %47, i32 0, i32 4
  %49 = call i32 @tipc_bearer_send(%struct.TYPE_5__* %45, %struct.sk_buff* %46, i32* %48)
  %50 = call i64 @likely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %38
  %53 = load %struct.link*, %struct.link** %5, align 8
  %54 = getelementptr inbounds %struct.link, %struct.link* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %56 = call i32 @msg_dbg(%struct.tipc_msg* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %84

58:                                               ; preds = %38
  %59 = call i32 @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.link*, %struct.link** %5, align 8
  %61 = getelementptr inbounds %struct.link, %struct.link* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load %struct.link*, %struct.link** %5, align 8
  %64 = call i32 @tipc_bearer_schedule(%struct.TYPE_5__* %62, %struct.link* %63)
  %65 = load %struct.link*, %struct.link** %5, align 8
  %66 = getelementptr inbounds %struct.link, %struct.link* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = load %struct.link*, %struct.link** %5, align 8
  %72 = getelementptr inbounds %struct.link, %struct.link* %71, i32 0, i32 0
  store %struct.sk_buff* %70, %struct.sk_buff** %72, align 8
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %84

74:                                               ; preds = %30
  br label %79

75:                                               ; preds = %21
  %76 = load %struct.link*, %struct.link** %5, align 8
  %77 = call i64 @link_max_pkt(%struct.link* %76)
  %78 = load i64*, i64** %7, align 8
  store i64 %77, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %74
  br label %80

80:                                               ; preds = %79, %3
  %81 = load %struct.link*, %struct.link** %5, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = call i32 @tipc_link_send_buf(%struct.link* %81, %struct.sk_buff* %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %58, %52
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_data_sz(%struct.tipc_msg*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @link_congested(%struct.link*) #1

declare dso_local i64 @msg_size(%struct.tipc_msg*) #1

declare dso_local i64 @link_max_pkt(%struct.link*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @link_add_to_outqueue(%struct.link*, %struct.sk_buff*, %struct.tipc_msg*) #1

declare dso_local i32 @tipc_bearer_send(%struct.TYPE_5__*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @tipc_bearer_schedule(%struct.TYPE_5__*, %struct.link*) #1

declare dso_local i32 @tipc_link_send_buf(%struct.link*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
