; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_mouse.c_any_mouse_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_mouse.c_any_mouse_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, %struct.TYPE_4__* }

@regionList = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32, i32, i32)* @any_mouse_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @any_mouse_region(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @regionList, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %7, align 8
  br label %9

9:                                                ; preds = %49, %3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %53

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = xor i32 %13, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %49

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22
  br label %49

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %35
  br label %49

48:                                               ; preds = %41
  br label %53

49:                                               ; preds = %47, %34, %21
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %7, align 8
  br label %9

53:                                               ; preds = %48, %9
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  ret %struct.TYPE_4__* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
