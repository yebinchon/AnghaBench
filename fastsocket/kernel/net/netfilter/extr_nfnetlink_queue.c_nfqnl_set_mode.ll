; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink_queue.c_nfqnl_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink_queue.c_nfqnl_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfqnl_instance = type { i8, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfqnl_instance*, i8, i32)* @nfqnl_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfqnl_set_mode(%struct.nfqnl_instance* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.nfqnl_instance*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfqnl_instance* %0, %struct.nfqnl_instance** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %4, align 8
  %9 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %8, i32 0, i32 2
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  switch i32 %12, label %33 [
    i32 129, label %13
    i32 130, label %13
    i32 128, label %19
  ]

13:                                               ; preds = %3, %3
  %14 = load i8, i8* %5, align 1
  %15 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %4, align 8
  %16 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %15, i32 0, i32 0
  store i8 %14, i8* %16, align 4
  %17 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %4, align 8
  %18 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  br label %36

19:                                               ; preds = %3
  %20 = load i8, i8* %5, align 1
  %21 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %4, align 8
  %22 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %21, i32 0, i32 0
  store i8 %20, i8* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ugt i32 %23, 65535
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %4, align 8
  %27 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %26, i32 0, i32 1
  store i32 65535, i32* %27, align 4
  br label %32

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %4, align 8
  %31 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %25
  br label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %32, %13
  %37 = load %struct.nfqnl_instance*, %struct.nfqnl_instance** %4, align 8
  %38 = getelementptr inbounds %struct.nfqnl_instance, %struct.nfqnl_instance* %37, i32 0, i32 2
  %39 = call i32 @spin_unlock_bh(i32* %38)
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
