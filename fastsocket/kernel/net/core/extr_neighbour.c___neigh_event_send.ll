; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c___neigh_event_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c___neigh_event_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32, i64, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i64 }
%struct.sk_buff = type { i32 }

@NUD_CONNECTED = common dso_local global i32 0, align 4
@NUD_DELAY = common dso_local global i32 0, align 4
@NUD_PROBE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NUD_STALE = common dso_local global i32 0, align 4
@NUD_INCOMPLETE = common dso_local global i32 0, align 4
@NUD_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"neigh %p is delayed.\0A\00", align 1
@unres_discards = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__neigh_event_send(%struct.neighbour* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.neighbour*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.neighbour* %0, %struct.neighbour** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %10 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %9, i32 0, i32 2
  %11 = call i32 @write_lock_bh(i32* %10)
  store i32 0, i32* %6, align 4
  %12 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %13 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NUD_CONNECTED, align 4
  %16 = load i32, i32* @NUD_DELAY, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @NUD_PROBE, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %14, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %141

23:                                               ; preds = %2
  %24 = load i64, i64* @jiffies, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %26 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NUD_STALE, align 4
  %29 = load i32, i32* @NUD_INCOMPLETE, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %78, label %33

33:                                               ; preds = %23
  %34 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %35 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %34, i32 0, i32 5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %40 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %39, i32 0, i32 5
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %38, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %33
  %47 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %48 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %47, i32 0, i32 6
  %49 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %50 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %49, i32 0, i32 5
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @atomic_set(i32* %48, i32 %53)
  %55 = load i32, i32* @NUD_INCOMPLETE, align 4
  %56 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %57 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* @jiffies, align 8
  %59 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %60 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  %64 = call i32 @neigh_add_timer(%struct.neighbour* %61, i64 %63)
  br label %77

65:                                               ; preds = %33
  %66 = load i32, i32* @NUD_FAILED, align 4
  %67 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %68 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* @jiffies, align 8
  %70 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %71 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %73 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %72, i32 0, i32 2
  %74 = call i32 @write_unlock_bh(i32* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  store i32 1, i32* %3, align 4
  br label %146

77:                                               ; preds = %46
  br label %104

78:                                               ; preds = %23
  %79 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %80 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @NUD_STALE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %78
  %86 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %87 = call i32 @NEIGH_PRINTK2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.neighbour* %86)
  %88 = load i32, i32* @NUD_DELAY, align 4
  %89 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %90 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i64, i64* @jiffies, align 8
  %92 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %93 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %95 = load i64, i64* @jiffies, align 8
  %96 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %97 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %96, i32 0, i32 5
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %95, %100
  %102 = call i32 @neigh_add_timer(%struct.neighbour* %94, i64 %101)
  br label %103

103:                                              ; preds = %85, %78
  br label %104

104:                                              ; preds = %103, %77
  %105 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %106 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @NUD_INCOMPLETE, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %104
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = icmp ne %struct.sk_buff* %111, null
  br i1 %112, label %113, label %139

113:                                              ; preds = %110
  %114 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %115 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %114, i32 0, i32 3
  %116 = call i64 @skb_queue_len(i32* %115)
  %117 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %118 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %117, i32 0, i32 5
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp sge i64 %116, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %113
  %124 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %125 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %124, i32 0, i32 3
  %126 = call %struct.sk_buff* @__skb_dequeue(i32* %125)
  store %struct.sk_buff* %126, %struct.sk_buff** %8, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %128 = call i32 @kfree_skb(%struct.sk_buff* %127)
  %129 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %130 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @unres_discards, align 4
  %133 = call i32 @NEIGH_CACHE_STAT_INC(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %123, %113
  %135 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %136 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %135, i32 0, i32 3
  %137 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %138 = call i32 @__skb_queue_tail(i32* %136, %struct.sk_buff* %137)
  br label %139

139:                                              ; preds = %134, %110
  store i32 1, i32* %6, align 4
  br label %140

140:                                              ; preds = %139, %104
  br label %141

141:                                              ; preds = %140, %22
  %142 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %143 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %142, i32 0, i32 2
  %144 = call i32 @write_unlock_bh(i32* %143)
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %141, %65
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @neigh_add_timer(%struct.neighbour*, i64) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @NEIGH_PRINTK2(i8*, %struct.neighbour*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @NEIGH_CACHE_STAT_INC(i32, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
