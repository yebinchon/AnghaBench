; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_bundle_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_link_bundle_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@MSG_BUNDLER = common dso_local global i64 0, align 8
@OPEN_MSG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Packed msg # %u(%u octets) into pos %u in buf(#%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"PACKD:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link*, %struct.sk_buff*, %struct.sk_buff*)* @link_bundle_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_bundle_buf(%struct.link* %0, %struct.sk_buff* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.link*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.link* %0, %struct.link** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %14)
  store %struct.tipc_msg* %15, %struct.tipc_msg** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %16)
  store %struct.tipc_msg* %17, %struct.tipc_msg** %9, align 8
  %18 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %19 = call i64 @msg_size(%struct.tipc_msg* %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %21 = call i64 @msg_size(%struct.tipc_msg* %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @align(i64 %22)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %11, align 8
  %26 = sub nsw i64 %24, %25
  store i64 %26, i64* %13, align 8
  %27 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %28 = call i64 @msg_user(%struct.tipc_msg* %27)
  %29 = load i64, i64* @MSG_BUNDLER, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %93

32:                                               ; preds = %3
  %33 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %34 = call i64 @msg_type(%struct.tipc_msg* %33)
  %35 = load i64, i64* @OPEN_MSG, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %93

38:                                               ; preds = %32
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i64 @skb_tailroom(%struct.sk_buff* %39)
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %93

46:                                               ; preds = %38
  %47 = load %struct.link*, %struct.link** %5, align 8
  %48 = call i64 @link_max_pkt(%struct.link* %47)
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %10, align 8
  %51 = add nsw i64 %49, %50
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %93

54:                                               ; preds = %46
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @skb_put(%struct.sk_buff* %55, i64 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %60, i64 %61, i32 %64, i64 %65)
  %67 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @msg_set_size(%struct.tipc_msg* %67, i64 %70)
  %72 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %73 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %74 = call i64 @msg_msgcnt(%struct.tipc_msg* %73)
  %75 = add nsw i64 %74, 1
  %76 = call i32 @msg_set_msgcnt(%struct.tipc_msg* %72, i64 %75)
  %77 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %78 = call i64 @msg_msgcnt(%struct.tipc_msg* %77)
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %82 = call i32 @msg_seqno(%struct.tipc_msg* %81)
  %83 = call i32 @dbg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %78, i64 %79, i64 %80, i32 %82)
  %84 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %85 = call i32 @msg_dbg(%struct.tipc_msg* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = call i32 @buf_discard(%struct.sk_buff* %86)
  %88 = load %struct.link*, %struct.link** %5, align 8
  %89 = getelementptr inbounds %struct.link, %struct.link* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  store i32 1, i32* %4, align 4
  br label %93

93:                                               ; preds = %54, %53, %45, %37, %31
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_size(%struct.tipc_msg*) #1

declare dso_local i64 @align(i64) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local i64 @msg_type(%struct.tipc_msg*) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @link_max_pkt(%struct.link*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i64, i32, i64) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_msgcnt(%struct.tipc_msg*, i64) #1

declare dso_local i64 @msg_msgcnt(%struct.tipc_msg*) #1

declare dso_local i32 @dbg(i8*, i64, i64, i64, i32) #1

declare dso_local i32 @msg_seqno(%struct.tipc_msg*) #1

declare dso_local i32 @msg_dbg(%struct.tipc_msg*, i8*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
