; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_initialize_cframe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_initialize_cframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.conditional_frame = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@current_cframe = common dso_local global %struct.TYPE_4__* null, align 8
@macro_nest = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conditional_frame*)* @initialize_cframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_cframe(%struct.conditional_frame* %0) #0 {
  %2 = alloca %struct.conditional_frame*, align 8
  store %struct.conditional_frame* %0, %struct.conditional_frame** %2, align 8
  %3 = load %struct.conditional_frame*, %struct.conditional_frame** %2, align 8
  %4 = call i32 @memset(%struct.conditional_frame* %3, i32 0, i32 24)
  %5 = load %struct.conditional_frame*, %struct.conditional_frame** %2, align 8
  %6 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load %struct.conditional_frame*, %struct.conditional_frame** %2, align 8
  %9 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @as_where(i32* %7, i32* %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_cframe, align 8
  %13 = load %struct.conditional_frame*, %struct.conditional_frame** %2, align 8
  %14 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %13, i32 0, i32 2
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_cframe, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_cframe, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %1
  %23 = phi i1 [ false, %1 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = load %struct.conditional_frame*, %struct.conditional_frame** %2, align 8
  %26 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @macro_nest, align 4
  %28 = load %struct.conditional_frame*, %struct.conditional_frame** %2, align 8
  %29 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local i32 @memset(%struct.conditional_frame*, i32, i32) #1

declare dso_local i32 @as_where(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
