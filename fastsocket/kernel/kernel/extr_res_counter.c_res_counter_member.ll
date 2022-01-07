; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_res_counter.c_res_counter_member.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_res_counter.c_res_counter_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_counter = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.res_counter*, i32)* @res_counter_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @res_counter_member(%struct.res_counter* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.res_counter*, align 8
  %5 = alloca i32, align 4
  store %struct.res_counter* %0, %struct.res_counter** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %22 [
    i32 128, label %7
    i32 130, label %10
    i32 131, label %13
    i32 132, label %16
    i32 129, label %19
  ]

7:                                                ; preds = %2
  %8 = load %struct.res_counter*, %struct.res_counter** %4, align 8
  %9 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %8, i32 0, i32 0
  store i64* %9, i64** %3, align 8
  br label %24

10:                                               ; preds = %2
  %11 = load %struct.res_counter*, %struct.res_counter** %4, align 8
  %12 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %11, i32 0, i32 1
  store i64* %12, i64** %3, align 8
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.res_counter*, %struct.res_counter** %4, align 8
  %15 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %14, i32 0, i32 2
  store i64* %15, i64** %3, align 8
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.res_counter*, %struct.res_counter** %4, align 8
  %18 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %17, i32 0, i32 3
  store i64* %18, i64** %3, align 8
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.res_counter*, %struct.res_counter** %4, align 8
  %21 = getelementptr inbounds %struct.res_counter, %struct.res_counter* %20, i32 0, i32 4
  store i64* %21, i64** %3, align 8
  br label %24

22:                                               ; preds = %2
  %23 = call i32 (...) @BUG()
  store i64* null, i64** %3, align 8
  br label %24

24:                                               ; preds = %22, %19, %16, %13, %10, %7
  %25 = load i64*, i64** %3, align 8
  ret i64* %25
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
