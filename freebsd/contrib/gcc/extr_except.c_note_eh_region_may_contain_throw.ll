; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_note_eh_region_may_contain_throw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_note_eh_region_may_contain_throw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eh_region = type { i32, %struct.eh_region* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @note_eh_region_may_contain_throw(%struct.eh_region* %0) #0 {
  %2 = alloca %struct.eh_region*, align 8
  store %struct.eh_region* %0, %struct.eh_region** %2, align 8
  br label %3

3:                                                ; preds = %14, %1
  %4 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %5 = icmp ne %struct.eh_region* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %8 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %6, %3
  %13 = phi i1 [ false, %3 ], [ %11, %6 ]
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %16 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %18 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %17, i32 0, i32 1
  %19 = load %struct.eh_region*, %struct.eh_region** %18, align 8
  store %struct.eh_region* %19, %struct.eh_region** %2, align 8
  br label %3

20:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
