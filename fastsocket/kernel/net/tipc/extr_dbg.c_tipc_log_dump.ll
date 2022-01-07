; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_dbg.c_tipc_log_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_dbg.c_tipc_log_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.tlv_desc = type { i32 }
%struct.print_buf = type { i32 }

@print_lock = common dso_local global i32 0, align 4
@TIPC_LOG = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"log not activated\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"log is empty\0A\00", align 1
@TIPC_TLV_ULTRA_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @tipc_log_dump() #0 {
  %1 = alloca %struct.sk_buff*, align 8
  %2 = alloca %struct.tlv_desc*, align 8
  %3 = alloca %struct.print_buf, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @spin_lock_bh(i32* @print_lock)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TIPC_LOG, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = call i32 @spin_unlock_bh(i32* @print_lock)
  %12 = call %struct.sk_buff* @tipc_cfg_reply_ultra_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* %12, %struct.sk_buff** %1, align 8
  br label %58

13:                                               ; preds = %0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TIPC_LOG, align 8
  %15 = call i64 @tipc_printbuf_empty(%struct.TYPE_4__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call i32 @spin_unlock_bh(i32* @print_lock)
  %19 = call %struct.sk_buff* @tipc_cfg_reply_ultra_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sk_buff* %19, %struct.sk_buff** %1, align 8
  br label %57

20:                                               ; preds = %13
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TIPC_LOG, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @min(i32 %23, i32 32768)
  store i32 %24, i32* %4, align 4
  %25 = call i32 @spin_unlock_bh(i32* @print_lock)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TLV_SPACE(i32 %26)
  %28 = call %struct.sk_buff* @tipc_cfg_reply_alloc(i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %1, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %56

31:                                               ; preds = %20
  %32 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.tlv_desc*
  store %struct.tlv_desc* %35, %struct.tlv_desc** %2, align 8
  %36 = load %struct.tlv_desc*, %struct.tlv_desc** %2, align 8
  %37 = call i32 @TLV_DATA(%struct.tlv_desc* %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @tipc_printbuf_init(%struct.print_buf* %3, i32 %37, i32 %38)
  %40 = call i32 @spin_lock_bh(i32* @print_lock)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TIPC_LOG, align 8
  %42 = call i32 @tipc_printbuf_move(%struct.print_buf* %3, %struct.TYPE_4__* %41)
  %43 = call i32 @spin_unlock_bh(i32* @print_lock)
  %44 = load %struct.tlv_desc*, %struct.tlv_desc** %2, align 8
  %45 = call i32 @TLV_DATA(%struct.tlv_desc* %44)
  %46 = call i32 @strlen(i32 %45)
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @TLV_SPACE(i32 %49)
  %51 = call i32 @skb_put(%struct.sk_buff* %48, i32 %50)
  %52 = load %struct.tlv_desc*, %struct.tlv_desc** %2, align 8
  %53 = load i32, i32* @TIPC_TLV_ULTRA_STRING, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @TLV_SET(%struct.tlv_desc* %52, i32 %53, i32* null, i32 %54)
  br label %56

56:                                               ; preds = %31, %20
  br label %57

57:                                               ; preds = %56, %17
  br label %58

58:                                               ; preds = %57, %10
  %59 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  ret %struct.sk_buff* %59
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.sk_buff* @tipc_cfg_reply_ultra_string(i8*) #1

declare dso_local i64 @tipc_printbuf_empty(%struct.TYPE_4__*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.sk_buff* @tipc_cfg_reply_alloc(i32) #1

declare dso_local i32 @TLV_SPACE(i32) #1

declare dso_local i32 @tipc_printbuf_init(%struct.print_buf*, i32, i32) #1

declare dso_local i32 @TLV_DATA(%struct.tlv_desc*) #1

declare dso_local i32 @tipc_printbuf_move(%struct.print_buf*, %struct.TYPE_4__*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @TLV_SET(%struct.tlv_desc*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
