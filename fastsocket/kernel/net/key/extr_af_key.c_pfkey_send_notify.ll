; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_send_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_send_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.km_event = type { i32, %struct.net* }
%struct.net = type { i32 }
%struct.netns_pfkey = type { i32 }

@pfkey_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"pfkey: Unknown SA event %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.km_event*)* @pfkey_send_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_send_notify(%struct.xfrm_state* %0, %struct.km_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.km_event*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.netns_pfkey*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.km_event* %1, %struct.km_event** %5, align 8
  %8 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %9 = icmp ne %struct.xfrm_state* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %12 = call %struct.net* @xs_net(%struct.xfrm_state* %11)
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.km_event*, %struct.km_event** %5, align 8
  %15 = getelementptr inbounds %struct.km_event, %struct.km_event* %14, i32 0, i32 1
  %16 = load %struct.net*, %struct.net** %15, align 8
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi %struct.net* [ %12, %10 ], [ %16, %13 ]
  store %struct.net* %18, %struct.net** %6, align 8
  %19 = load %struct.net*, %struct.net** %6, align 8
  %20 = load i32, i32* @pfkey_net_id, align 4
  %21 = call %struct.netns_pfkey* @net_generic(%struct.net* %19, i32 %20)
  store %struct.netns_pfkey* %21, %struct.netns_pfkey** %7, align 8
  %22 = load %struct.netns_pfkey*, %struct.netns_pfkey** %7, align 8
  %23 = getelementptr inbounds %struct.netns_pfkey, %struct.netns_pfkey* %22, i32 0, i32 0
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %49

27:                                               ; preds = %17
  %28 = load %struct.km_event*, %struct.km_event** %5, align 8
  %29 = getelementptr inbounds %struct.km_event, %struct.km_event* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %43 [
    i32 132, label %31
    i32 133, label %35
    i32 129, label %35
    i32 128, label %35
    i32 131, label %39
    i32 130, label %42
  ]

31:                                               ; preds = %27
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %33 = load %struct.km_event*, %struct.km_event** %5, align 8
  %34 = call i32 @key_notify_sa_expire(%struct.xfrm_state* %32, %struct.km_event* %33)
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %27, %27, %27
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %37 = load %struct.km_event*, %struct.km_event** %5, align 8
  %38 = call i32 @key_notify_sa(%struct.xfrm_state* %36, %struct.km_event* %37)
  store i32 %38, i32* %3, align 4
  br label %49

39:                                               ; preds = %27
  %40 = load %struct.km_event*, %struct.km_event** %5, align 8
  %41 = call i32 @key_notify_sa_flush(%struct.km_event* %40)
  store i32 %41, i32* %3, align 4
  br label %49

42:                                               ; preds = %27
  br label %48

43:                                               ; preds = %27
  %44 = load %struct.km_event*, %struct.km_event** %5, align 8
  %45 = getelementptr inbounds %struct.km_event, %struct.km_event* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %42
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %39, %35, %31, %26
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local %struct.netns_pfkey* @net_generic(%struct.net*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @key_notify_sa_expire(%struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @key_notify_sa(%struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @key_notify_sa_flush(%struct.km_event*) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
