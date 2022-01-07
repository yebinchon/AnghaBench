; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_equiv_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_equiv_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_ENUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*, %struct.type*)* @equiv_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @equiv_types(%struct.type* %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.type* %1, %struct.type** %5, align 8
  %6 = load %struct.type*, %struct.type** %4, align 8
  %7 = load %struct.type*, %struct.type** %5, align 8
  %8 = icmp eq %struct.type* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %50

10:                                               ; preds = %2
  %11 = load %struct.type*, %struct.type** %4, align 8
  %12 = icmp eq %struct.type* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = load %struct.type*, %struct.type** %5, align 8
  %15 = icmp eq %struct.type* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load %struct.type*, %struct.type** %4, align 8
  %18 = call i64 @TYPE_CODE(%struct.type* %17)
  %19 = load %struct.type*, %struct.type** %5, align 8
  %20 = call i64 @TYPE_CODE(%struct.type* %19)
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %13, %10
  store i32 0, i32* %3, align 4
  br label %50

23:                                               ; preds = %16
  %24 = load %struct.type*, %struct.type** %4, align 8
  %25 = call i64 @TYPE_CODE(%struct.type* %24)
  %26 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.type*, %struct.type** %4, align 8
  %30 = call i64 @TYPE_CODE(%struct.type* %29)
  %31 = load i64, i64* @TYPE_CODE_ENUM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %28, %23
  %34 = load %struct.type*, %struct.type** %4, align 8
  %35 = call i32* @ada_type_name(%struct.type* %34)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.type*, %struct.type** %5, align 8
  %39 = call i32* @ada_type_name(%struct.type* %38)
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load %struct.type*, %struct.type** %4, align 8
  %43 = call i32* @ada_type_name(%struct.type* %42)
  %44 = load %struct.type*, %struct.type** %5, align 8
  %45 = call i32* @ada_type_name(%struct.type* %44)
  %46 = call i64 @DEPRECATED_STREQ(i32* %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %50

49:                                               ; preds = %41, %37, %33, %28
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %48, %22, %9
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32* @ada_type_name(%struct.type*) #1

declare dso_local i64 @DEPRECATED_STREQ(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
