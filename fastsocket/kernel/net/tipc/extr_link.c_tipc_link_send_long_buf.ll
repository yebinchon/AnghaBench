; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_send_long_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_send_long_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32* }
%struct.tipc_msg = type { i32 }

@INT_H_SIZE = common dso_local global i64 0, align 8
@tipc_own_addr = common dso_local global i32 0, align 4
@MSG_FRAGMENTER = common dso_local global i32 0, align 4
@FIRST_FRAGMENT = common dso_local global i32 0, align 4
@LAST_FRAGMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Link unable to fragment message\0A\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@FRAGMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_send_long_buf(%struct.link* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.link*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca %struct.tipc_msg, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.link* %0, %struct.link** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %17)
  store %struct.tipc_msg* %18, %struct.tipc_msg** %6, align 8
  %19 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %20 = call i64 @msg_size(%struct.tipc_msg* %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %22 = call i64 @msg_data_sz(%struct.tipc_msg* %21)
  store i64 %22, i64* %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %11, align 8
  %27 = load %struct.link*, %struct.link** %4, align 8
  %28 = call i64 @link_max_pkt(%struct.link* %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @INT_H_SIZE, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %13, align 8
  store i64 1, i64* %14, align 8
  %32 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %33 = call i64 @msg_short(%struct.tipc_msg* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load %struct.link*, %struct.link** %4, align 8
  %37 = getelementptr inbounds %struct.link, %struct.link* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %15, align 8
  br label %42

39:                                               ; preds = %2
  %40 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %41 = call i64 @msg_destnode(%struct.tipc_msg* %40)
  store i64 %41, i64* %15, align 8
  br label %42

42:                                               ; preds = %39, %35
  %43 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %44 = call i64 @msg_routed(%struct.tipc_msg* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %48 = load i32, i32* @tipc_own_addr, align 4
  %49 = call i32 @msg_set_prevnode(%struct.tipc_msg* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @MSG_FRAGMENTER, align 4
  %52 = load i32, i32* @FIRST_FRAGMENT, align 4
  %53 = load i64, i64* @INT_H_SIZE, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i32 @msg_init(%struct.tipc_msg* %7, i32 %51, i32 %52, i64 %53, i64 %54)
  %56 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %57 = call i32 @msg_link_selector(%struct.tipc_msg* %56)
  %58 = call i32 @msg_set_link_selector(%struct.tipc_msg* %7, i32 %57)
  %59 = load %struct.link*, %struct.link** %4, align 8
  %60 = getelementptr inbounds %struct.link, %struct.link* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = call i32 @mod(i32 %61)
  %64 = call i32 @msg_set_long_msgno(%struct.tipc_msg* %7, i32 %63)
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @msg_set_fragm_no(%struct.tipc_msg* %7, i64 %65)
  %67 = load %struct.link*, %struct.link** %4, align 8
  %68 = getelementptr inbounds %struct.link, %struct.link* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %121, %50
  %73 = load i64, i64* %11, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %133

75:                                               ; preds = %72
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp sle i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i64, i64* %11, align 8
  store i64 %80, i64* %13, align 8
  %81 = load i32, i32* @LAST_FRAGMENT, align 4
  %82 = call i32 @msg_set_type(%struct.tipc_msg* %7, i32 %81)
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* @INT_H_SIZE, align 8
  %86 = add nsw i64 %84, %85
  %87 = call %struct.sk_buff* @buf_acquire(i64 %86)
  store %struct.sk_buff* %87, %struct.sk_buff** %16, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %89 = icmp eq %struct.sk_buff* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %92 = load i64, i64* @ENOMEM, align 8
  %93 = sub nsw i64 0, %92
  store i64 %93, i64* %9, align 8
  br label %134

94:                                               ; preds = %83
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* @INT_H_SIZE, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @msg_set_size(%struct.tipc_msg* %7, i64 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %100 = load i64, i64* @INT_H_SIZE, align 8
  %101 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %99, %struct.tipc_msg* %7, i64 %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %103 = load i64, i64* @INT_H_SIZE, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i64, i64* %13, align 8
  %106 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %102, i64 %103, i32* %104, i64 %105)
  %107 = load %struct.link*, %struct.link** %4, align 8
  %108 = getelementptr inbounds %struct.link, %struct.link* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = load %struct.link*, %struct.link** %4, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %114 = call i32 @tipc_link_send_buf(%struct.link* %112, %struct.sk_buff* %113)
  %115 = load %struct.link*, %struct.link** %4, align 8
  %116 = call i32 @tipc_link_is_up(%struct.link* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %94
  %119 = load i64, i64* %9, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %3, align 4
  br label %139

121:                                              ; preds = %94
  %122 = load i64, i64* %14, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %14, align 8
  %124 = call i32 @msg_set_fragm_no(%struct.tipc_msg* %7, i64 %123)
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* %11, align 8
  %127 = sub nsw i64 %126, %125
  store i64 %127, i64* %11, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 %128
  store i32* %130, i32** %10, align 8
  %131 = load i32, i32* @FRAGMENT, align 4
  %132 = call i32 @msg_set_type(%struct.tipc_msg* %7, i32 %131)
  br label %72

133:                                              ; preds = %72
  br label %134

134:                                              ; preds = %133, %90
  %135 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %136 = call i32 @buf_discard(%struct.sk_buff* %135)
  %137 = load i64, i64* %9, align 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %134, %118
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_size(%struct.tipc_msg*) #1

declare dso_local i64 @msg_data_sz(%struct.tipc_msg*) #1

declare dso_local i64 @link_max_pkt(%struct.link*) #1

declare dso_local i64 @msg_short(%struct.tipc_msg*) #1

declare dso_local i64 @msg_destnode(%struct.tipc_msg*) #1

declare dso_local i64 @msg_routed(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_prevnode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_init(%struct.tipc_msg*, i32, i32, i64, i64) #1

declare dso_local i32 @msg_set_link_selector(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_link_selector(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_long_msgno(%struct.tipc_msg*, i32) #1

declare dso_local i32 @mod(i32) #1

declare dso_local i32 @msg_set_fragm_no(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local %struct.sk_buff* @buf_acquire(i64) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i64) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.tipc_msg*, i64) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i64, i32*, i64) #1

declare dso_local i32 @tipc_link_send_buf(%struct.link*, %struct.sk_buff*) #1

declare dso_local i32 @tipc_link_is_up(%struct.link*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
