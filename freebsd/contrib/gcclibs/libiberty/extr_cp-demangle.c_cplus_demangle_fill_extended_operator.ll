; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_cplus_demangle_fill_extended_operator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_cplus_demangle_fill_extended_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.demangle_component* }

@DEMANGLE_COMPONENT_EXTENDED_OPERATOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cplus_demangle_fill_extended_operator(%struct.demangle_component* %0, i32 %1, %struct.demangle_component* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.demangle_component*, align 8
  store %struct.demangle_component* %0, %struct.demangle_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.demangle_component* %2, %struct.demangle_component** %7, align 8
  %8 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %9 = icmp eq %struct.demangle_component* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %15 = icmp eq %struct.demangle_component* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %3
  store i32 0, i32* %4, align 4
  br label %31

17:                                               ; preds = %13
  %18 = load i32, i32* @DEMANGLE_COMPONENT_EXTENDED_OPERATOR, align 4
  %19 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %20 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %23 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 8
  %26 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %27 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %28 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store %struct.demangle_component* %26, %struct.demangle_component** %30, align 8
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %17, %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
