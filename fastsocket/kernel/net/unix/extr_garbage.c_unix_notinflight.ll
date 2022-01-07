; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_garbage.c_unix_notinflight.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_garbage.c_unix_notinflight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.sock = type { i32 }
%struct.unix_sock = type { i32, i32 }

@unix_gc_lock = common dso_local global i32 0, align 4
@unix_tot_inflight = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unix_notinflight(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.unix_sock*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.sock* @unix_get_socket(%struct.file* %5)
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = icmp ne %struct.sock* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.unix_sock* @unix_sk(%struct.sock* %10)
  store %struct.unix_sock* %11, %struct.unix_sock** %4, align 8
  %12 = call i32 @spin_lock(i32* @unix_gc_lock)
  %13 = load %struct.unix_sock*, %struct.unix_sock** %4, align 8
  %14 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %13, i32 0, i32 0
  %15 = call i32 @list_empty(i32* %14)
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.unix_sock*, %struct.unix_sock** %4, align 8
  %18 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %17, i32 0, i32 1
  %19 = call i64 @atomic_long_dec_and_test(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %9
  %22 = load %struct.unix_sock*, %struct.unix_sock** %4, align 8
  %23 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %22, i32 0, i32 0
  %24 = call i32 @list_del_init(i32* %23)
  br label %25

25:                                               ; preds = %21, %9
  %26 = load i32, i32* @unix_tot_inflight, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* @unix_tot_inflight, align 4
  %28 = call i32 @spin_unlock(i32* @unix_gc_lock)
  br label %29

29:                                               ; preds = %25, %1
  ret void
}

declare dso_local %struct.sock* @unix_get_socket(%struct.file*) #1

declare dso_local %struct.unix_sock* @unix_sk(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @atomic_long_dec_and_test(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
