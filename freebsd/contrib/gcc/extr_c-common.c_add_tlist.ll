; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_add_tlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_add_tlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlist = type { i64, i32, %struct.tlist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tlist**, %struct.tlist*, i64, i32)* @add_tlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_tlist(%struct.tlist** %0, %struct.tlist* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.tlist**, align 8
  %6 = alloca %struct.tlist*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tlist*, align 8
  store %struct.tlist** %0, %struct.tlist*** %5, align 8
  store %struct.tlist* %1, %struct.tlist** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  br label %10

10:                                               ; preds = %51, %4
  %11 = load %struct.tlist*, %struct.tlist** %6, align 8
  %12 = icmp ne %struct.tlist* %11, null
  br i1 %12, label %13, label %53

13:                                               ; preds = %10
  %14 = load %struct.tlist*, %struct.tlist** %6, align 8
  %15 = getelementptr inbounds %struct.tlist, %struct.tlist* %14, i32 0, i32 2
  %16 = load %struct.tlist*, %struct.tlist** %15, align 8
  store %struct.tlist* %16, %struct.tlist** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.tlist**, %struct.tlist*** %5, align 8
  %21 = load %struct.tlist*, %struct.tlist** %20, align 8
  %22 = load %struct.tlist*, %struct.tlist** %6, align 8
  %23 = getelementptr inbounds %struct.tlist, %struct.tlist* %22, i32 0, i32 2
  store %struct.tlist* %21, %struct.tlist** %23, align 8
  br label %24

24:                                               ; preds = %19, %13
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.tlist*, %struct.tlist** %6, align 8
  %29 = getelementptr inbounds %struct.tlist, %struct.tlist* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %27, %24
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.tlist**, %struct.tlist*** %5, align 8
  %38 = load %struct.tlist*, %struct.tlist** %37, align 8
  %39 = load %struct.tlist*, %struct.tlist** %6, align 8
  %40 = getelementptr inbounds %struct.tlist, %struct.tlist* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.tlist*, %struct.tlist** %6, align 8
  %43 = getelementptr inbounds %struct.tlist, %struct.tlist* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.tlist* @new_tlist(%struct.tlist* %38, i32 %41, i64 %44)
  br label %48

46:                                               ; preds = %33
  %47 = load %struct.tlist*, %struct.tlist** %6, align 8
  br label %48

48:                                               ; preds = %46, %36
  %49 = phi %struct.tlist* [ %45, %36 ], [ %47, %46 ]
  %50 = load %struct.tlist**, %struct.tlist*** %5, align 8
  store %struct.tlist* %49, %struct.tlist** %50, align 8
  br label %51

51:                                               ; preds = %48, %27
  %52 = load %struct.tlist*, %struct.tlist** %9, align 8
  store %struct.tlist* %52, %struct.tlist** %6, align 8
  br label %10

53:                                               ; preds = %10
  ret void
}

declare dso_local %struct.tlist* @new_tlist(%struct.tlist*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
