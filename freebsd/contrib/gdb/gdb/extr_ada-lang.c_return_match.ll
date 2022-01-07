; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_return_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_return_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_ENUM = common dso_local global i64 0, align 8
@TYPE_CODE_VOID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*, %struct.type*)* @return_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @return_match(%struct.type* %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  %7 = load %struct.type*, %struct.type** %4, align 8
  %8 = icmp eq %struct.type* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %45

10:                                               ; preds = %2
  %11 = load %struct.type*, %struct.type** %6, align 8
  %12 = icmp eq %struct.type* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %45

14:                                               ; preds = %10
  %15 = load %struct.type*, %struct.type** %6, align 8
  %16 = call i64 @TYPE_CODE(%struct.type* %15)
  %17 = load i64, i64* @TYPE_CODE_ENUM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.type*, %struct.type** %5, align 8
  %21 = icmp eq %struct.type* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load %struct.type*, %struct.type** %6, align 8
  %24 = load %struct.type*, %struct.type** %5, align 8
  %25 = icmp eq %struct.type* %23, %24
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ true, %19 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %45

29:                                               ; preds = %14
  %30 = load %struct.type*, %struct.type** %5, align 8
  %31 = icmp eq %struct.type* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.type*, %struct.type** %6, align 8
  %34 = call i64 @TYPE_CODE(%struct.type* %33)
  %35 = load i64, i64* @TYPE_CODE_VOID, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %45

38:                                               ; preds = %29
  %39 = load %struct.type*, %struct.type** %6, align 8
  %40 = call i64 @TYPE_CODE(%struct.type* %39)
  %41 = load %struct.type*, %struct.type** %5, align 8
  %42 = call i64 @TYPE_CODE(%struct.type* %41)
  %43 = icmp eq i64 %40, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %32, %26, %13, %9
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
