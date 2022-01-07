; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_secpath_reject.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_secpath_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.xfrm_state** }
%struct.xfrm_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.xfrm_state*, %struct.sk_buff*, %struct.flowi*)* }
%struct.flowi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.flowi*)* @xfrm_secpath_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_secpath_reject(i32 %0, %struct.sk_buff* %1, %struct.flowi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca %struct.xfrm_state*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %13, %3
  store i32 0, i32* %4, align 4
  br label %52

25:                                               ; preds = %16
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.xfrm_state**, %struct.xfrm_state*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %30, i64 %32
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %33, align 8
  store %struct.xfrm_state* %34, %struct.xfrm_state** %8, align 8
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %36 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.xfrm_state*, %struct.sk_buff*, %struct.flowi*)*, i32 (%struct.xfrm_state*, %struct.sk_buff*, %struct.flowi*)** %38, align 8
  %40 = icmp ne i32 (%struct.xfrm_state*, %struct.sk_buff*, %struct.flowi*)* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %52

42:                                               ; preds = %25
  %43 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %44 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (%struct.xfrm_state*, %struct.sk_buff*, %struct.flowi*)*, i32 (%struct.xfrm_state*, %struct.sk_buff*, %struct.flowi*)** %46, align 8
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load %struct.flowi*, %struct.flowi** %7, align 8
  %51 = call i32 %47(%struct.xfrm_state* %48, %struct.sk_buff* %49, %struct.flowi* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %42, %41, %24
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
