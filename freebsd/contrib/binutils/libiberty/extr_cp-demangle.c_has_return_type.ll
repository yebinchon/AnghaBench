; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_has_return_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_has_return_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demangle_component*)* @has_return_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_return_type(%struct.demangle_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.demangle_component*, align 8
  store %struct.demangle_component* %0, %struct.demangle_component** %3, align 8
  %4 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  %5 = icmp eq %struct.demangle_component* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

7:                                                ; preds = %1
  %8 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  %9 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %11 [
    i32 129, label %12
    i32 130, label %19
    i32 128, label %19
    i32 131, label %19
  ]

11:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %23

12:                                               ; preds = %7
  %13 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  %14 = call %struct.demangle_component* @d_left(%struct.demangle_component* %13)
  %15 = call i32 @is_ctor_dtor_or_conversion(%struct.demangle_component* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %23

19:                                               ; preds = %7, %7, %7
  %20 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  %21 = call %struct.demangle_component* @d_left(%struct.demangle_component* %20)
  %22 = call i32 @has_return_type(%struct.demangle_component* %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %19, %12, %11, %6
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @is_ctor_dtor_or_conversion(%struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_left(%struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
