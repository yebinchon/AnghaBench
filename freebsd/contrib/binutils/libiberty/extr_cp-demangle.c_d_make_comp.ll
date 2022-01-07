; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_make_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_make_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_info = type { i32 }
%struct.demangle_component = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.demangle_component*, %struct.demangle_component* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*)* @d_make_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_make_comp(%struct.d_info* %0, i32 %1, %struct.demangle_component* %2, %struct.demangle_component* %3) #0 {
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca %struct.d_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.demangle_component*, align 8
  %9 = alloca %struct.demangle_component*, align 8
  %10 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.demangle_component* %2, %struct.demangle_component** %8, align 8
  store %struct.demangle_component* %3, %struct.demangle_component** %9, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %31 [
    i32 150, label %12
    i32 153, label %12
    i32 139, label %12
    i32 145, label %12
    i32 163, label %12
    i32 133, label %12
    i32 151, label %12
    i32 135, label %12
    i32 168, label %12
    i32 167, label %12
    i32 142, label %12
    i32 141, label %12
    i32 140, label %12
    i32 155, label %12
    i32 154, label %12
    i32 129, label %20
    i32 128, label %20
    i32 138, label %20
    i32 136, label %20
    i32 137, label %20
    i32 143, label %20
    i32 132, label %20
    i32 161, label %20
    i32 156, label %20
    i32 159, label %20
    i32 148, label %20
    i32 158, label %20
    i32 152, label %20
    i32 149, label %20
    i32 165, label %20
    i32 157, label %20
    i32 134, label %20
    i32 170, label %20
    i32 144, label %20
    i32 166, label %20
    i32 169, label %25
    i32 160, label %30
    i32 147, label %30
    i32 131, label %30
    i32 164, label %30
    i32 146, label %30
    i32 130, label %30
    i32 162, label %30
  ]

12:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %13 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  %14 = icmp eq %struct.demangle_component* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %17 = icmp eq %struct.demangle_component* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12
  store %struct.demangle_component* null, %struct.demangle_component** %5, align 8
  br label %53

19:                                               ; preds = %15
  br label %32

20:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %21 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  %22 = icmp eq %struct.demangle_component* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store %struct.demangle_component* null, %struct.demangle_component** %5, align 8
  br label %53

24:                                               ; preds = %20
  br label %32

25:                                               ; preds = %4
  %26 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %27 = icmp eq %struct.demangle_component* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store %struct.demangle_component* null, %struct.demangle_component** %5, align 8
  br label %53

29:                                               ; preds = %25
  br label %32

30:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  br label %32

31:                                               ; preds = %4
  store %struct.demangle_component* null, %struct.demangle_component** %5, align 8
  br label %53

32:                                               ; preds = %30, %29, %24, %19
  %33 = load %struct.d_info*, %struct.d_info** %6, align 8
  %34 = call %struct.demangle_component* @d_make_empty(%struct.d_info* %33)
  store %struct.demangle_component* %34, %struct.demangle_component** %10, align 8
  %35 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %36 = icmp ne %struct.demangle_component* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %40 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  %42 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %43 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store %struct.demangle_component* %41, %struct.demangle_component** %45, align 8
  %46 = load %struct.demangle_component*, %struct.demangle_component** %9, align 8
  %47 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  %48 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store %struct.demangle_component* %46, %struct.demangle_component** %50, align 8
  br label %51

51:                                               ; preds = %37, %32
  %52 = load %struct.demangle_component*, %struct.demangle_component** %10, align 8
  store %struct.demangle_component* %52, %struct.demangle_component** %5, align 8
  br label %53

53:                                               ; preds = %51, %31, %28, %23, %18
  %54 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  ret %struct.demangle_component* %54
}

declare dso_local %struct.demangle_component* @d_make_empty(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
