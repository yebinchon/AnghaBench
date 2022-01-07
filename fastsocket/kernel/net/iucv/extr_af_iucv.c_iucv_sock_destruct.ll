; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_destruct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32, i32 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Attempt to release alive iucv socket %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @iucv_sock_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_sock_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = getelementptr inbounds %struct.sock, %struct.sock* %3, i32 0, i32 5
  %5 = call i32 @skb_queue_purge(i32* %4)
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 4
  %8 = call i32 @skb_queue_purge(i32* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call i32 @sk_mem_reclaim(%struct.sock* %9)
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = load i32, i32* @SOCK_DEAD, align 4
  %13 = call i32 @sock_flag(%struct.sock* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %2, align 8
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.sock* %16)
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 3
  %21 = call i32 @atomic_read(i32* %20)
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 2
  %25 = call i32 @atomic_read(i32* %24)
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.sock*, %struct.sock** %2, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @WARN_ON(i32 %33)
  br label %35

35:                                               ; preds = %18, %15
  ret void
}

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @sk_mem_reclaim(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.sock*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
