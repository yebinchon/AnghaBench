; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dwarf-aux.c_cu_walk_functions_at.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dwarf-aux.c_cu_walk_functions_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4
@__die_find_inline_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cu_walk_functions_at(i32* %0, i32 %1, i32 (i32*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (i32*, i8*)* %2, i32 (i32*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32* @die_find_realfunc(i32* %14, i32 %15, i32* %9)
  store i32* %16, i32** %10, align 8
  br label %17

17:                                               ; preds = %29, %4
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %7, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 %21(i32* %22, i8* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %33

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* @__die_find_inline_cb, align 4
  %32 = call i32* @die_find_child(i32* %30, i32 %31, i32* %6, i32* %9)
  store i32* %32, i32** %10, align 8
  br label %17

33:                                               ; preds = %27, %17
  %34 = load i32, i32* %11, align 4
  ret i32 %34
}

declare dso_local i32* @die_find_realfunc(i32*, i32, i32*) #1

declare dso_local i32* @die_find_child(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
