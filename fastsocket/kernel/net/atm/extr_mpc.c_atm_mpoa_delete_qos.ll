; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_atm_mpoa_delete_qos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_atm_mpoa_delete_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_mpoa_qos = type { %struct.atm_mpoa_qos* }

@qos_head = common dso_local global %struct.atm_mpoa_qos* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atm_mpoa_delete_qos(%struct.atm_mpoa_qos* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_mpoa_qos*, align 8
  %4 = alloca %struct.atm_mpoa_qos*, align 8
  store %struct.atm_mpoa_qos* %0, %struct.atm_mpoa_qos** %3, align 8
  %5 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %3, align 8
  %6 = icmp eq %struct.atm_mpoa_qos* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

8:                                                ; preds = %1
  %9 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %3, align 8
  %10 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** @qos_head, align 8
  %11 = icmp eq %struct.atm_mpoa_qos* %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** @qos_head, align 8
  %14 = getelementptr inbounds %struct.atm_mpoa_qos, %struct.atm_mpoa_qos* %13, i32 0, i32 0
  %15 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %14, align 8
  store %struct.atm_mpoa_qos* %15, %struct.atm_mpoa_qos** @qos_head, align 8
  %16 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %3, align 8
  %17 = call i32 @kfree(%struct.atm_mpoa_qos* %16)
  store i32 1, i32* %2, align 4
  br label %42

18:                                               ; preds = %8
  %19 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** @qos_head, align 8
  store %struct.atm_mpoa_qos* %19, %struct.atm_mpoa_qos** %4, align 8
  br label %20

20:                                               ; preds = %37, %18
  %21 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %4, align 8
  %22 = icmp ne %struct.atm_mpoa_qos* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %4, align 8
  %25 = getelementptr inbounds %struct.atm_mpoa_qos, %struct.atm_mpoa_qos* %24, i32 0, i32 0
  %26 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %25, align 8
  %27 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %3, align 8
  %28 = icmp eq %struct.atm_mpoa_qos* %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %3, align 8
  %31 = getelementptr inbounds %struct.atm_mpoa_qos, %struct.atm_mpoa_qos* %30, i32 0, i32 0
  %32 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %31, align 8
  %33 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %4, align 8
  %34 = getelementptr inbounds %struct.atm_mpoa_qos, %struct.atm_mpoa_qos* %33, i32 0, i32 0
  store %struct.atm_mpoa_qos* %32, %struct.atm_mpoa_qos** %34, align 8
  %35 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %3, align 8
  %36 = call i32 @kfree(%struct.atm_mpoa_qos* %35)
  store i32 1, i32* %2, align 4
  br label %42

37:                                               ; preds = %23
  %38 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %4, align 8
  %39 = getelementptr inbounds %struct.atm_mpoa_qos, %struct.atm_mpoa_qos* %38, i32 0, i32 0
  %40 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %39, align 8
  store %struct.atm_mpoa_qos* %40, %struct.atm_mpoa_qos** %4, align 8
  br label %20

41:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %29, %12, %7
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @kfree(%struct.atm_mpoa_qos*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
