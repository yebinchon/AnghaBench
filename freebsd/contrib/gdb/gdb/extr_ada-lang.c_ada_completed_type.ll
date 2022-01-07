; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_completed_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_completed_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_ENUM = common dso_local global i64 0, align 8
@TYPE_FLAG_STUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @ada_completed_type(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %6 = load %struct.type*, %struct.type** %3, align 8
  %7 = call i32 @CHECK_TYPEDEF(%struct.type* %6)
  %8 = load %struct.type*, %struct.type** %3, align 8
  %9 = icmp eq %struct.type* %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %1
  %11 = load %struct.type*, %struct.type** %3, align 8
  %12 = call i64 @TYPE_CODE(%struct.type* %11)
  %13 = load i64, i64* @TYPE_CODE_ENUM, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = load %struct.type*, %struct.type** %3, align 8
  %17 = call i32 @TYPE_FLAGS(%struct.type* %16)
  %18 = load i32, i32* @TYPE_FLAG_STUB, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load %struct.type*, %struct.type** %3, align 8
  %23 = call i8* @TYPE_TAG_NAME(%struct.type* %22)
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %15, %10, %1
  %26 = load %struct.type*, %struct.type** %3, align 8
  store %struct.type* %26, %struct.type** %2, align 8
  br label %40

27:                                               ; preds = %21
  %28 = load %struct.type*, %struct.type** %3, align 8
  %29 = call i8* @TYPE_TAG_NAME(%struct.type* %28)
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call %struct.type* @ada_find_any_type(i8* %30)
  store %struct.type* %31, %struct.type** %5, align 8
  %32 = load %struct.type*, %struct.type** %5, align 8
  %33 = icmp eq %struct.type* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load %struct.type*, %struct.type** %3, align 8
  br label %38

36:                                               ; preds = %27
  %37 = load %struct.type*, %struct.type** %5, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi %struct.type* [ %35, %34 ], [ %37, %36 ]
  store %struct.type* %39, %struct.type** %2, align 8
  br label %40

40:                                               ; preds = %38, %25
  %41 = load %struct.type*, %struct.type** %2, align 8
  ret %struct.type* %41
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_FLAGS(%struct.type*) #1

declare dso_local i8* @TYPE_TAG_NAME(%struct.type*) #1

declare dso_local %struct.type* @ada_find_any_type(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
