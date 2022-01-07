; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_add_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_add_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linetable = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linetable*, i32, i32, i32)* @add_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_line(%struct.linetable* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.linetable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.linetable* %0, %struct.linetable** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 1, i32* %7, align 4
  br label %13

13:                                               ; preds = %12, %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 -2, i32* %9, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %5, align 4
  br label %45

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.linetable*, %struct.linetable** %6, align 8
  %26 = getelementptr inbounds %struct.linetable, %struct.linetable* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.linetable*, %struct.linetable** %6, align 8
  %29 = getelementptr inbounds %struct.linetable, %struct.linetable* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %24, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 %33, 2
  %35 = load %struct.linetable*, %struct.linetable** %6, align 8
  %36 = getelementptr inbounds %struct.linetable, %struct.linetable* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.linetable*, %struct.linetable** %6, align 8
  %39 = getelementptr inbounds %struct.linetable, %struct.linetable* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %40
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %34, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %23, %21
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
