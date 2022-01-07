; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_slot_alignment_is_next_even.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_slot_alignment_is_next_even.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*)* @slot_alignment_is_next_even to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slot_alignment_is_next_even(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  %5 = load %struct.type*, %struct.type** %3, align 8
  %6 = call i32 @TYPE_CODE(%struct.type* %5)
  switch i32 %6, label %37 [
    i32 129, label %7
    i32 130, label %7
    i32 131, label %13
    i32 128, label %18
  ]

7:                                                ; preds = %1, %1
  %8 = load %struct.type*, %struct.type** %3, align 8
  %9 = call i32 @TYPE_LENGTH(%struct.type* %8)
  %10 = icmp sgt i32 %9, 8
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %38

12:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.type*, %struct.type** %3, align 8
  %15 = call i32 @TYPE_TARGET_TYPE(%struct.type* %14)
  %16 = call %struct.type* @check_typedef(i32 %15)
  %17 = call i32 @slot_alignment_is_next_even(%struct.type* %16)
  store i32 %17, i32* %2, align 4
  br label %38

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %33, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.type*, %struct.type** %3, align 8
  %22 = call i32 @TYPE_NFIELDS(%struct.type* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.type*, %struct.type** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @TYPE_FIELD_TYPE(%struct.type* %25, i32 %26)
  %28 = call %struct.type* @check_typedef(i32 %27)
  %29 = call i32 @slot_alignment_is_next_even(%struct.type* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %38

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %19

36:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %38

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %36, %31, %13, %12, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
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
