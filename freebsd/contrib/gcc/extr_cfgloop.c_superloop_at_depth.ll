; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_superloop_at_depth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_superloop_at_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { %struct.loop**, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.loop* @superloop_at_depth(%struct.loop* %0, i32 %1) #0 {
  %3 = alloca %struct.loop*, align 8
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.loop*, %struct.loop** %4, align 8
  %8 = getelementptr inbounds %struct.loop, %struct.loop* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = icmp ule i32 %6, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @gcc_assert(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.loop*, %struct.loop** %4, align 8
  %16 = getelementptr inbounds %struct.loop, %struct.loop* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load %struct.loop*, %struct.loop** %4, align 8
  store %struct.loop* %21, %struct.loop** %3, align 8
  br label %30

22:                                               ; preds = %2
  %23 = load %struct.loop*, %struct.loop** %4, align 8
  %24 = getelementptr inbounds %struct.loop, %struct.loop* %23, i32 0, i32 0
  %25 = load %struct.loop**, %struct.loop*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.loop*, %struct.loop** %25, i64 %27
  %29 = load %struct.loop*, %struct.loop** %28, align 8
  store %struct.loop* %29, %struct.loop** %3, align 8
  br label %30

30:                                               ; preds = %22, %20
  %31 = load %struct.loop*, %struct.loop** %3, align 8
  ret %struct.loop* %31
}

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
