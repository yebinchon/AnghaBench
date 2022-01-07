; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_mux_poll_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_fd.c_p9_mux_poll_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_conn = type { i32, %struct.p9_poll_wait* }
%struct.p9_poll_wait = type { i32*, i32 }

@p9_poll_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p9_conn*)* @p9_mux_poll_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p9_mux_poll_stop(%struct.p9_conn* %0) #0 {
  %2 = alloca %struct.p9_conn*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_poll_wait*, align 8
  store %struct.p9_conn* %0, %struct.p9_conn** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %9 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %8, i32 0, i32 1
  %10 = load %struct.p9_poll_wait*, %struct.p9_poll_wait** %9, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.p9_poll_wait* %10)
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %6
  %14 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %15 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %14, i32 0, i32 1
  %16 = load %struct.p9_poll_wait*, %struct.p9_poll_wait** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.p9_poll_wait, %struct.p9_poll_wait* %16, i64 %18
  store %struct.p9_poll_wait* %19, %struct.p9_poll_wait** %5, align 8
  %20 = load %struct.p9_poll_wait*, %struct.p9_poll_wait** %5, align 8
  %21 = getelementptr inbounds %struct.p9_poll_wait, %struct.p9_poll_wait* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %13
  %25 = load %struct.p9_poll_wait*, %struct.p9_poll_wait** %5, align 8
  %26 = getelementptr inbounds %struct.p9_poll_wait, %struct.p9_poll_wait* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.p9_poll_wait*, %struct.p9_poll_wait** %5, align 8
  %29 = getelementptr inbounds %struct.p9_poll_wait, %struct.p9_poll_wait* %28, i32 0, i32 1
  %30 = call i32 @remove_wait_queue(i32* %27, i32* %29)
  %31 = load %struct.p9_poll_wait*, %struct.p9_poll_wait** %5, align 8
  %32 = getelementptr inbounds %struct.p9_poll_wait, %struct.p9_poll_wait* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %24, %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %6

37:                                               ; preds = %6
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_lock_irqsave(i32* @p9_poll_lock, i64 %38)
  %40 = load %struct.p9_conn*, %struct.p9_conn** %2, align 8
  %41 = getelementptr inbounds %struct.p9_conn, %struct.p9_conn* %40, i32 0, i32 0
  %42 = call i32 @list_del_init(i32* %41)
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* @p9_poll_lock, i64 %43)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.p9_poll_wait*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
