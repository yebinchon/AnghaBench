; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_flow_loops_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_flow_loops_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32, %struct.TYPE_2__, %struct.loop** }
%struct.TYPE_2__ = type { %struct.loop**, %struct.loop** }
%struct.loop = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flow_loops_free(%struct.loops* %0) #0 {
  %2 = alloca %struct.loops*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop*, align 8
  store %struct.loops* %0, %struct.loops** %2, align 8
  %5 = load %struct.loops*, %struct.loops** %2, align 8
  %6 = getelementptr inbounds %struct.loops, %struct.loops* %5, i32 0, i32 2
  %7 = load %struct.loop**, %struct.loop*** %6, align 8
  %8 = icmp ne %struct.loop** %7, null
  br i1 %8, label %9, label %68

9:                                                ; preds = %1
  %10 = load %struct.loops*, %struct.loops** %2, align 8
  %11 = getelementptr inbounds %struct.loops, %struct.loops* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @gcc_assert(i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %34, %9
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.loops*, %struct.loops** %2, align 8
  %17 = getelementptr inbounds %struct.loops, %struct.loops* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load %struct.loops*, %struct.loops** %2, align 8
  %22 = getelementptr inbounds %struct.loops, %struct.loops* %21, i32 0, i32 2
  %23 = load %struct.loop**, %struct.loop*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.loop*, %struct.loop** %23, i64 %25
  %27 = load %struct.loop*, %struct.loop** %26, align 8
  store %struct.loop* %27, %struct.loop** %4, align 8
  %28 = load %struct.loop*, %struct.loop** %4, align 8
  %29 = icmp ne %struct.loop* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %34

31:                                               ; preds = %20
  %32 = load %struct.loop*, %struct.loop** %4, align 8
  %33 = call i32 @flow_loop_free(%struct.loop* %32)
  br label %34

34:                                               ; preds = %31, %30
  %35 = load i32, i32* %3, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %14

37:                                               ; preds = %14
  %38 = load %struct.loops*, %struct.loops** %2, align 8
  %39 = getelementptr inbounds %struct.loops, %struct.loops* %38, i32 0, i32 2
  %40 = load %struct.loop**, %struct.loop*** %39, align 8
  %41 = call i32 @free(%struct.loop** %40)
  %42 = load %struct.loops*, %struct.loops** %2, align 8
  %43 = getelementptr inbounds %struct.loops, %struct.loops* %42, i32 0, i32 2
  store %struct.loop** null, %struct.loop*** %43, align 8
  %44 = load %struct.loops*, %struct.loops** %2, align 8
  %45 = getelementptr inbounds %struct.loops, %struct.loops* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.loop**, %struct.loop*** %46, align 8
  %48 = icmp ne %struct.loop** %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = load %struct.loops*, %struct.loops** %2, align 8
  %51 = getelementptr inbounds %struct.loops, %struct.loops* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load %struct.loop**, %struct.loop*** %52, align 8
  %54 = call i32 @free(%struct.loop** %53)
  br label %55

55:                                               ; preds = %49, %37
  %56 = load %struct.loops*, %struct.loops** %2, align 8
  %57 = getelementptr inbounds %struct.loops, %struct.loops* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.loop**, %struct.loop*** %58, align 8
  %60 = icmp ne %struct.loop** %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.loops*, %struct.loops** %2, align 8
  %63 = getelementptr inbounds %struct.loops, %struct.loops* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.loop**, %struct.loop*** %64, align 8
  %66 = call i32 @free(%struct.loop** %65)
  br label %67

67:                                               ; preds = %61, %55
  br label %68

68:                                               ; preds = %67, %1
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @flow_loop_free(%struct.loop*) #1

declare dso_local i32 @free(%struct.loop**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
