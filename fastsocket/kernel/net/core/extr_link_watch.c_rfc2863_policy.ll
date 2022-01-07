; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_link_watch.c_rfc2863_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_link_watch.c_rfc2863_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8, i32 }

@dev_base_lock = common dso_local global i32 0, align 4
@IF_OPER_UP = common dso_local global i8 0, align 1
@IF_OPER_DORMANT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rfc2863_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfc2863_policy(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call zeroext i8 @default_operstate(%struct.net_device* %4)
  store i8 %5, i8* %3, align 1
  %6 = load i8, i8* %3, align 1
  %7 = zext i8 %6 to i32
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 4
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %35

14:                                               ; preds = %1
  %15 = call i32 @write_lock_bh(i32* @dev_base_lock)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %29 [
    i32 128, label %19
    i32 129, label %28
  ]

19:                                               ; preds = %14
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @IF_OPER_UP, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i8, i8* @IF_OPER_DORMANT, align 1
  store i8 %26, i8* %3, align 1
  br label %27

27:                                               ; preds = %25, %19
  br label %30

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %14, %28
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i8, i8* %3, align 1
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  store i8 %31, i8* %33, align 4
  %34 = call i32 @write_unlock_bh(i32* @dev_base_lock)
  br label %35

35:                                               ; preds = %30, %13
  ret void
}

declare dso_local zeroext i8 @default_operstate(%struct.net_device*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
