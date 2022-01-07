; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_path_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_path_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iucv_path = type { i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_param = common dso_local global %union.iucv_param** null, align 8
@IUCV_RESUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iucv_path_resume(%struct.iucv_path* %0, i32* %1) #0 {
  %3 = alloca %struct.iucv_path*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %union.iucv_param*, align 8
  %6 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 (...) @local_bh_disable()
  %8 = load i32, i32* @iucv_buffer_cpumask, align 4
  %9 = call i64 @cpus_empty(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load %union.iucv_param**, %union.iucv_param*** @iucv_param, align 8
  %16 = call i64 (...) @smp_processor_id()
  %17 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %15, i64 %16
  %18 = load %union.iucv_param*, %union.iucv_param** %17, align 8
  store %union.iucv_param* %18, %union.iucv_param** %5, align 8
  %19 = load %union.iucv_param*, %union.iucv_param** %5, align 8
  %20 = call i32 @memset(%union.iucv_param* %19, i32 0, i32 8)
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %union.iucv_param*, %union.iucv_param** %5, align 8
  %25 = bitcast %union.iucv_param* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @memcpy(i32 %27, i32* %28, i32 4)
  br label %30

30:                                               ; preds = %23, %14
  %31 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %32 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %union.iucv_param*, %union.iucv_param** %5, align 8
  %35 = bitcast %union.iucv_param* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @IUCV_RESUME, align 4
  %38 = load %union.iucv_param*, %union.iucv_param** %5, align 8
  %39 = call i32 @iucv_call_b2f0(i32 %37, %union.iucv_param* %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %30, %11
  %41 = call i32 (...) @local_bh_enable()
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i64 @cpus_empty(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @memset(%union.iucv_param*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
