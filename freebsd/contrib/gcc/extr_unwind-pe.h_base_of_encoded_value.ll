; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-pe.h_base_of_encoded_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-pe.h_base_of_encoded_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Context = type { i32 }

@DW_EH_PE_omit = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct._Unwind_Context*)* @base_of_encoded_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_of_encoded_value(i8 zeroext %0, %struct._Unwind_Context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct._Unwind_Context*, align 8
  store i8 %0, i8* %4, align 1
  store %struct._Unwind_Context* %1, %struct._Unwind_Context** %5, align 8
  %6 = load i8, i8* %4, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* @DW_EH_PE_omit, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 112
  switch i32 %15, label %26 [
    i32 133, label %16
    i32 129, label %16
    i32 132, label %16
    i32 128, label %17
    i32 131, label %20
    i32 130, label %23
  ]

16:                                               ; preds = %12, %12, %12
  store i32 0, i32* %3, align 4
  br label %28

17:                                               ; preds = %12
  %18 = load %struct._Unwind_Context*, %struct._Unwind_Context** %5, align 8
  %19 = call i32 @_Unwind_GetTextRelBase(%struct._Unwind_Context* %18)
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %12
  %21 = load %struct._Unwind_Context*, %struct._Unwind_Context** %5, align 8
  %22 = call i32 @_Unwind_GetDataRelBase(%struct._Unwind_Context* %21)
  store i32 %22, i32* %3, align 4
  br label %28

23:                                               ; preds = %12
  %24 = load %struct._Unwind_Context*, %struct._Unwind_Context** %5, align 8
  %25 = call i32 @_Unwind_GetRegionStart(%struct._Unwind_Context* %24)
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %12
  %27 = call i32 (...) @__gxx_abort()
  br label %28

28:                                               ; preds = %26, %23, %20, %17, %16, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @_Unwind_GetTextRelBase(%struct._Unwind_Context*) #1

declare dso_local i32 @_Unwind_GetDataRelBase(%struct._Unwind_Context*) #1

declare dso_local i32 @_Unwind_GetRegionStart(%struct._Unwind_Context*) #1

declare dso_local i32 @__gxx_abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
