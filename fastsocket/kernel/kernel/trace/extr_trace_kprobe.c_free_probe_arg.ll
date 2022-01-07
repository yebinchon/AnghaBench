; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_free_probe_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_free_probe_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_arg = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@bitfield = common dso_local global i32 0, align 4
@deref = common dso_local global i32 0, align 4
@symbol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.probe_arg*)* @free_probe_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_probe_arg(%struct.probe_arg* %0) #0 {
  %2 = alloca %struct.probe_arg*, align 8
  store %struct.probe_arg* %0, %struct.probe_arg** %2, align 8
  %3 = load i32, i32* @bitfield, align 4
  %4 = load %struct.probe_arg*, %struct.probe_arg** %2, align 8
  %5 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @CHECK_FETCH_FUNCS(i32 %3, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.probe_arg*, %struct.probe_arg** %2, align 8
  %12 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @free_bitfield_fetch_param(i32 %14)
  br label %46

16:                                               ; preds = %1
  %17 = load i32, i32* @deref, align 4
  %18 = load %struct.probe_arg*, %struct.probe_arg** %2, align 8
  %19 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @CHECK_FETCH_FUNCS(i32 %17, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.probe_arg*, %struct.probe_arg** %2, align 8
  %26 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @free_deref_fetch_param(i32 %28)
  br label %45

30:                                               ; preds = %16
  %31 = load i32, i32* @symbol, align 4
  %32 = load %struct.probe_arg*, %struct.probe_arg** %2, align 8
  %33 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @CHECK_FETCH_FUNCS(i32 %31, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.probe_arg*, %struct.probe_arg** %2, align 8
  %40 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @free_symbol_cache(i32 %42)
  br label %44

44:                                               ; preds = %38, %30
  br label %45

45:                                               ; preds = %44, %24
  br label %46

46:                                               ; preds = %45, %10
  %47 = load %struct.probe_arg*, %struct.probe_arg** %2, align 8
  %48 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kfree(i32 %49)
  %51 = load %struct.probe_arg*, %struct.probe_arg** %2, align 8
  %52 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @kfree(i32 %53)
  ret void
}

declare dso_local i64 @CHECK_FETCH_FUNCS(i32, i32) #1

declare dso_local i32 @free_bitfield_fetch_param(i32) #1

declare dso_local i32 @free_deref_fetch_param(i32) #1

declare dso_local i32 @free_symbol_cache(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
