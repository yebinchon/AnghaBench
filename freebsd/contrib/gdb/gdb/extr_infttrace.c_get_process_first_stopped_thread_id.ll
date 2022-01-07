; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_get_process_first_stopped_thread_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_get_process_first_stopped_thread_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TT_PROC_GET_FIRST_LWP_STATE = common dso_local global i32 0, align 4
@TT_NIL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"ttrace\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @get_process_first_stopped_thread_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_process_first_stopped_thread_id(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = load i32, i32* @TT_PROC_GET_FIRST_LWP_STATE, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i64, i64* @TT_NIL, align 8
  %10 = trunc i64 %9 to i32
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = ptrtoint %struct.TYPE_3__* %11 to i32
  %13 = load i64, i64* @TT_NIL, align 8
  %14 = call i32 @call_real_ttrace(i32 %7, i32 %8, i32 %10, i32 %12, i32 4, i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* @errno, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @EPROTO, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  store i64 0, i64* @errno, align 8
  store i32 0, i32* %3, align 4
  br label %33

22:                                               ; preds = %17
  %23 = call i32 @perror_with_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %33

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %28, %21
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @call_real_ttrace(i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @perror_with_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
