; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_res_counter.c_res_counter_charge_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_res_counter.c_res_counter_charge_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_counter = type { i64, i64, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @res_counter_charge_locked(%struct.res_counter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.res_counter*, align 8
  %5 = alloca i64, align 8
  store %struct.res_counter* %0, %struct.res_counter** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.res_counter*, %struct.res_counter** %4, align 8
  %7 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = add i64 %8, %9
  %11 = load %struct.res_counter*, %struct.res_counter** %4, align 8
  %12 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ugt i64 %10, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.res_counter*, %struct.res_counter** %4, align 8
  %17 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.res_counter*, %struct.res_counter** %4, align 8
  %25 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load %struct.res_counter*, %struct.res_counter** %4, align 8
  %29 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.res_counter*, %struct.res_counter** %4, align 8
  %32 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %22
  %36 = load %struct.res_counter*, %struct.res_counter** %4, align 8
  %37 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.res_counter*, %struct.res_counter** %4, align 8
  %40 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %22
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
