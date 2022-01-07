; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_source_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_source_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { %struct.demangle_component* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_source_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_source_name(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %6 = load %struct.d_info*, %struct.d_info** %3, align 8
  %7 = call i64 @d_number(%struct.d_info* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.d_info*, %struct.d_info** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call %struct.demangle_component* @d_identifier(%struct.d_info* %12, i64 %13)
  store %struct.demangle_component* %14, %struct.demangle_component** %5, align 8
  %15 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %16 = load %struct.d_info*, %struct.d_info** %3, align 8
  %17 = getelementptr inbounds %struct.d_info, %struct.d_info* %16, i32 0, i32 0
  store %struct.demangle_component* %15, %struct.demangle_component** %17, align 8
  %18 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  store %struct.demangle_component* %18, %struct.demangle_component** %2, align 8
  br label %19

19:                                               ; preds = %11, %10
  %20 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %20
}

declare dso_local i64 @d_number(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_identifier(%struct.d_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
