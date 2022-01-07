; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_hpux_has_execd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_hpux_has_execd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@TT_LWP_GET_STATE = common dso_local global i32 0, align 4
@TT_NIL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"ttrace\00", align 1
@TTEVT_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpux_has_execd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @map_from_gdb_tid(i32 %10)
  %12 = call %struct.TYPE_6__* @find_thread_info(i32 %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i32 @copy_ttstate_t(%struct.TYPE_5__* %7, i32* %17)
  br label %34

19:                                               ; preds = %2
  %20 = load i32, i32* @TT_LWP_GET_STATE, align 4
  %21 = load i32, i32* %4, align 4
  %22 = ptrtoint %struct.TYPE_5__* %7 to i32
  %23 = load i32, i32* @TT_NIL, align 4
  %24 = call i32 @call_ttrace(i32 %20, i32 %21, i32 %22, i32 4, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i64, i64* @errno, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 @perror_with_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %49

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %15
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TTEVT_EXEC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = call i8* @target_pid_to_exec_file(i32 %41)
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = call i8* @savestring(i8* %43, i32 %45)
  %47 = load i8**, i8*** %5, align 8
  store i8* %46, i8** %47, align 8
  store i32 1, i32* %3, align 4
  br label %49

48:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %40, %32
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_6__* @find_thread_info(i32) #1

declare dso_local i32 @map_from_gdb_tid(i32) #1

declare dso_local i32 @copy_ttstate_t(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @call_ttrace(i32, i32, i32, i32, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local i8* @target_pid_to_exec_file(i32) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
