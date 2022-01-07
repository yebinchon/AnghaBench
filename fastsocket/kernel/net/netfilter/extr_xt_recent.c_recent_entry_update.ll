; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_recent.c_recent_entry_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_recent.c_recent_entry_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recent_table = type { i32 }
%struct.recent_entry = type { i32, i32, i32, i32* }

@ip_pkt_list_tot = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.recent_table*, %struct.recent_entry*)* @recent_entry_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recent_entry_update(%struct.recent_table* %0, %struct.recent_entry* %1) #0 {
  %3 = alloca %struct.recent_table*, align 8
  %4 = alloca %struct.recent_entry*, align 8
  store %struct.recent_table* %0, %struct.recent_table** %3, align 8
  store %struct.recent_entry* %1, %struct.recent_entry** %4, align 8
  %5 = load i32, i32* @ip_pkt_list_tot, align 4
  %6 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %7 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = srem i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @jiffies, align 4
  %11 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %12 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %15 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i32, i32* %13, i64 %18
  store i32 %10, i32* %19, align 4
  %20 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %21 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %24 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %29 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %32 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %27, %2
  %34 = load %struct.recent_entry*, %struct.recent_entry** %4, align 8
  %35 = getelementptr inbounds %struct.recent_entry, %struct.recent_entry* %34, i32 0, i32 0
  %36 = load %struct.recent_table*, %struct.recent_table** %3, align 8
  %37 = getelementptr inbounds %struct.recent_table, %struct.recent_table* %36, i32 0, i32 0
  %38 = call i32 @list_move_tail(i32* %35, i32* %37)
  ret void
}

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
