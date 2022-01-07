; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_path_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_path_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32 }
%struct.iucv_path = type { i64, i32, i8*, %struct.iucv_handler*, i32, i32 }
%struct.iucv_handler = type { i32 }

@iucv_table_lock = common dso_local global i32 0, align 4
@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_param = common dso_local global %union.iucv_param** null, align 8
@IUCV_CONNECT = common dso_local global i32 0, align 4
@iucv_max_pathid = common dso_local global i64 0, align 8
@iucv_path_table = common dso_local global %struct.iucv_path** null, align 8
@iucv_error_pathid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iucv_path_connect(%struct.iucv_path* %0, %struct.iucv_handler* %1, i32* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca %struct.iucv_path*, align 8
  %8 = alloca %struct.iucv_handler*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %union.iucv_param*, align 8
  %14 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %7, align 8
  store %struct.iucv_handler* %1, %struct.iucv_handler** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = call i32 @spin_lock_bh(i32* @iucv_table_lock)
  %16 = call i32 (...) @iucv_cleanup_queue()
  %17 = load i32, i32* @iucv_buffer_cpumask, align 4
  %18 = call i64 @cpus_empty(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %14, align 4
  br label %151

23:                                               ; preds = %6
  %24 = load %union.iucv_param**, %union.iucv_param*** @iucv_param, align 8
  %25 = call i64 (...) @smp_processor_id()
  %26 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %24, i64 %25
  %27 = load %union.iucv_param*, %union.iucv_param** %26, align 8
  store %union.iucv_param* %27, %union.iucv_param** %13, align 8
  %28 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %29 = call i32 @memset(%union.iucv_param* %28, i32 0, i32 32)
  %30 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %31 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %34 = bitcast %union.iucv_param* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %37 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %40 = bitcast %union.iucv_param* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %23
  %45 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %46 = bitcast %union.iucv_param* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @memcpy(i32 %48, i32* %49, i32 4)
  %51 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %52 = bitcast %union.iucv_param* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ASCEBC(i32 %54, i32 4)
  %56 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %57 = bitcast %union.iucv_param* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @EBC_TOUPPER(i32 %59, i32 4)
  br label %61

61:                                               ; preds = %44, %23
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %66 = bitcast %union.iucv_param* %65 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @memcpy(i32 %68, i32* %69, i32 4)
  %71 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %72 = bitcast %union.iucv_param* %71 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ASCEBC(i32 %74, i32 4)
  %76 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %77 = bitcast %union.iucv_param* %76 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @EBC_TOUPPER(i32 %79, i32 4)
  br label %81

81:                                               ; preds = %64, %61
  %82 = load i32*, i32** %11, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %86 = bitcast %union.iucv_param* %85 to %struct.TYPE_2__*
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @memcpy(i32 %88, i32* %89, i32 4)
  br label %91

91:                                               ; preds = %84, %81
  %92 = load i32, i32* @IUCV_CONNECT, align 4
  %93 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %94 = call i32 @iucv_call_b2f0(i32 %92, %union.iucv_param* %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %150, label %97

97:                                               ; preds = %91
  %98 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %99 = bitcast %union.iucv_param* %98 to %struct.TYPE_2__*
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @iucv_max_pathid, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %140

104:                                              ; preds = %97
  %105 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %106 = bitcast %union.iucv_param* %105 to %struct.TYPE_2__*
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %110 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %112 = bitcast %union.iucv_param* %111 to %struct.TYPE_2__*
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %116 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %118 = bitcast %union.iucv_param* %117 to %struct.TYPE_2__*
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %122 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.iucv_handler*, %struct.iucv_handler** %8, align 8
  %124 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %125 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %124, i32 0, i32 3
  store %struct.iucv_handler* %123, %struct.iucv_handler** %125, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %128 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %130 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %129, i32 0, i32 1
  %131 = load %struct.iucv_handler*, %struct.iucv_handler** %8, align 8
  %132 = getelementptr inbounds %struct.iucv_handler, %struct.iucv_handler* %131, i32 0, i32 0
  %133 = call i32 @list_add_tail(i32* %130, i32* %132)
  %134 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %135 = load %struct.iucv_path**, %struct.iucv_path*** @iucv_path_table, align 8
  %136 = load %struct.iucv_path*, %struct.iucv_path** %7, align 8
  %137 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.iucv_path*, %struct.iucv_path** %135, i64 %138
  store %struct.iucv_path* %134, %struct.iucv_path** %139, align 8
  br label %149

140:                                              ; preds = %97
  %141 = load %union.iucv_param*, %union.iucv_param** %13, align 8
  %142 = bitcast %union.iucv_param* %141 to %struct.TYPE_2__*
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* @iucv_error_pathid, align 4
  %146 = call i32 @iucv_sever_pathid(i64 %144, i32 %145)
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %140, %104
  br label %150

150:                                              ; preds = %149, %91
  br label %151

151:                                              ; preds = %150, %20
  %152 = call i32 @spin_unlock_bh(i32* @iucv_table_lock)
  %153 = load i32, i32* %14, align 4
  ret i32 %153
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iucv_cleanup_queue(...) #1

declare dso_local i64 @cpus_empty(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @memset(%union.iucv_param*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ASCEBC(i32, i32) #1

declare dso_local i32 @EBC_TOUPPER(i32, i32) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @iucv_sever_pathid(i64, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
