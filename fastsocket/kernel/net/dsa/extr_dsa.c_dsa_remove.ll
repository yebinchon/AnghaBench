; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_dsa.c_dsa_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_dsa.c_dsa_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsa_switch_tree = type { %struct.dsa_switch**, %struct.TYPE_2__*, i32, i64 }
%struct.dsa_switch = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsa_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dsa_switch_tree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.dsa_switch_tree* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.dsa_switch_tree* %7, %struct.dsa_switch_tree** %3, align 8
  %8 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %3, align 8
  %9 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %3, align 8
  %14 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %13, i32 0, i32 2
  %15 = call i32 @del_timer_sync(i32* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = call i32 (...) @flush_scheduled_work()
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %40, %16
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %3, align 8
  %21 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %18
  %27 = load %struct.dsa_switch_tree*, %struct.dsa_switch_tree** %3, align 8
  %28 = getelementptr inbounds %struct.dsa_switch_tree, %struct.dsa_switch_tree* %27, i32 0, i32 0
  %29 = load %struct.dsa_switch**, %struct.dsa_switch*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dsa_switch*, %struct.dsa_switch** %29, i64 %31
  %33 = load %struct.dsa_switch*, %struct.dsa_switch** %32, align 8
  store %struct.dsa_switch* %33, %struct.dsa_switch** %5, align 8
  %34 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %35 = icmp ne %struct.dsa_switch* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %38 = call i32 @dsa_switch_destroy(%struct.dsa_switch* %37)
  br label %39

39:                                               ; preds = %36, %26
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %18

43:                                               ; preds = %18
  ret i32 0
}

declare dso_local %struct.dsa_switch_tree* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @dsa_switch_destroy(%struct.dsa_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
