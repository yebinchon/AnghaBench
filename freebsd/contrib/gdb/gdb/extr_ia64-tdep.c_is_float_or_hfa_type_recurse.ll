; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_is_float_or_hfa_type_recurse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_is_float_or_hfa_type_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*, %struct.type**)* @is_float_or_hfa_type_recurse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_float_or_hfa_type_recurse(%struct.type* %0, %struct.type** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.type**, align 8
  %6 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %4, align 8
  store %struct.type** %1, %struct.type*** %5, align 8
  %7 = load %struct.type*, %struct.type** %4, align 8
  %8 = call i32 @TYPE_CODE(%struct.type* %7)
  switch i32 %8, label %50 [
    i32 129, label %9
    i32 130, label %24
    i32 128, label %30
  ]

9:                                                ; preds = %2
  %10 = load %struct.type**, %struct.type*** %5, align 8
  %11 = load %struct.type*, %struct.type** %10, align 8
  %12 = icmp ne %struct.type* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load %struct.type**, %struct.type*** %5, align 8
  %15 = load %struct.type*, %struct.type** %14, align 8
  %16 = call i32 @TYPE_LENGTH(%struct.type* %15)
  %17 = load %struct.type*, %struct.type** %4, align 8
  %18 = call i32 @TYPE_LENGTH(%struct.type* %17)
  %19 = icmp eq i32 %16, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %51

21:                                               ; preds = %9
  %22 = load %struct.type*, %struct.type** %4, align 8
  %23 = load %struct.type**, %struct.type*** %5, align 8
  store %struct.type* %22, %struct.type** %23, align 8
  store i32 1, i32* %3, align 4
  br label %51

24:                                               ; preds = %2
  %25 = load %struct.type*, %struct.type** %4, align 8
  %26 = call i32 @TYPE_TARGET_TYPE(%struct.type* %25)
  %27 = call %struct.type* @check_typedef(i32 %26)
  %28 = load %struct.type**, %struct.type*** %5, align 8
  %29 = call i32 @is_float_or_hfa_type_recurse(%struct.type* %27, %struct.type** %28)
  store i32 %29, i32* %3, align 4
  br label %51

30:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.type*, %struct.type** %4, align 8
  %34 = call i32 @TYPE_NFIELDS(%struct.type* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.type*, %struct.type** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @TYPE_FIELD_TYPE(%struct.type* %37, i32 %38)
  %40 = call %struct.type* @check_typedef(i32 %39)
  %41 = load %struct.type**, %struct.type*** %5, align 8
  %42 = call i32 @is_float_or_hfa_type_recurse(%struct.type* %40, %struct.type** %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %51

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %31

49:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %51

50:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %44, %24, %21, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
