; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_from_top.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_from_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text = type { %struct.text* }

@first_line = common dso_local global %struct.text* null, align 8
@curr_line = common dso_local global %struct.text* null, align 8
@absolute_lin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @from_top() #0 {
  %1 = alloca %struct.text*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.text*, %struct.text** @first_line, align 8
  store %struct.text* %3, %struct.text** %1, align 8
  store i32 1, i32* %2, align 4
  br label %4

4:                                                ; preds = %13, %0
  %5 = load %struct.text*, %struct.text** %1, align 8
  %6 = icmp ne %struct.text* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load %struct.text*, %struct.text** %1, align 8
  %9 = load %struct.text*, %struct.text** @curr_line, align 8
  %10 = icmp ne %struct.text* %8, %9
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i1 [ false, %4 ], [ %10, %7 ]
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  %16 = load %struct.text*, %struct.text** %1, align 8
  %17 = getelementptr inbounds %struct.text, %struct.text* %16, i32 0, i32 0
  %18 = load %struct.text*, %struct.text** %17, align 8
  store %struct.text* %18, %struct.text** %1, align 8
  br label %4

19:                                               ; preds = %11
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* @absolute_lin, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
