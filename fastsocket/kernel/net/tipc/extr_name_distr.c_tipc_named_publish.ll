; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_distr.c_tipc_named_publish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_distr.c_tipc_named_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.publication = type { i32 }
%struct.sk_buff = type { i32 }
%struct.distr_item = type { i32 }

@publ_root = common dso_local global i32 0, align 4
@publ_cnt = common dso_local global i32 0, align 4
@PUBLICATION = common dso_local global i32 0, align 4
@ITEM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Publication distribution failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"tipc_named_withdraw: broadcasting publish msg\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_named_publish(%struct.publication* %0) #0 {
  %2 = alloca %struct.publication*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.distr_item*, align 8
  store %struct.publication* %0, %struct.publication** %2, align 8
  %5 = load %struct.publication*, %struct.publication** %2, align 8
  %6 = getelementptr inbounds %struct.publication, %struct.publication* %5, i32 0, i32 0
  %7 = call i32 @list_add_tail(i32* %6, i32* @publ_root)
  %8 = load i32, i32* @publ_cnt, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @publ_cnt, align 4
  %10 = load i32, i32* @PUBLICATION, align 4
  %11 = load i32, i32* @ITEM_SIZE, align 4
  %12 = call %struct.sk_buff* @named_prepare_buf(i32 %10, i32 %11, i32 0)
  store %struct.sk_buff* %12, %struct.sk_buff** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %28

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = call i32 @buf_msg(%struct.sk_buff* %18)
  %20 = call i64 @msg_data(i32 %19)
  %21 = inttoptr i64 %20 to %struct.distr_item*
  store %struct.distr_item* %21, %struct.distr_item** %4, align 8
  %22 = load %struct.distr_item*, %struct.distr_item** %4, align 8
  %23 = load %struct.publication*, %struct.publication** %2, align 8
  %24 = call i32 @publ_to_item(%struct.distr_item* %22, %struct.publication* %23)
  %25 = call i32 @dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = call i32 @tipc_cltr_broadcast(%struct.sk_buff* %26)
  br label %28

28:                                               ; preds = %17, %15
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.sk_buff* @named_prepare_buf(i32, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @msg_data(i32) #1

declare dso_local i32 @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @publ_to_item(%struct.distr_item*, %struct.publication*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @tipc_cltr_broadcast(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
