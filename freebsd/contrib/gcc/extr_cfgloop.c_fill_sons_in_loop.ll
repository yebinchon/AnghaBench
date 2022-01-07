; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_fill_sons_in_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_fill_sons_in_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@CDI_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*, i32*, i32**, i32*)* @fill_sons_in_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_sons_in_loop(%struct.loop* %0, i32* %1, i32** %2, i32* %3) #0 {
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.loop* %0, %struct.loop** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32**, i32*** %7, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i32*, i32** %12, i64 %16
  store i32* %11, i32** %17, align 8
  %18 = load i32, i32* @CDI_DOMINATORS, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @first_dom_son(i32 %18, i32* %19)
  store i32* %20, i32** %9, align 8
  br label %21

21:                                               ; preds = %45, %4
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load %struct.loop*, %struct.loop** %5, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @flow_bb_inside_loop_p(%struct.loop* %25, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %45

30:                                               ; preds = %24
  %31 = load i32, i32* @CDI_DOMINATORS, align 4
  %32 = load %struct.loop*, %struct.loop** %5, align 8
  %33 = getelementptr inbounds %struct.loop, %struct.loop* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @dominated_by_p(i32 %31, i32 %34, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32*, i32** %9, align 8
  store i32* %39, i32** %10, align 8
  br label %45

40:                                               ; preds = %30
  %41 = load %struct.loop*, %struct.loop** %5, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32**, i32*** %7, align 8
  %44 = load i32*, i32** %8, align 8
  call void @fill_sons_in_loop(%struct.loop* %41, i32* %42, i32** %43, i32* %44)
  br label %45

45:                                               ; preds = %40, %38, %29
  %46 = load i32, i32* @CDI_DOMINATORS, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = call i32* @next_dom_son(i32 %46, i32* %47)
  store i32* %48, i32** %9, align 8
  br label %21

49:                                               ; preds = %21
  %50 = load i32*, i32** %10, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.loop*, %struct.loop** %5, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32**, i32*** %7, align 8
  %56 = load i32*, i32** %8, align 8
  call void @fill_sons_in_loop(%struct.loop* %53, i32* %54, i32** %55, i32* %56)
  br label %57

57:                                               ; preds = %52, %49
  ret void
}

declare dso_local i32* @first_dom_son(i32, i32*) #1

declare dso_local i32 @flow_bb_inside_loop_p(%struct.loop*, i32*) #1

declare dso_local i64 @dominated_by_p(i32, i32, i32*) #1

declare dso_local i32* @next_dom_son(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
