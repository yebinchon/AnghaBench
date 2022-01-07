; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_add_substitution.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_add_substitution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_info = type { i64, i64, %struct.demangle_component** }
%struct.demangle_component = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d_info*, %struct.demangle_component*)* @d_add_substitution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d_add_substitution(%struct.d_info* %0, %struct.demangle_component* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d_info*, align 8
  %5 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %4, align 8
  store %struct.demangle_component* %1, %struct.demangle_component** %5, align 8
  %6 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %7 = icmp eq %struct.demangle_component* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

9:                                                ; preds = %2
  %10 = load %struct.d_info*, %struct.d_info** %4, align 8
  %11 = getelementptr inbounds %struct.d_info, %struct.d_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.d_info*, %struct.d_info** %4, align 8
  %14 = getelementptr inbounds %struct.d_info, %struct.d_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %31

18:                                               ; preds = %9
  %19 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %20 = load %struct.d_info*, %struct.d_info** %4, align 8
  %21 = getelementptr inbounds %struct.d_info, %struct.d_info* %20, i32 0, i32 2
  %22 = load %struct.demangle_component**, %struct.demangle_component*** %21, align 8
  %23 = load %struct.d_info*, %struct.d_info** %4, align 8
  %24 = getelementptr inbounds %struct.d_info, %struct.d_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.demangle_component*, %struct.demangle_component** %22, i64 %25
  store %struct.demangle_component* %19, %struct.demangle_component** %26, align 8
  %27 = load %struct.d_info*, %struct.d_info** %4, align 8
  %28 = getelementptr inbounds %struct.d_info, %struct.d_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %28, align 8
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %18, %17, %8
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
