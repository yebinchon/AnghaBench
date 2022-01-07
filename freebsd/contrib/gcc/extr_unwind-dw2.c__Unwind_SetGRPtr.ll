; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2.c__Unwind_SetGRPtr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2.c__Unwind_SetGRPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Context = type { i8**, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._Unwind_Context*, i32, i8*)* @_Unwind_SetGRPtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Unwind_SetGRPtr(%struct._Unwind_Context* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct._Unwind_Context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct._Unwind_Context* %0, %struct._Unwind_Context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @DWARF_REG_TO_UNWIND_COLUMN(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %10 = call i64 @_Unwind_IsExtendedContext(%struct._Unwind_Context* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %14 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %12, %3
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %22 = getelementptr inbounds %struct._Unwind_Context, %struct._Unwind_Context* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  store i8* %20, i8** %26, align 8
  ret void
}

declare dso_local i32 @DWARF_REG_TO_UNWIND_COLUMN(i32) #1

declare dso_local i64 @_Unwind_IsExtendedContext(%struct._Unwind_Context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
