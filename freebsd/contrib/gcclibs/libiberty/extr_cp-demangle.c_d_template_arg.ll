; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_template_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_template_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_template_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_template_arg(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %5 = load %struct.d_info*, %struct.d_info** %3, align 8
  %6 = call i32 @d_peek_char(%struct.d_info* %5)
  switch i32 %6, label %21 [
    i32 88, label %7
    i32 76, label %18
  ]

7:                                                ; preds = %1
  %8 = load %struct.d_info*, %struct.d_info** %3, align 8
  %9 = call i32 @d_advance(%struct.d_info* %8, i32 1)
  %10 = load %struct.d_info*, %struct.d_info** %3, align 8
  %11 = call %struct.demangle_component* @d_expression(%struct.d_info* %10)
  store %struct.demangle_component* %11, %struct.demangle_component** %4, align 8
  %12 = load %struct.d_info*, %struct.d_info** %3, align 8
  %13 = call i32 @d_check_char(%struct.d_info* %12, i8 signext 69)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %24

16:                                               ; preds = %7
  %17 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %17, %struct.demangle_component** %2, align 8
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.d_info*, %struct.d_info** %3, align 8
  %20 = call %struct.demangle_component* @d_expr_primary(%struct.d_info* %19)
  store %struct.demangle_component* %20, %struct.demangle_component** %2, align 8
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.d_info*, %struct.d_info** %3, align 8
  %23 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %22)
  store %struct.demangle_component* %23, %struct.demangle_component** %2, align 8
  br label %24

24:                                               ; preds = %21, %18, %16, %15
  %25 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %25
}

declare dso_local i32 @d_peek_char(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_expression(%struct.d_info*) #1

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @d_expr_primary(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @cplus_demangle_type(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
