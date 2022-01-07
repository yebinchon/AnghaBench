; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_table.c_dn_fib_empty_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_table.c_dn_fib_empty_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_fib_table = type { i32 }

@RT_TABLE_MIN = common dso_local global i64 0, align 8
@RT_TABLE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dn_fib_table* @dn_fib_empty_table() #0 {
  %1 = alloca %struct.dn_fib_table*, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @RT_TABLE_MIN, align 8
  store i64 %3, i64* %2, align 8
  br label %4

4:                                                ; preds = %16, %0
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @RT_TABLE_MAX, align 8
  %7 = icmp sle i64 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load i64, i64* %2, align 8
  %10 = call %struct.dn_fib_table* @dn_fib_get_table(i64 %9, i32 0)
  %11 = icmp eq %struct.dn_fib_table* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i64, i64* %2, align 8
  %14 = call %struct.dn_fib_table* @dn_fib_get_table(i64 %13, i32 1)
  store %struct.dn_fib_table* %14, %struct.dn_fib_table** %1, align 8
  br label %20

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15
  %17 = load i64, i64* %2, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %2, align 8
  br label %4

19:                                               ; preds = %4
  store %struct.dn_fib_table* null, %struct.dn_fib_table** %1, align 8
  br label %20

20:                                               ; preds = %19, %12
  %21 = load %struct.dn_fib_table*, %struct.dn_fib_table** %1, align 8
  ret %struct.dn_fib_table* %21
}

declare dso_local %struct.dn_fib_table* @dn_fib_get_table(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
