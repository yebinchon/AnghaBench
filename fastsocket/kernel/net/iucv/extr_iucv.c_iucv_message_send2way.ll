; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_message_send2way.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_message_send2way.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i32 }
%struct.iucv_path = type { i32, i32 }
%struct.iucv_message = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i8*, i8*, i32, i8*, i32, i32, i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_param = common dso_local global %union.iucv_param** null, align 8
@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@IUCV_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iucv_message_send2way(%struct.iucv_path* %0, %struct.iucv_message* %1, i32 %2, i8* %3, i8* %4, i64 %5, i8* %6, i64 %7, i64* %8) #0 {
  %10 = alloca %struct.iucv_path*, align 8
  %11 = alloca %struct.iucv_message*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca %union.iucv_param*, align 8
  %20 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %10, align 8
  store %struct.iucv_message* %1, %struct.iucv_message** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  store i64* %8, i64** %18, align 8
  %21 = call i32 (...) @local_bh_disable()
  %22 = load i32, i32* @iucv_buffer_cpumask, align 4
  %23 = call i64 @cpus_empty(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %9
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %20, align 4
  br label %150

28:                                               ; preds = %9
  %29 = load %union.iucv_param**, %union.iucv_param*** @iucv_param, align 8
  %30 = call i64 (...) @smp_processor_id()
  %31 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %29, i64 %30
  %32 = load %union.iucv_param*, %union.iucv_param** %31, align 8
  store %union.iucv_param* %32, %union.iucv_param** %19, align 8
  %33 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %34 = call i32 @memset(%union.iucv_param* %33, i32 0, i32 72)
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @IUCV_IPRMDATA, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %85

39:                                               ; preds = %28
  %40 = load %struct.iucv_path*, %struct.iucv_path** %10, align 8
  %41 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %44 = bitcast %union.iucv_param* %43 to %struct.TYPE_3__*
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 7
  store i32 %42, i32* %45, align 8
  %46 = load %struct.iucv_path*, %struct.iucv_path** %10, align 8
  %47 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %50 = bitcast %union.iucv_param* %49 to %struct.TYPE_3__*
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 6
  store i32 %48, i32* %51, align 4
  %52 = load %struct.iucv_message*, %struct.iucv_message** %11, align 8
  %53 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %56 = bitcast %union.iucv_param* %55 to %struct.TYPE_3__*
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  store i32 %54, i32* %57, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %60 = bitcast %union.iucv_param* %59 to %struct.TYPE_3__*
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  store i8* %58, i8** %61, align 8
  %62 = load %struct.iucv_message*, %struct.iucv_message** %11, align 8
  %63 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %66 = bitcast %union.iucv_param* %65 to %struct.TYPE_3__*
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %72 = bitcast %union.iucv_param* %71 to %struct.TYPE_3__*
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i8* %70, i8** %73, align 8
  %74 = load i64, i64* %17, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %77 = bitcast %union.iucv_param* %76 to %struct.TYPE_3__*
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i8* %75, i8** %78, align 8
  %79 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %80 = bitcast %union.iucv_param* %79 to %struct.TYPE_3__*
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = call i32 @memcpy(i32 %82, i8* %83, i32 8)
  br label %136

85:                                               ; preds = %28
  %86 = load %struct.iucv_path*, %struct.iucv_path** %10, align 8
  %87 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %90 = bitcast %union.iucv_param* %89 to %struct.TYPE_4__*
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 9
  store i32 %88, i32* %91, align 8
  %92 = load %struct.iucv_path*, %struct.iucv_path** %10, align 8
  %93 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %96 = bitcast %union.iucv_param* %95 to %struct.TYPE_4__*
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 8
  store i32 %94, i32* %97, align 4
  %98 = load %struct.iucv_message*, %struct.iucv_message** %11, align 8
  %99 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %102 = bitcast %union.iucv_param* %101 to %struct.TYPE_4__*
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 7
  store i32 %100, i32* %103, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %106 = bitcast %union.iucv_param* %105 to %struct.TYPE_4__*
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 6
  store i8* %104, i8** %107, align 8
  %108 = load %struct.iucv_message*, %struct.iucv_message** %11, align 8
  %109 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %112 = bitcast %union.iucv_param* %111 to %struct.TYPE_4__*
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 5
  store i32 %110, i32* %113, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = ptrtoint i8* %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %118 = bitcast %union.iucv_param* %117 to %struct.TYPE_4__*
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  store i8* %116, i8** %119, align 8
  %120 = load i64, i64* %15, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %123 = bitcast %union.iucv_param* %122 to %struct.TYPE_4__*
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  store i8* %121, i8** %124, align 8
  %125 = load i8*, i8** %16, align 8
  %126 = ptrtoint i8* %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %129 = bitcast %union.iucv_param* %128 to %struct.TYPE_4__*
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  store i8* %127, i8** %130, align 8
  %131 = load i64, i64* %17, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %134 = bitcast %union.iucv_param* %133 to %struct.TYPE_4__*
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i8* %132, i8** %135, align 8
  br label %136

136:                                              ; preds = %85, %39
  %137 = load i32, i32* @IUCV_SEND, align 4
  %138 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %139 = call i32 @iucv_call_b2f0(i32 %137, %union.iucv_param* %138)
  store i32 %139, i32* %20, align 4
  %140 = load i32, i32* %20, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %136
  %143 = load %union.iucv_param*, %union.iucv_param** %19, align 8
  %144 = bitcast %union.iucv_param* %143 to %struct.TYPE_4__*
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.iucv_message*, %struct.iucv_message** %11, align 8
  %148 = getelementptr inbounds %struct.iucv_message, %struct.iucv_message* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %142, %136
  br label %150

150:                                              ; preds = %149, %25
  %151 = call i32 (...) @local_bh_enable()
  %152 = load i32, i32* %20, align 4
  ret i32 %152
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i64 @cpus_empty(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @memset(%union.iucv_param*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
