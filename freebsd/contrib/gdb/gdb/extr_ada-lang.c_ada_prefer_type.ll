; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_prefer_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_prefer_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_VOID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_prefer_type(%struct.type* %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  %6 = load %struct.type*, %struct.type** %5, align 8
  %7 = icmp eq %struct.type* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %55

9:                                                ; preds = %2
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = icmp eq %struct.type* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %55

13:                                               ; preds = %9
  %14 = load %struct.type*, %struct.type** %5, align 8
  %15 = call i64 @TYPE_CODE(%struct.type* %14)
  %16 = load i64, i64* @TYPE_CODE_VOID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %55

19:                                               ; preds = %13
  %20 = load %struct.type*, %struct.type** %4, align 8
  %21 = call i64 @TYPE_CODE(%struct.type* %20)
  %22 = load i64, i64* @TYPE_CODE_VOID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %55

25:                                               ; preds = %19
  %26 = load %struct.type*, %struct.type** %4, align 8
  %27 = call i64 @ada_is_packed_array_type(%struct.type* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %55

30:                                               ; preds = %25
  %31 = load %struct.type*, %struct.type** %4, align 8
  %32 = call i64 @ada_is_array_descriptor(%struct.type* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.type*, %struct.type** %5, align 8
  %36 = call i64 @ada_is_array_descriptor(%struct.type* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %55

39:                                               ; preds = %34, %30
  %40 = load %struct.type*, %struct.type** %4, align 8
  %41 = call i32* @ada_renaming_type(%struct.type* %40)
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.type*, %struct.type** %5, align 8
  %45 = call i32* @ada_renaming_type(%struct.type* %44)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %55

48:                                               ; preds = %43, %39
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %47, %38, %29, %24, %18, %12, %8
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @ada_is_packed_array_type(%struct.type*) #1

declare dso_local i64 @ada_is_array_descriptor(%struct.type*) #1

declare dso_local i32* @ada_renaming_type(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
