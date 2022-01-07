; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_mark_temp_addr_taken.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_mark_temp_addr_taken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temp_slot = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_temp_addr_taken(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.temp_slot*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %26

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = call i32 @MEM_P(i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @XEXP(i64 %12, i32 0)
  %14 = call i64 @CONSTANT_P(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %7
  br label %26

17:                                               ; preds = %11
  %18 = load i64, i64* %2, align 8
  %19 = call i32 @XEXP(i64 %18, i32 0)
  %20 = call %struct.temp_slot* @find_temp_slot_from_address(i32 %19)
  store %struct.temp_slot* %20, %struct.temp_slot** %3, align 8
  %21 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %22 = icmp ne %struct.temp_slot* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %25 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %6, %16, %23, %17
  ret void
}

declare dso_local i32 @MEM_P(i64) #1

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local %struct.temp_slot* @find_temp_slot_from_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
