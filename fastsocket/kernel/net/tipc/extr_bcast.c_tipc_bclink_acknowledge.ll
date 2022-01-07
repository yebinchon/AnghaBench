; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bclink_acknowledge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bcast.c_tipc_bclink_acknowledge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.tipc_node = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@bc_lock = common dso_local global i32 0, align 4
@bcl = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_bclink_acknowledge(%struct.tipc_node* %0, i32 %1) #0 {
  %3 = alloca %struct.tipc_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.tipc_node* %0, %struct.tipc_node** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %10 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @less_eq(i32 %8, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %104

16:                                               ; preds = %2
  %17 = call i32 @spin_lock_bh(i32* @bc_lock)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bcl, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %5, align 8
  br label %21

21:                                               ; preds = %35, %16
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @buf_seqno(%struct.sk_buff* %25)
  %27 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %28 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @less_eq(i32 %26, i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %24, %21
  %34 = phi i1 [ false, %21 ], [ %32, %24 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %5, align 8
  br label %21

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %70, %39
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @buf_seqno(%struct.sk_buff* %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @less_eq(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %43, %40
  %50 = phi i1 [ false, %40 ], [ %48, %43 ]
  br i1 %50, label %51, label %72

51:                                               ; preds = %49
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %6, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i32 @bcbuf_decr_acks(%struct.sk_buff* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i64 @bcbuf_acks(%struct.sk_buff* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bcl, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  store %struct.sk_buff* %61, %struct.sk_buff** %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bcl, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i32 @buf_discard(%struct.sk_buff* %68)
  store i32 1, i32* %7, align 4
  br label %70

70:                                               ; preds = %60, %51
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %71, %struct.sk_buff** %5, align 8
  br label %40

72:                                               ; preds = %49
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %75 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bcl, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bcl, align 8
  %84 = call i32 @tipc_link_push_queue(%struct.TYPE_6__* %83)
  br label %85

85:                                               ; preds = %82, %72
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bcl, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = call i32 @list_empty(i32* %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br label %94

94:                                               ; preds = %88, %85
  %95 = phi i1 [ false, %85 ], [ %93, %88 ]
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bcl, align 8
  %101 = call i32 @tipc_link_wakeup_ports(%struct.TYPE_6__* %100, i32 0)
  br label %102

102:                                              ; preds = %99, %94
  %103 = call i32 @spin_unlock_bh(i32* @bc_lock)
  br label %104

104:                                              ; preds = %102, %15
  ret void
}

declare dso_local i64 @less_eq(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @buf_seqno(%struct.sk_buff*) #1

declare dso_local i32 @bcbuf_decr_acks(%struct.sk_buff*) #1

declare dso_local i64 @bcbuf_acks(%struct.sk_buff*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tipc_link_push_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @tipc_link_wakeup_ports(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
