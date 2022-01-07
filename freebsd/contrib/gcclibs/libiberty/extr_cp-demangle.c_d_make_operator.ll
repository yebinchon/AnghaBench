; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_make_operator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_make_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.demangle_operator_info* }
%struct.d_info = type { i32 }
%struct.demangle_operator_info = type { i32 }

@DEMANGLE_COMPONENT_OPERATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*, %struct.demangle_operator_info*)* @d_make_operator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_make_operator(%struct.d_info* %0, %struct.demangle_operator_info* %1) #0 {
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_operator_info*, align 8
  %5 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  store %struct.demangle_operator_info* %1, %struct.demangle_operator_info** %4, align 8
  %6 = load %struct.d_info*, %struct.d_info** %3, align 8
  %7 = call %struct.demangle_component* @d_make_empty(%struct.d_info* %6)
  store %struct.demangle_component* %7, %struct.demangle_component** %5, align 8
  %8 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %9 = icmp ne %struct.demangle_component* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i32, i32* @DEMANGLE_COMPONENT_OPERATOR, align 4
  %12 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %13 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.demangle_operator_info*, %struct.demangle_operator_info** %4, align 8
  %15 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %16 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.demangle_operator_info* %14, %struct.demangle_operator_info** %18, align 8
  br label %19

19:                                               ; preds = %10, %2
  %20 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  ret %struct.demangle_component* %20
}

declare dso_local %struct.demangle_component* @d_make_empty(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
