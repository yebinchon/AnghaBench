; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c__Unwind_GetGR.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c__Unwind_GetGR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Context = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_Unwind_GetGR(%struct._Unwind_Context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._Unwind_Context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct._Unwind_Context* %0, %struct._Unwind_Context** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %12 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 15
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 18
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %22 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 15
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %17, %14
  %30 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @unw_access_gr(%struct._Unwind_Context* %30, i32 %31, i32* %6, i8* %7, i32 0)
  br label %33

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %20, %10
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @unw_access_gr(%struct._Unwind_Context*, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
