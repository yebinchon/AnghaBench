; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/btyacc/extr_varsyntax_calc1.tab.c_dcheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/btyacc/extr_varsyntax_calc1.tab.c_dcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"divisor  interval  contains  0.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcheck(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = bitcast %struct.TYPE_3__* %3 to i64*
  store i64 %0, i64* %4, align 4
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sitofp i32 %6 to double
  %8 = fcmp oge double %7, 0.000000e+00
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sitofp i32 %11 to double
  %13 = fcmp ole double %12, 0.000000e+00
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %17

16:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %14
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
