; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_resolve_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_resolve_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.dst_entry = type { %struct.neighbour*, %struct.TYPE_5__*, i32 }
%struct.neighbour = type { %struct.TYPE_6__*, i32, i32, %struct.net_device* }
%struct.TYPE_6__ = type { i32 (%struct.sk_buff*)* }
%struct.net_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"neigh_resolve_output: dst=%p neigh=%p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @neigh_resolve_output(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca %struct.neighbour*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %8)
  store %struct.dst_entry* %9, %struct.dst_entry** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %11 = icmp ne %struct.dst_entry* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %14 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %13, i32 0, i32 0
  %15 = load %struct.neighbour*, %struct.neighbour** %14, align 8
  store %struct.neighbour* %15, %struct.neighbour** %4, align 8
  %16 = icmp ne %struct.neighbour* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %1
  br label %112

18:                                               ; preds = %12
  %19 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %21 = call i32 @skb_network_offset(%struct.sk_buff* %20)
  %22 = call i32 @__skb_pull(%struct.sk_buff* %19, i32 %21)
  %23 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %25 = call i32 @neigh_event_send(%struct.neighbour* %23, %struct.sk_buff* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %109, label %27

27:                                               ; preds = %18
  %28 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %29 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %28, i32 0, i32 3
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  store %struct.net_device* %30, %struct.net_device** %7, align 8
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %27
  %38 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %39 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %76, label %42

42:                                               ; preds = %37
  %43 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %44 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %43, i32 0, i32 1
  %45 = call i32 @write_lock_bh(i32* %44)
  %46 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %47 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %42
  %51 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %52 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %53 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %54 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @neigh_hh_init(%struct.neighbour* %51, %struct.dst_entry* %52, i32 %57)
  br label %59

59:                                               ; preds = %50, %42
  %60 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ntohs(i32 %64)
  %66 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %67 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_hard_header(%struct.sk_buff* %60, %struct.net_device* %61, i32 %65, i32 %68, i32* null, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %74 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %73, i32 0, i32 1
  %75 = call i32 @write_unlock_bh(i32* %74)
  br label %96

76:                                               ; preds = %37, %27
  %77 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %78 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %77, i32 0, i32 1
  %79 = call i32 @read_lock_bh(i32* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %81 = load %struct.net_device*, %struct.net_device** %7, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohs(i32 %84)
  %86 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %87 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_hard_header(%struct.sk_buff* %80, %struct.net_device* %81, i32 %85, i32 %88, i32* null, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %94 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %93, i32 0, i32 1
  %95 = call i32 @read_unlock_bh(i32* %94)
  br label %96

96:                                               ; preds = %76, %59
  %97 = load i32, i32* %6, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %101 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %103, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %106 = call i32 %104(%struct.sk_buff* %105)
  store i32 %106, i32* %5, align 4
  br label %108

107:                                              ; preds = %96
  br label %124

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %18
  br label %110

110:                                              ; preds = %124, %109
  %111 = load i32, i32* %5, align 4
  ret i32 %111

112:                                              ; preds = %17
  %113 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %114 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %115 = icmp ne %struct.dst_entry* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %118 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %117, i32 0, i32 0
  %119 = load %struct.neighbour*, %struct.neighbour** %118, align 8
  br label %121

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120, %116
  %122 = phi %struct.neighbour* [ %119, %116 ], [ null, %120 ]
  %123 = call i32 @NEIGH_PRINTK1(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.dst_entry* %113, %struct.neighbour* %122)
  br label %124

124:                                              ; preds = %121, %107
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  %127 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %128 = call i32 @kfree_skb(%struct.sk_buff* %127)
  br label %110
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @neigh_event_send(%struct.neighbour*, %struct.sk_buff*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @neigh_hh_init(%struct.neighbour*, %struct.dst_entry*, i32) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @NEIGH_PRINTK1(i8*, %struct.dst_entry*, %struct.neighbour*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
