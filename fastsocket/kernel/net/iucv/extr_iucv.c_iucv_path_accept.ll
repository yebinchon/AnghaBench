; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_path_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_path_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.iucv_path = type { i32, i32, i8*, i32 }
%struct.iucv_handler = type { i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_param = common dso_local global %union.iucv_param** null, align 8
@IUCV_ACCEPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iucv_path_accept(%struct.iucv_path* %0, %struct.iucv_handler* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.iucv_path*, align 8
  %6 = alloca %struct.iucv_handler*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %union.iucv_param*, align 8
  %10 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %5, align 8
  store %struct.iucv_handler* %1, %struct.iucv_handler** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = call i32 (...) @local_bh_disable()
  %12 = load i32, i32* @iucv_buffer_cpumask, align 4
  %13 = call i64 @cpus_empty(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  br label %75

18:                                               ; preds = %4
  %19 = load %union.iucv_param**, %union.iucv_param*** @iucv_param, align 8
  %20 = call i64 (...) @smp_processor_id()
  %21 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %19, i64 %20
  %22 = load %union.iucv_param*, %union.iucv_param** %21, align 8
  store %union.iucv_param* %22, %union.iucv_param** %9, align 8
  %23 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %24 = call i32 @memset(%union.iucv_param* %23, i32 0, i32 16)
  %25 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %26 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %29 = bitcast %union.iucv_param* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %32 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %35 = bitcast %union.iucv_param* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %18
  %40 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %41 = bitcast %union.iucv_param* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @memcpy(i32 %43, i32* %44, i32 4)
  br label %46

46:                                               ; preds = %39, %18
  %47 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %48 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %51 = bitcast %union.iucv_param* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @IUCV_ACCEPT, align 4
  %54 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %55 = call i32 @iucv_call_b2f0(i32 %53, %union.iucv_param* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %46
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %61 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %63 = bitcast %union.iucv_param* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %67 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  %69 = bitcast %union.iucv_param* %68 to %struct.TYPE_2__*
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.iucv_path*, %struct.iucv_path** %5, align 8
  %73 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %58, %46
  br label %75

75:                                               ; preds = %74, %15
  %76 = call i32 (...) @local_bh_enable()
  %77 = load i32, i32* %10, align 4
  ret i32 %77
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
