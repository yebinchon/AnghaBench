; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demint.c_cplus_demangle_fill_component.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demint.c_cplus_demangle_fill_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.demangle_component*, %struct.demangle_component* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cplus_demangle_fill_component(%struct.demangle_component* %0, i32 %1, %struct.demangle_component* %2, %struct.demangle_component* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.demangle_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.demangle_component*, align 8
  %9 = alloca %struct.demangle_component*, align 8
  store %struct.demangle_component* %0, %struct.demangle_component** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.demangle_component* %2, %struct.demangle_component** %8, align 8
  store %struct.demangle_component* %3, %struct.demangle_component** %9, align 8
  %10 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %11 = icmp eq %struct.demangle_component* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %36

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %21 [
    i32 150, label %15
    i32 153, label %15
    i32 139, label %15
    i32 145, label %15
    i32 162, label %15
    i32 133, label %15
    i32 159, label %15
    i32 168, label %15
    i32 151, label %15
    i32 169, label %15
    i32 144, label %15
    i32 135, label %15
    i32 167, label %15
    i32 166, label %15
    i32 142, label %15
    i32 141, label %15
    i32 140, label %15
    i32 155, label %15
    i32 154, label %15
    i32 129, label %16
    i32 128, label %16
    i32 138, label %16
    i32 136, label %16
    i32 137, label %16
    i32 143, label %16
    i32 132, label %16
    i32 160, label %16
    i32 156, label %16
    i32 158, label %16
    i32 148, label %16
    i32 147, label %16
    i32 131, label %16
    i32 163, label %16
    i32 146, label %16
    i32 130, label %16
    i32 161, label %16
    i32 152, label %16
    i32 149, label %16
    i32 164, label %16
    i32 157, label %16
    i32 134, label %16
    i32 165, label %16
  ]

15:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  br label %22

16:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %17 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %18 = icmp ne %struct.demangle_component* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %36

20:                                               ; preds = %16
  br label %22

21:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %36

22:                                               ; preds = %20, %15
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %25 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  %27 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %28 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store %struct.demangle_component* %26, %struct.demangle_component** %30, align 8
  %31 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %32 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %33 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.demangle_component* %31, %struct.demangle_component** %35, align 8
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %22, %21, %19, %12
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
