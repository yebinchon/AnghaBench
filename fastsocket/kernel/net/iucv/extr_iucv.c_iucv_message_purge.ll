; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_message_purge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_message_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.iucv_path = type { i32 }
%struct.iucv_message = type { i32, i32, i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_param = common dso_local global %union.iucv_param** null, align 8
@IUCV_IPSRCCLS = common dso_local global i32 0, align 4
@IUCV_IPFGMID = common dso_local global i32 0, align 4
@IUCV_IPFGPID = common dso_local global i32 0, align 4
@IUCV_PURGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iucv_message_purge(%struct.iucv_path* %0, %struct.iucv_message* %1, i32 %2) #0 {
  %4 = alloca %struct.iucv_path*, align 8
  %5 = alloca %struct.iucv_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.iucv_param*, align 8
  %8 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %4, align 8
  store %struct.iucv_message* %1, %struct.iucv_message** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 (...) @local_bh_disable()
  %10 = load i32, i32* @iucv_buffer_cpumask, align 4
  %11 = call i64 @cpus_empty(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  br label %67

16:                                               ; preds = %3
  %17 = load %union.iucv_param**, %union.iucv_param*** @iucv_param, align 8
  %18 = call i64 (...) @smp_processor_id()
  %19 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %17, i64 %18
  %20 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  store %union.iucv_param* %20, %union.iucv_param** %7, align 8
  %21 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %22 = call i32 @memset(%union.iucv_param* %21, i32 0, i32 24)
  %23 = load %struct.iucv_path*, %struct.iucv_path** %4, align 8
  %24 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %27 = bitcast %union.iucv_param* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  store i32 %25, i32* %28, align 4
  %29 = load %struct.iucv_message*, %struct.iucv_message** %5, align 8
  %30 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %33 = bitcast %union.iucv_param* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %37 = bitcast %union.iucv_param* %36 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @IUCV_IPSRCCLS, align 4
  %40 = load i32, i32* @IUCV_IPFGMID, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @IUCV_IPFGPID, align 4
  %43 = or i32 %41, %42
  %44 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %45 = bitcast %union.iucv_param* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @IUCV_PURGE, align 4
  %48 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %49 = call i32 @iucv_call_b2f0(i32 %47, %union.iucv_param* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %16
  %53 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %54 = bitcast %union.iucv_param* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 8
  %58 = load %struct.iucv_message*, %struct.iucv_message** %5, align 8
  %59 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %union.iucv_param*, %union.iucv_param** %7, align 8
  %61 = bitcast %union.iucv_param* %60 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.iucv_message*, %struct.iucv_message** %5, align 8
  %65 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %52, %16
  br label %67

67:                                               ; preds = %66, %13
  %68 = call i32 (...) @local_bh_enable()
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i64 @cpus_empty(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @memset(%union.iucv_param*, i32, i32) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
