; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_rules.c_fib_empty_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_rules.c_fib_empty_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_table = type { i32 }
%struct.net = type { i32 }

@RT_TABLE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fib_table* (%struct.net*)* @fib_empty_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fib_table* @fib_empty_table(%struct.net* %0) #0 {
  %2 = alloca %struct.fib_table*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 1, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @RT_TABLE_MAX, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load %struct.net*, %struct.net** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32* @fib_get_table(%struct.net* %10, i32 %11)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.net*, %struct.net** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.fib_table* @fib_new_table(%struct.net* %15, i32 %16)
  store %struct.fib_table* %17, %struct.fib_table** %2, align 8
  br label %23

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %5

22:                                               ; preds = %5
  store %struct.fib_table* null, %struct.fib_table** %2, align 8
  br label %23

23:                                               ; preds = %22, %14
  %24 = load %struct.fib_table*, %struct.fib_table** %2, align 8
  ret %struct.fib_table* %24
}

declare dso_local i32* @fib_get_table(%struct.net*, i32) #1

declare dso_local %struct.fib_table* @fib_new_table(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
