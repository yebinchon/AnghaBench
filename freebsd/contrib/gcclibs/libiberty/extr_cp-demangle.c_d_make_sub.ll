; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_make_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_make_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_SUB_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*, i8*, i32)* @d_make_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_make_sub(%struct.d_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.d_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.d_info*, %struct.d_info** %4, align 8
  %9 = call %struct.demangle_component* @d_make_empty(%struct.d_info* %8)
  store %struct.demangle_component* %9, %struct.demangle_component** %7, align 8
  %10 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %11 = icmp ne %struct.demangle_component* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load i32, i32* @DEMANGLE_COMPONENT_SUB_STD, align 4
  %14 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %15 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %18 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i8* %16, i8** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %23 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 8
  br label %26

26:                                               ; preds = %12, %3
  %27 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  ret %struct.demangle_component* %27
}

declare dso_local %struct.demangle_component* @d_make_empty(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
