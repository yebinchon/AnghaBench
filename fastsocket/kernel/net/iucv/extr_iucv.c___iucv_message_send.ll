; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c___iucv_message_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c___iucv_message_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, i32, i32, i8*, i8* }
%struct.iucv_path = type { i32 }
%struct.iucv_message = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i8*, i32, i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_param = common dso_local global %union.iucv_param** null, align 8
@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@IUCV_IPNORPY = common dso_local global i32 0, align 4
@IUCV_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__iucv_message_send(%struct.iucv_path* %0, %struct.iucv_message* %1, i32 %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.iucv_path*, align 8
  %8 = alloca %struct.iucv_message*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %union.iucv_param*, align 8
  %14 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %7, align 8
  store %struct.iucv_message* %1, %struct.iucv_message** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i32, i32* @iucv_buffer_cpumask, align 4
  %16 = call i64 @cpus_empty(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %14, align 4
  br label %121

21:                                               ; preds = %6
  %22 = load %union.iucv_param**, %union.iucv_param*** @iucv_param, align 8
  %23 = call i64 (...) @smp_processor_id()
  %24 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %22, i64 %23
  %25 = load %union.iucv_param*, %union.iucv_param** %24, align 8
  store %union.iucv_param* %25, %union.iucv_param** %13, align 8
  %26 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %27 = call i32 @memset(%union.iucv_param* %26, i32 0, i32 48)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @IUCV_IPRMDATA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %21
  %33 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %34 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %37 = bitcast %union.iucv_param* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @IUCV_IPNORPY, align 4
  %41 = or i32 %39, %40
  %42 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %43 = bitcast %union.iucv_param* %42 to %struct.TYPE_3__*
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %46 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %49 = bitcast %union.iucv_param* %48 to %struct.TYPE_3__*
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  store i32 %47, i32* %50, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %53 = bitcast %union.iucv_param* %52 to %struct.TYPE_3__*
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i8* %51, i8** %54, align 8
  %55 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %56 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %59 = bitcast %union.iucv_param* %58 to %struct.TYPE_3__*
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %62 = bitcast %union.iucv_param* %61 to %struct.TYPE_3__*
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @memcpy(i32 %64, i8* %65, i32 8)
  br label %107

67:                                               ; preds = %21
  %68 = load i8*, i8** %11, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %72 = bitcast %union.iucv_param* %71 to %struct.TYPE_4__*
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 7
  store i8* %70, i8** %73, align 8
  %74 = load i64, i64* %12, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %77 = bitcast %union.iucv_param* %76 to %struct.TYPE_4__*
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 6
  store i8* %75, i8** %78, align 8
  %79 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %80 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %83 = bitcast %union.iucv_param* %82 to %struct.TYPE_4__*
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @IUCV_IPNORPY, align 4
  %87 = or i32 %85, %86
  %88 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %89 = bitcast %union.iucv_param* %88 to %struct.TYPE_4__*
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %92 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %95 = bitcast %union.iucv_param* %94 to %struct.TYPE_4__*
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %99 = bitcast %union.iucv_param* %98 to %struct.TYPE_4__*
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  store i8* %97, i8** %100, align 8
  %101 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %102 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %105 = bitcast %union.iucv_param* %104 to %struct.TYPE_4__*
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 8
  br label %107

107:                                              ; preds = %67, %32
  %108 = load i32, i32* @IUCV_SEND, align 4
  %109 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %110 = call i32 @iucv_call_b2f0(i32 %108, %union.iucv_param* %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %107
  %114 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %115 = bitcast %union.iucv_param* %114 to %struct.TYPE_4__*
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.iucv_message*, %struct.iucv_message** %8, align 8
  %119 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %113, %107
  br label %121

121:                                              ; preds = %120, %18
  %122 = load i32, i32* %14, align 4
  ret i32 %122
}

declare dso_local i64 @cpus_empty(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @memset(%union.iucv_param*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
