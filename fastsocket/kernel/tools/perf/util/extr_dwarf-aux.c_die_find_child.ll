; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dwarf-aux.c_die_find_child.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_dwarf-aux.c_die_find_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIE_FIND_CB_END = common dso_local global i32 0, align 4
@DIE_FIND_CB_CHILD = common dso_local global i32 0, align 4
@DIE_FIND_CB_SIBLING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @die_find_child(i32* %0, i32 (i32*, i8*)* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32 (i32*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 (i32*, i8*)* %1, i32 (i32*, i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 @dwarf_child(i32* %12, i32* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %58

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %55, %18
  %20 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %7, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 %20(i32* %21, i8* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @DIE_FIND_CB_END, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32*, i32** %9, align 8
  store i32* %28, i32** %5, align 8
  br label %58

29:                                               ; preds = %19
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @DIE_FIND_CB_CHILD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32*, i32** %9, align 8
  %36 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32* @die_find_child(i32* %35, i32 (i32*, i8*)* %36, i8* %37, i32* %10)
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @memcpy(i32* %41, i32* %10, i32 4)
  %43 = load i32*, i32** %9, align 8
  store i32* %43, i32** %5, align 8
  br label %58

44:                                               ; preds = %34, %29
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @DIE_FIND_CB_SIBLING, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i64 @dwarf_siblingof(i32* %51, i32* %52)
  %54 = icmp eq i64 %53, 0
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i1 [ false, %45 ], [ %54, %50 ]
  br i1 %56, label %19, label %57

57:                                               ; preds = %55
  store i32* null, i32** %5, align 8
  br label %58

58:                                               ; preds = %57, %40, %27, %17
  %59 = load i32*, i32** %5, align 8
  ret i32* %59
}

declare dso_local i32 @dwarf_child(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @dwarf_siblingof(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
