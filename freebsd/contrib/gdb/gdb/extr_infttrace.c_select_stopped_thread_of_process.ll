; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_select_stopped_thread_of_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_select_stopped_thread_of_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@TTEVT_NONE = common dso_local global i64 0, align 8
@doing_fake_step = common dso_local global i64 0, align 8
@fake_step_tid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Internal error: fake-step failed to complete.\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Internal error in call of ttrace_wait.\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Internal error: no unhandled thread event to select\00", align 1
@TTEVT_SIGNAL = common dso_local global i64 0, align 8
@debug_on = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_11__*)* @select_stopped_thread_of_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_stopped_thread_of_process(i32 %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @can_touch_threads_of_process(i32 %10, i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %95

17:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @get_process_first_stopped_thread_id(i32 %18, %struct.TYPE_11__* %9)
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %62, %17
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TTEVT_NONE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @set_handled(i32 %29, i64 %31)
  br label %61

33:                                               ; preds = %23
  %34 = load i64, i64* @doing_fake_step, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @fake_step_tid, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %6, align 8
  %44 = bitcast %struct.TYPE_11__* %8 to i8*
  %45 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 24, i1 false)
  br label %60

46:                                               ; preds = %36, %33
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @was_handled(i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %6, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %6, align 8
  %57 = bitcast %struct.TYPE_11__* %8 to i8*
  %58 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 24, i1 false)
  br label %59

59:                                               ; preds = %54, %51, %46
  br label %60

60:                                               ; preds = %59, %41
  br label %61

61:                                               ; preds = %60, %28
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @get_process_next_stopped_thread_id(i32 %63, %struct.TYPE_11__* %9)
  store i64 %64, i64* %7, align 8
  br label %20

65:                                               ; preds = %20
  %66 = load i64, i64* @doing_fake_step, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @fake_step_tid, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = bitcast %struct.TYPE_11__* %9 to i8*
  %74 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 24, i1 false)
  br label %77

75:                                               ; preds = %68
  %76 = call i32 @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %95

77:                                               ; preds = %72
  br label %92

78:                                               ; preds = %65
  %79 = load i64, i64* %6, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = bitcast %struct.TYPE_11__* %9 to i8*
  %83 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 24, i1 false)
  br label %91

84:                                               ; preds = %78
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 @warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %95

89:                                               ; preds = %84
  %90 = call i32 @warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %95

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %77
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = call i32 @copy_ttstate_t(%struct.TYPE_11__* %93, %struct.TYPE_11__* %9)
  store i32 1, i32* %3, align 4
  br label %95

95:                                               ; preds = %92, %89, %87, %75, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @can_touch_threads_of_process(i32, i64) #1

declare dso_local i64 @get_process_first_stopped_thread_id(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @set_handled(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @was_handled(i64) #1

declare dso_local i64 @get_process_next_stopped_thread_id(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @copy_ttstate_t(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
