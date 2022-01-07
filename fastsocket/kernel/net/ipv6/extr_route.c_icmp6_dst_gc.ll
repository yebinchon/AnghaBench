; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_icmp6_dst_gc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_icmp6_dst_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.dst_entry*, i32 }

@icmp6_dst_lock = common dso_local global i32 0, align 4
@icmp6_dst_gc_list = common dso_local global %struct.dst_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icmp6_dst_gc() #0 {
  %1 = alloca %struct.dst_entry*, align 8
  %2 = alloca %struct.dst_entry*, align 8
  %3 = alloca %struct.dst_entry**, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store %struct.dst_entry* null, %struct.dst_entry** %2, align 8
  %5 = call i32 @spin_lock_bh(i32* @icmp6_dst_lock)
  store %struct.dst_entry** @icmp6_dst_gc_list, %struct.dst_entry*** %3, align 8
  br label %6

6:                                                ; preds = %27, %0
  %7 = load %struct.dst_entry**, %struct.dst_entry*** %3, align 8
  %8 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  store %struct.dst_entry* %8, %struct.dst_entry** %1, align 8
  %9 = icmp ne %struct.dst_entry* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load %struct.dst_entry*, %struct.dst_entry** %1, align 8
  %12 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %11, i32 0, i32 1
  %13 = call i32 @atomic_read(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load %struct.dst_entry*, %struct.dst_entry** %1, align 8
  %17 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %16, i32 0, i32 0
  %18 = load %struct.dst_entry*, %struct.dst_entry** %17, align 8
  %19 = load %struct.dst_entry**, %struct.dst_entry*** %3, align 8
  store %struct.dst_entry* %18, %struct.dst_entry** %19, align 8
  %20 = load %struct.dst_entry*, %struct.dst_entry** %1, align 8
  %21 = call i32 @dst_free(%struct.dst_entry* %20)
  br label %27

22:                                               ; preds = %10
  %23 = load %struct.dst_entry*, %struct.dst_entry** %1, align 8
  %24 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %23, i32 0, i32 0
  store %struct.dst_entry** %24, %struct.dst_entry*** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %15
  br label %6

28:                                               ; preds = %6
  %29 = call i32 @spin_unlock_bh(i32* @icmp6_dst_lock)
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dst_free(%struct.dst_entry*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
