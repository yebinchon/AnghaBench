; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov-io.c_from_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov-io.c_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@gcov_var = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @from_file(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gcov_var, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 16
  %8 = load i32, i32* %2, align 4
  %9 = shl i32 %8, 16
  %10 = or i32 %7, %9
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 16711935
  %13 = shl i32 %12, 8
  %14 = load i32, i32* %2, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 16711935
  %17 = or i32 %13, %16
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %5, %1
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
