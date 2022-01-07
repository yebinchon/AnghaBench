; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivcanon.c_try_remove_empty_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivcanon.c_try_remove_empty_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { %struct.loop*, %struct.loop* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, i32*)* @try_remove_empty_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_remove_empty_loop(%struct.loop* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.loop*, align 8
  store %struct.loop* %0, %struct.loop** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.loop*, %struct.loop** %4, align 8
  %9 = getelementptr inbounds %struct.loop, %struct.loop* %8, i32 0, i32 1
  %10 = load %struct.loop*, %struct.loop** %9, align 8
  store %struct.loop* %10, %struct.loop** %7, align 8
  br label %11

11:                                               ; preds = %23, %2
  %12 = load %struct.loop*, %struct.loop** %7, align 8
  %13 = icmp ne %struct.loop* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.loop*, %struct.loop** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @try_remove_empty_loop(%struct.loop* %15, i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %14
  %24 = load %struct.loop*, %struct.loop** %7, align 8
  %25 = getelementptr inbounds %struct.loop, %struct.loop* %24, i32 0, i32 0
  %26 = load %struct.loop*, %struct.loop** %25, align 8
  store %struct.loop* %26, %struct.loop** %7, align 8
  br label %11

27:                                               ; preds = %11
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load %struct.loop*, %struct.loop** %4, align 8
  %32 = call i32 @empty_loop_p(%struct.loop* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30, %27
  store i32 0, i32* %3, align 4
  br label %39

35:                                               ; preds = %30
  %36 = load %struct.loop*, %struct.loop** %4, align 8
  %37 = call i32 @remove_empty_loop(%struct.loop* %36)
  %38 = load i32*, i32** %5, align 8
  store i32 1, i32* %38, align 4
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %34
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @empty_loop_p(%struct.loop*) #1

declare dso_local i32 @remove_empty_loop(%struct.loop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
