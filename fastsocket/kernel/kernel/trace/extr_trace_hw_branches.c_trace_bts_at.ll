; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_hw_branches.c_trace_bts_at.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_hw_branches.c_trace_bts_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bts_trace = type { i32 (i32, i8*, %struct.bts_struct*)* }
%struct.bts_struct = type opaque
%struct.bts_struct.0 = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@this_tracer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bts_trace*, i8*)* @trace_bts_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_bts_at(%struct.bts_trace* %0, i8* %1) #0 {
  %3 = alloca %struct.bts_trace*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bts_struct.0, align 4
  %6 = alloca i32, align 4
  store %struct.bts_trace* %0, %struct.bts_trace** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.bts_trace*, %struct.bts_trace** %3, align 8
  %8 = getelementptr inbounds %struct.bts_trace, %struct.bts_trace* %7, i32 0, i32 0
  %9 = load i32 (i32, i8*, %struct.bts_struct*)*, i32 (i32, i8*, %struct.bts_struct*)** %8, align 8
  %10 = icmp ne i32 (i32, i8*, %struct.bts_struct*)* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON_ONCE(i32 %12)
  %14 = load %struct.bts_trace*, %struct.bts_trace** %3, align 8
  %15 = getelementptr inbounds %struct.bts_trace, %struct.bts_trace* %14, i32 0, i32 0
  %16 = load i32 (i32, i8*, %struct.bts_struct*)*, i32 (i32, i8*, %struct.bts_struct*)** %15, align 8
  %17 = icmp ne i32 (i32, i8*, %struct.bts_struct*)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.bts_trace*, %struct.bts_trace** %3, align 8
  %21 = getelementptr inbounds %struct.bts_trace, %struct.bts_trace* %20, i32 0, i32 0
  %22 = load i32 (i32, i8*, %struct.bts_struct*)*, i32 (i32, i8*, %struct.bts_struct*)** %21, align 8
  %23 = load i32, i32* @this_tracer, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast %struct.bts_struct.0* %5 to %struct.bts_struct*
  %26 = call i32 %22(i32 %23, i8* %24, %struct.bts_struct* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %43

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.bts_struct.0, %struct.bts_struct.0* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %43 [
    i32 128, label %33
  ]

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.bts_struct.0, %struct.bts_struct.0* %5, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.bts_struct.0, %struct.bts_struct.0* %5, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @trace_hw_branch(i32 %37, i32 %41)
  br label %43

43:                                               ; preds = %18, %29, %30, %33
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @trace_hw_branch(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
