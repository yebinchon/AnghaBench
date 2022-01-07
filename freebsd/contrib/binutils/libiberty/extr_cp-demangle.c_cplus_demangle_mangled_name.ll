; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_cplus_demangle_mangled_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_cplus_demangle_mangled_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.demangle_component* @cplus_demangle_mangled_name(%struct.d_info* %0, i32 %1) #0 {
  %3 = alloca %struct.demangle_component*, align 8
  %4 = alloca %struct.d_info*, align 8
  %5 = alloca i32, align 4
  store %struct.d_info* %0, %struct.d_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.d_info*, %struct.d_info** %4, align 8
  %7 = call i32 @d_check_char(%struct.d_info* %6, i8 signext 95)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %19

10:                                               ; preds = %2
  %11 = load %struct.d_info*, %struct.d_info** %4, align 8
  %12 = call i32 @d_check_char(%struct.d_info* %11, i8 signext 90)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %19

15:                                               ; preds = %10
  %16 = load %struct.d_info*, %struct.d_info** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.demangle_component* @d_encoding(%struct.d_info* %16, i32 %17)
  store %struct.demangle_component* %18, %struct.demangle_component** %3, align 8
  br label %19

19:                                               ; preds = %15, %14, %9
  %20 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  ret %struct.demangle_component* %20
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @d_encoding(%struct.d_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
