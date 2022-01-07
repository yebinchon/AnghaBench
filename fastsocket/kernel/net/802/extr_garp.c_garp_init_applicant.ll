; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_garp.c_garp_init_applicant.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_garp.c_garp_init_applicant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.garp_application = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.garp_applicant = type { i32, i32, i32, i32, %struct.garp_application*, %struct.net_device* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@garp_join_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @garp_init_applicant(%struct.net_device* %0, %struct.garp_application* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.garp_application*, align 8
  %6 = alloca %struct.garp_applicant*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.garp_application* %1, %struct.garp_application** %5, align 8
  %8 = call i32 (...) @ASSERT_RTNL()
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @garp_init_port(%struct.net_device* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %81

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.garp_applicant* @kzalloc(i32 32, i32 %23)
  store %struct.garp_applicant* %24, %struct.garp_applicant** %6, align 8
  %25 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %26 = icmp ne %struct.garp_applicant* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %78

28:                                               ; preds = %20
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = load %struct.garp_application*, %struct.garp_application** %5, align 8
  %31 = getelementptr inbounds %struct.garp_application, %struct.garp_application* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = call i32 @dev_mc_add(%struct.net_device* %29, i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %75

39:                                               ; preds = %28
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %42 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %41, i32 0, i32 5
  store %struct.net_device* %40, %struct.net_device** %42, align 8
  %43 = load %struct.garp_application*, %struct.garp_application** %5, align 8
  %44 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %45 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %44, i32 0, i32 4
  store %struct.garp_application* %43, %struct.garp_application** %45, align 8
  %46 = load i32, i32* @RB_ROOT, align 4
  %47 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %48 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %50 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %49, i32 0, i32 2
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %53 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %52, i32 0, i32 1
  %54 = call i32 @skb_queue_head_init(i32* %53)
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.garp_application*, %struct.garp_application** %5, align 8
  %61 = getelementptr inbounds %struct.garp_application, %struct.garp_application* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %66 = call i32 @rcu_assign_pointer(i32 %64, %struct.garp_applicant* %65)
  %67 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %68 = getelementptr inbounds %struct.garp_applicant, %struct.garp_applicant* %67, i32 0, i32 0
  %69 = load i32, i32* @garp_join_timer, align 4
  %70 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %71 = ptrtoint %struct.garp_applicant* %70 to i64
  %72 = call i32 @setup_timer(i32* %68, i32 %69, i64 %71)
  %73 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %74 = call i32 @garp_join_timer_arm(%struct.garp_applicant* %73)
  store i32 0, i32* %3, align 4
  br label %83

75:                                               ; preds = %38
  %76 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %77 = call i32 @kfree(%struct.garp_applicant* %76)
  br label %78

78:                                               ; preds = %75, %27
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i32 @garp_release_port(%struct.net_device* %79)
  br label %81

81:                                               ; preds = %78, %18
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %39
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @garp_init_port(%struct.net_device*) #1

declare dso_local %struct.garp_applicant* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_mc_add(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.garp_applicant*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @garp_join_timer_arm(%struct.garp_applicant*) #1

declare dso_local i32 @kfree(%struct.garp_applicant*) #1

declare dso_local i32 @garp_release_port(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
