; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_get_exception_pointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_get_exception_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@cfun = common dso_local global %struct.function* null, align 8
@ptr_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_exception_pointer(%struct.function* %0) #0 {
  %2 = alloca %struct.function*, align 8
  %3 = alloca i64, align 8
  store %struct.function* %0, %struct.function** %2, align 8
  %4 = load %struct.function*, %struct.function** %2, align 8
  %5 = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.function*, %struct.function** %2, align 8
  %10 = load %struct.function*, %struct.function** @cfun, align 8
  %11 = icmp eq %struct.function* %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @ptr_mode, align 4
  %17 = call i64 @gen_reg_rtx(i32 %16)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.function*, %struct.function** %2, align 8
  %20 = getelementptr inbounds %struct.function, %struct.function* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %18, i64* %22, align 8
  br label %23

23:                                               ; preds = %15, %12, %1
  %24 = load i64, i64* %3, align 8
  ret i64 %24
}

declare dso_local i64 @gen_reg_rtx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
