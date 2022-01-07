; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c___iucv_message_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c___iucv_message_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i8* }
%struct.iucv_path = type { i32 }
%struct.iucv_message = type { i32, i32, i32 }

@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_param = common dso_local global %union.iucv_param** null, align 8
@IUCV_IPFGPID = common dso_local global i32 0, align 4
@IUCV_IPFGMID = common dso_local global i32 0, align 4
@IUCV_IPTRGCLS = common dso_local global i32 0, align 4
@IUCV_RECEIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__iucv_message_receive(%struct.iucv_path* %0, %struct.iucv_message* %1, i32 %2, i8* %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iucv_path*, align 8
  %9 = alloca %struct.iucv_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %union.iucv_param*, align 8
  %15 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %8, align 8
  store %struct.iucv_message* %1, %struct.iucv_message** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load %struct.iucv_message*, %struct.iucv_message** %9, align 8
  %17 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IUCV_IPRMDATA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %6
  %23 = load %struct.iucv_path*, %struct.iucv_path** %8, align 8
  %24 = load %struct.iucv_message*, %struct.iucv_message** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64*, i64** %13, align 8
  %29 = call i32 @iucv_message_receive_iprmdata(%struct.iucv_path* %23, %struct.iucv_message* %24, i32 %25, i8* %26, i64 %27, i64* %28)
  store i32 %29, i32* %7, align 4
  br label %111

30:                                               ; preds = %6
  %31 = load i32, i32* @iucv_buffer_cpumask, align 4
  %32 = call i64 @cpus_empty(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  br label %109

37:                                               ; preds = %30
  %38 = load %union.iucv_param**, %union.iucv_param*** @iucv_param, align 8
  %39 = call i64 (...) @smp_processor_id()
  %40 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %38, i64 %39
  %41 = load %union.iucv_param*, %union.iucv_param** %40, align 8
  store %union.iucv_param* %41, %union.iucv_param** %14, align 8
  %42 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %43 = call i32 @memset(%union.iucv_param* %42, i32 0, i32 32)
  %44 = load i8*, i8** %11, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %48 = bitcast %union.iucv_param* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  store i8* %46, i8** %49, align 8
  %50 = load i64, i64* %12, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = ptrtoint i8* %51 to i64
  %53 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %54 = bitcast %union.iucv_param* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.iucv_message*, %struct.iucv_message** %9, align 8
  %57 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %60 = bitcast %union.iucv_param* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  store i32 %58, i32* %61, align 4
  %62 = load %struct.iucv_path*, %struct.iucv_path** %8, align 8
  %63 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %66 = bitcast %union.iucv_param* %65 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 8
  %68 = load %struct.iucv_message*, %struct.iucv_message** %9, align 8
  %69 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %72 = bitcast %union.iucv_param* %71 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @IUCV_IPFGPID, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @IUCV_IPFGMID, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @IUCV_IPTRGCLS, align 4
  %80 = or i32 %78, %79
  %81 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %82 = bitcast %union.iucv_param* %81 to %struct.TYPE_2__*
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* @IUCV_RECEIVE, align 4
  %85 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %86 = call i32 @iucv_call_b2f0(i32 %84, %union.iucv_param* %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %37
  %90 = load i32, i32* %15, align 4
  %91 = icmp eq i32 %90, 5
  br i1 %91, label %92, label %108

92:                                               ; preds = %89, %37
  %93 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %94 = bitcast %union.iucv_param* %93 to %struct.TYPE_2__*
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.iucv_message*, %struct.iucv_message** %9, align 8
  %98 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i64*, i64** %13, align 8
  %100 = icmp ne i64* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load %union.iucv_param*, %union.iucv_param** %14, align 8
  %103 = bitcast %union.iucv_param* %102 to %struct.TYPE_2__*
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %13, align 8
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %101, %92
  br label %108

108:                                              ; preds = %107, %89
  br label %109

109:                                              ; preds = %108, %34
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %109, %22
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @iucv_message_receive_iprmdata(%struct.iucv_path*, %struct.iucv_message*, i32, i8*, i64, i64*) #1

declare dso_local i64 @cpus_empty(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @memset(%union.iucv_param*, i32, i32) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
