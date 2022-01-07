; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_nested_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_nested_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_nested_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_nested_name(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca %struct.demangle_component**, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %6 = load %struct.d_info*, %struct.d_info** %3, align 8
  %7 = call i32 @d_check_char(%struct.d_info* %6, i8 signext 78)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.d_info*, %struct.d_info** %3, align 8
  %12 = call %struct.demangle_component** @d_cv_qualifiers(%struct.d_info* %11, %struct.demangle_component** %4, i32 1)
  store %struct.demangle_component** %12, %struct.demangle_component*** %5, align 8
  %13 = load %struct.demangle_component**, %struct.demangle_component*** %5, align 8
  %14 = icmp eq %struct.demangle_component** %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %31

16:                                               ; preds = %10
  %17 = load %struct.d_info*, %struct.d_info** %3, align 8
  %18 = call %struct.demangle_component* @d_prefix(%struct.d_info* %17)
  %19 = load %struct.demangle_component**, %struct.demangle_component*** %5, align 8
  store %struct.demangle_component* %18, %struct.demangle_component** %19, align 8
  %20 = load %struct.demangle_component**, %struct.demangle_component*** %5, align 8
  %21 = load %struct.demangle_component*, %struct.demangle_component** %20, align 8
  %22 = icmp eq %struct.demangle_component* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %31

24:                                               ; preds = %16
  %25 = load %struct.d_info*, %struct.d_info** %3, align 8
  %26 = call i32 @d_check_char(%struct.d_info* %25, i8 signext 69)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %31

29:                                               ; preds = %24
  %30 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %30, %struct.demangle_component** %2, align 8
  br label %31

31:                                               ; preds = %29, %28, %23, %15, %9
  %32 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %32
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local %struct.demangle_component** @d_cv_qualifiers(%struct.d_info*, %struct.demangle_component**, i32) #1

declare dso_local %struct.demangle_component* @d_prefix(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
