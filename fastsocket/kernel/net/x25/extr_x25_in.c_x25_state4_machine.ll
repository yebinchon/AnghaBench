; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_in.c_x25_state4_machine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_x25_in.c_x25_state4_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32* }
%struct.x25_sock = type { i32, i32, i32, i32, i32, i32 }

@X25_STATE_3 = common dso_local global i32 0, align 4
@X25_CLEAR_CONFIRMATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @x25_state4_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_state4_machine(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.x25_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %48 [
    i32 128, label %9
    i32 129, label %12
    i32 130, label %32
  ]

9:                                                ; preds = %3
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call i32 @x25_write_internal(%struct.sock* %10, i32 129)
  br label %12

12:                                               ; preds = %3, %9
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.x25_sock* @x25_sk(%struct.sock* %13)
  store %struct.x25_sock* %14, %struct.x25_sock** %7, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i32 @x25_stop_timer(%struct.sock* %15)
  %17 = load %struct.x25_sock*, %struct.x25_sock** %7, align 8
  %18 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.x25_sock*, %struct.x25_sock** %7, align 8
  %20 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %19, i32 0, i32 5
  store i32 0, i32* %20, align 4
  %21 = load %struct.x25_sock*, %struct.x25_sock** %7, align 8
  %22 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %21, i32 0, i32 4
  store i32 0, i32* %22, align 4
  %23 = load %struct.x25_sock*, %struct.x25_sock** %7, align 8
  %24 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %23, i32 0, i32 3
  store i32 0, i32* %24, align 4
  %25 = load %struct.x25_sock*, %struct.x25_sock** %7, align 8
  %26 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* @X25_STATE_3, align 4
  %28 = load %struct.x25_sock*, %struct.x25_sock** %7, align 8
  %29 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = call i32 @x25_requeue_frames(%struct.sock* %30)
  br label %49

32:                                               ; preds = %3
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = load i32, i32* @X25_CLEAR_CONFIRMATION, align 4
  %35 = call i32 @x25_write_internal(%struct.sock* %33, i32 %34)
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @x25_disconnect(%struct.sock* %36, i32 0, i32 %41, i32 %46)
  br label %49

48:                                               ; preds = %3
  br label %49

49:                                               ; preds = %48, %32, %12
  ret i32 0
}

declare dso_local i32 @x25_write_internal(%struct.sock*, i32) #1

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @x25_stop_timer(%struct.sock*) #1

declare dso_local i32 @x25_requeue_frames(%struct.sock*) #1

declare dso_local i32 @x25_disconnect(%struct.sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
