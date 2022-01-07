; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.tc_action = type { %struct.tc_action* }

@RTM_NEWACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nlmsghdr*, i32, i32)* @tcf_action_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_action_add(%struct.nlattr* %0, %struct.nlmsghdr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tc_action*, align 8
  %11 = alloca %struct.tc_action*, align 8
  %12 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %14 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.tc_action* @tcf_action_init(%struct.nlattr* %16, i32* null, i32* null, i32 %17, i32 0)
  store %struct.tc_action* %18, %struct.tc_action** %10, align 8
  %19 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %20 = icmp eq %struct.tc_action* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %51

22:                                               ; preds = %4
  %23 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %24 = call i64 @IS_ERR(%struct.tc_action* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %28 = call i32 @PTR_ERR(%struct.tc_action* %27)
  store i32 %28, i32* %9, align 4
  br label %51

29:                                               ; preds = %22
  %30 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @RTM_NEWACTION, align 4
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %35 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @tcf_add_notify(%struct.tc_action* %30, i32 %31, i32 %32, i32 %33, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  store %struct.tc_action* %38, %struct.tc_action** %11, align 8
  br label %39

39:                                               ; preds = %48, %29
  %40 = load %struct.tc_action*, %struct.tc_action** %11, align 8
  %41 = icmp ne %struct.tc_action* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.tc_action*, %struct.tc_action** %11, align 8
  %44 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %43, i32 0, i32 0
  %45 = load %struct.tc_action*, %struct.tc_action** %44, align 8
  store %struct.tc_action* %45, %struct.tc_action** %10, align 8
  %46 = load %struct.tc_action*, %struct.tc_action** %11, align 8
  %47 = call i32 @kfree(%struct.tc_action* %46)
  br label %48

48:                                               ; preds = %42
  %49 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  store %struct.tc_action* %49, %struct.tc_action** %11, align 8
  br label %39

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %26, %21
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local %struct.tc_action* @tcf_action_init(%struct.nlattr*, i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tc_action*) #1

declare dso_local i32 @PTR_ERR(%struct.tc_action*) #1

declare dso_local i32 @tcf_add_notify(%struct.tc_action*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.tc_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
