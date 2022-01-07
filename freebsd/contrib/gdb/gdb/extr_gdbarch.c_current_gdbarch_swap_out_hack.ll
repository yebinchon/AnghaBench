; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_current_gdbarch_swap_out_hack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbarch.c_current_gdbarch_swap_out_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { %struct.gdbarch_swap* }
%struct.gdbarch_swap = type { %struct.TYPE_2__*, i32, %struct.gdbarch_swap* }
%struct.TYPE_2__ = type { i32, i32 }

@current_gdbarch = common dso_local global %struct.gdbarch* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gdbarch* ()* @current_gdbarch_swap_out_hack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gdbarch* @current_gdbarch_swap_out_hack() #0 {
  %1 = alloca %struct.gdbarch*, align 8
  %2 = alloca %struct.gdbarch_swap*, align 8
  %3 = load %struct.gdbarch*, %struct.gdbarch** @current_gdbarch, align 8
  store %struct.gdbarch* %3, %struct.gdbarch** %1, align 8
  %4 = load %struct.gdbarch*, %struct.gdbarch** %1, align 8
  %5 = icmp ne %struct.gdbarch* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @gdb_assert(i32 %6)
  %8 = load %struct.gdbarch*, %struct.gdbarch** %1, align 8
  %9 = getelementptr inbounds %struct.gdbarch, %struct.gdbarch* %8, i32 0, i32 0
  %10 = load %struct.gdbarch_swap*, %struct.gdbarch_swap** %9, align 8
  store %struct.gdbarch_swap* %10, %struct.gdbarch_swap** %2, align 8
  br label %11

11:                                               ; preds = %40, %0
  %12 = load %struct.gdbarch_swap*, %struct.gdbarch_swap** %2, align 8
  %13 = icmp ne %struct.gdbarch_swap* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %11
  %15 = load %struct.gdbarch_swap*, %struct.gdbarch_swap** %2, align 8
  %16 = getelementptr inbounds %struct.gdbarch_swap, %struct.gdbarch_swap* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.gdbarch_swap*, %struct.gdbarch_swap** %2, align 8
  %19 = getelementptr inbounds %struct.gdbarch_swap, %struct.gdbarch_swap* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.gdbarch_swap*, %struct.gdbarch_swap** %2, align 8
  %24 = getelementptr inbounds %struct.gdbarch_swap, %struct.gdbarch_swap* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i32 %17, i32 %22, i32 %27)
  %29 = load %struct.gdbarch_swap*, %struct.gdbarch_swap** %2, align 8
  %30 = getelementptr inbounds %struct.gdbarch_swap, %struct.gdbarch_swap* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.gdbarch_swap*, %struct.gdbarch_swap** %2, align 8
  %35 = getelementptr inbounds %struct.gdbarch_swap, %struct.gdbarch_swap* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memset(i32 %33, i32 0, i32 %38)
  br label %40

40:                                               ; preds = %14
  %41 = load %struct.gdbarch_swap*, %struct.gdbarch_swap** %2, align 8
  %42 = getelementptr inbounds %struct.gdbarch_swap, %struct.gdbarch_swap* %41, i32 0, i32 2
  %43 = load %struct.gdbarch_swap*, %struct.gdbarch_swap** %42, align 8
  store %struct.gdbarch_swap* %43, %struct.gdbarch_swap** %2, align 8
  br label %11

44:                                               ; preds = %11
  store %struct.gdbarch* null, %struct.gdbarch** @current_gdbarch, align 8
  %45 = load %struct.gdbarch*, %struct.gdbarch** %1, align 8
  ret %struct.gdbarch* %45
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
