; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink_log.c_nfulnl_set_nlbufsiz.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nfnetlink_log.c_nfulnl_set_nlbufsiz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfulnl_instance = type { i32, i32 }

@NFULNL_NLBUFSIZ_DEFAULT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfulnl_instance*, i32)* @nfulnl_set_nlbufsiz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfulnl_set_nlbufsiz(%struct.nfulnl_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.nfulnl_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfulnl_instance* %0, %struct.nfulnl_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %3, align 8
  %7 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %6, i32 0, i32 1
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NFULNL_NLBUFSIZ_DEFAULT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ERANGE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 131072
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @ERANGE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %25

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %3, align 8
  %24 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %18
  br label %26

26:                                               ; preds = %25, %12
  %27 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %3, align 8
  %28 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock_bh(i32* %28)
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
