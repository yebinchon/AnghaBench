; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_garbage.c_inc_inflight_move_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_garbage.c_inc_inflight_move_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_sock = type { i32, i64, i32 }

@gc_candidates = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unix_sock*)* @inc_inflight_move_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inc_inflight_move_tail(%struct.unix_sock* %0) #0 {
  %2 = alloca %struct.unix_sock*, align 8
  store %struct.unix_sock* %0, %struct.unix_sock** %2, align 8
  %3 = load %struct.unix_sock*, %struct.unix_sock** %2, align 8
  %4 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %3, i32 0, i32 2
  %5 = call i32 @atomic_long_inc(i32* %4)
  %6 = load %struct.unix_sock*, %struct.unix_sock** %2, align 8
  %7 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.unix_sock*, %struct.unix_sock** %2, align 8
  %12 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %11, i32 0, i32 0
  %13 = call i32 @list_move_tail(i32* %12, i32* @gc_candidates)
  br label %14

14:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
