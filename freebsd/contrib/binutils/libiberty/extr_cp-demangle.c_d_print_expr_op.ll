; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_print_expr_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_print_expr_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i32 }
%struct.demangle_component = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@DEMANGLE_COMPONENT_OPERATOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, %struct.demangle_component*)* @d_print_expr_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_expr_op(%struct.d_print_info* %0, %struct.demangle_component* %1) #0 {
  %3 = alloca %struct.d_print_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %3, align 8
  store %struct.demangle_component* %1, %struct.demangle_component** %4, align 8
  %5 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %6 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DEMANGLE_COMPONENT_OPERATOR, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %12 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %13 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %20 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @d_append_buffer(%struct.d_print_info* %11, i32 %18, i32 %25)
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.d_print_info*, %struct.d_print_info** %3, align 8
  %29 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %30 = call i32 @d_print_comp(%struct.d_print_info* %28, %struct.demangle_component* %29)
  br label %31

31:                                               ; preds = %27, %10
  ret void
}

declare dso_local i32 @d_append_buffer(%struct.d_print_info*, i32, i32) #1

declare dso_local i32 @d_print_comp(%struct.d_print_info*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
