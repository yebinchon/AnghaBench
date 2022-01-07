; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_reg_device_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_reg_device_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.regulatory_request = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"COUNTRY=%c%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reg_device_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.regulatory_request*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 (...) @rcu_read_lock()
  %10 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %10, %struct.regulatory_request** %6, align 8
  %11 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %12 = icmp ne %struct.regulatory_request* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %15 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %20 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %21 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(i32* %19, i32 %22, i32 2)
  store i32 1, i32* %8, align 4
  br label %24

24:                                               ; preds = %18, %13, %2
  %25 = call i32 (...) @rcu_read_unlock()
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
