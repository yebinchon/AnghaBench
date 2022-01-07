; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_total_number_of_methods.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_total_number_of_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*)* @total_number_of_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @total_number_of_methods(%struct.type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  %6 = load %struct.type*, %struct.type** %3, align 8
  %7 = call i32 @CHECK_TYPEDEF(%struct.type* %6)
  %8 = load %struct.type*, %struct.type** %3, align 8
  %9 = call i32* @TYPE_CPLUS_SPECIFIC(%struct.type* %8)
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.type*, %struct.type** %3, align 8
  %14 = call i32 @TYPE_NFN_FIELDS_TOTAL(%struct.type* %13)
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %27, %12
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.type*, %struct.type** %3, align 8
  %18 = call i32 @TYPE_N_BASECLASSES(%struct.type* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.type*, %struct.type** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.type* @TYPE_BASECLASS(%struct.type* %21, i32 %22)
  %24 = call i32 @total_number_of_methods(%struct.type* %23)
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %15

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32* @TYPE_CPLUS_SPECIFIC(%struct.type*) #1

declare dso_local i32 @TYPE_NFN_FIELDS_TOTAL(%struct.type*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local %struct.type* @TYPE_BASECLASS(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
