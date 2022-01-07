; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_icmp6_clean_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_icmp6_clean_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.dst_entry* }
%struct.rt6_info = type opaque

@icmp6_dst_lock = common dso_local global i32 0, align 4
@icmp6_dst_gc_list = common dso_local global %struct.dst_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (%struct.rt6_info*, i8*)*, i8*)* @icmp6_clean_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icmp6_clean_all(i32 (%struct.rt6_info*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32 (%struct.rt6_info*, i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.dst_entry**, align 8
  %7 = alloca %struct.rt6_info*, align 8
  store i32 (%struct.rt6_info*, i8*)* %0, i32 (%struct.rt6_info*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call i32 @spin_lock_bh(i32* @icmp6_dst_lock)
  store %struct.dst_entry** @icmp6_dst_gc_list, %struct.dst_entry*** %6, align 8
  br label %9

9:                                                ; preds = %31, %2
  %10 = load %struct.dst_entry**, %struct.dst_entry*** %6, align 8
  %11 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  store %struct.dst_entry* %11, %struct.dst_entry** %5, align 8
  %12 = icmp ne %struct.dst_entry* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %15 = bitcast %struct.dst_entry* %14 to %struct.rt6_info*
  store %struct.rt6_info* %15, %struct.rt6_info** %7, align 8
  %16 = load i32 (%struct.rt6_info*, i8*)*, i32 (%struct.rt6_info*, i8*)** %3, align 8
  %17 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 %16(%struct.rt6_info* %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %23 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %22, i32 0, i32 0
  %24 = load %struct.dst_entry*, %struct.dst_entry** %23, align 8
  %25 = load %struct.dst_entry**, %struct.dst_entry*** %6, align 8
  store %struct.dst_entry* %24, %struct.dst_entry** %25, align 8
  %26 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %27 = call i32 @dst_free(%struct.dst_entry* %26)
  br label %31

28:                                               ; preds = %13
  %29 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %30 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %29, i32 0, i32 0
  store %struct.dst_entry** %30, %struct.dst_entry*** %6, align 8
  br label %31

31:                                               ; preds = %28, %21
  br label %9

32:                                               ; preds = %9
  %33 = call i32 @spin_unlock_bh(i32* @icmp6_dst_lock)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dst_free(%struct.dst_entry*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
