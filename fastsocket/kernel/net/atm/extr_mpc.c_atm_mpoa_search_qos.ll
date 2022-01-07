; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_atm_mpoa_search_qos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_atm_mpoa_search_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_mpoa_qos = type { i64, %struct.atm_mpoa_qos* }

@qos_head = common dso_local global %struct.atm_mpoa_qos* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.atm_mpoa_qos* @atm_mpoa_search_qos(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.atm_mpoa_qos*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** @qos_head, align 8
  store %struct.atm_mpoa_qos* %4, %struct.atm_mpoa_qos** %3, align 8
  br label %5

5:                                                ; preds = %15, %1
  %6 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %3, align 8
  %7 = icmp ne %struct.atm_mpoa_qos* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %3, align 8
  %10 = getelementptr inbounds %struct.atm_mpoa_qos, %struct.atm_mpoa_qos* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %2, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %19

15:                                               ; preds = %8
  %16 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %3, align 8
  %17 = getelementptr inbounds %struct.atm_mpoa_qos, %struct.atm_mpoa_qos* %16, i32 0, i32 1
  %18 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %17, align 8
  store %struct.atm_mpoa_qos* %18, %struct.atm_mpoa_qos** %3, align 8
  br label %5

19:                                               ; preds = %14, %5
  %20 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %3, align 8
  ret %struct.atm_mpoa_qos* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
