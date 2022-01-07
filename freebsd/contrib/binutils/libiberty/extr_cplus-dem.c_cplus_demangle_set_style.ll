; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_cplus_demangle_set_style.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cplus-dem.c_cplus_demangle_set_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangler_engine = type { i64 }

@libiberty_demanglers = common dso_local global %struct.demangler_engine* null, align 8
@unknown_demangling = common dso_local global i64 0, align 8
@current_demangling_style = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cplus_demangle_set_style(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.demangler_engine*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.demangler_engine*, %struct.demangler_engine** @libiberty_demanglers, align 8
  store %struct.demangler_engine* %5, %struct.demangler_engine** %4, align 8
  br label %6

6:                                                ; preds = %23, %1
  %7 = load %struct.demangler_engine*, %struct.demangler_engine** %4, align 8
  %8 = getelementptr inbounds %struct.demangler_engine, %struct.demangler_engine* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @unknown_demangling, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = load %struct.demangler_engine*, %struct.demangler_engine** %4, align 8
  %16 = getelementptr inbounds %struct.demangler_engine, %struct.demangler_engine* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* @current_demangling_style, align 4
  %21 = load i32, i32* @current_demangling_style, align 4
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.demangler_engine*, %struct.demangler_engine** %4, align 8
  %25 = getelementptr inbounds %struct.demangler_engine, %struct.demangler_engine* %24, i32 1
  store %struct.demangler_engine* %25, %struct.demangler_engine** %4, align 8
  br label %6

26:                                               ; preds = %6
  %27 = load i64, i64* @unknown_demangling, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
