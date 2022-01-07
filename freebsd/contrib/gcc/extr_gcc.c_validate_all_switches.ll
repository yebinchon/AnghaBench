; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_validate_all_switches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_validate_all_switches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compiler = type { i64 }
%struct.spec_list = type { i64*, %struct.spec_list* }

@compilers = common dso_local global %struct.compiler* null, align 8
@specs = common dso_local global %struct.spec_list* null, align 8
@link_command_spec = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @validate_all_switches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_all_switches() #0 {
  %1 = alloca %struct.compiler*, align 8
  %2 = alloca %struct.spec_list*, align 8
  %3 = load %struct.compiler*, %struct.compiler** @compilers, align 8
  store %struct.compiler* %3, %struct.compiler** %1, align 8
  br label %4

4:                                                ; preds = %14, %0
  %5 = load %struct.compiler*, %struct.compiler** %1, align 8
  %6 = getelementptr inbounds %struct.compiler, %struct.compiler* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = load %struct.compiler*, %struct.compiler** %1, align 8
  %11 = getelementptr inbounds %struct.compiler, %struct.compiler* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @validate_switches_from_spec(i64 %12)
  br label %14

14:                                               ; preds = %9
  %15 = load %struct.compiler*, %struct.compiler** %1, align 8
  %16 = getelementptr inbounds %struct.compiler, %struct.compiler* %15, i32 1
  store %struct.compiler* %16, %struct.compiler** %1, align 8
  br label %4

17:                                               ; preds = %4
  %18 = load %struct.spec_list*, %struct.spec_list** @specs, align 8
  store %struct.spec_list* %18, %struct.spec_list** %2, align 8
  br label %19

19:                                               ; preds = %28, %17
  %20 = load %struct.spec_list*, %struct.spec_list** %2, align 8
  %21 = icmp ne %struct.spec_list* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load %struct.spec_list*, %struct.spec_list** %2, align 8
  %24 = getelementptr inbounds %struct.spec_list, %struct.spec_list* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @validate_switches_from_spec(i64 %26)
  br label %28

28:                                               ; preds = %22
  %29 = load %struct.spec_list*, %struct.spec_list** %2, align 8
  %30 = getelementptr inbounds %struct.spec_list, %struct.spec_list* %29, i32 0, i32 1
  %31 = load %struct.spec_list*, %struct.spec_list** %30, align 8
  store %struct.spec_list* %31, %struct.spec_list** %2, align 8
  br label %19

32:                                               ; preds = %19
  %33 = load i64, i64* @link_command_spec, align 8
  %34 = call i32 @validate_switches_from_spec(i64 %33)
  ret void
}

declare dso_local i32 @validate_switches_from_spec(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
