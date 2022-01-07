; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_hpux_has_forked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_hpux_has_forked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@TT_LWP_GET_STATE = common dso_local global i32 0, align 4
@TT_NIL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"ttrace\00", align 1
@TTEVT_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpux_has_forked(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @map_from_gdb_tid(i32 %9)
  %11 = call %struct.TYPE_10__* @find_thread_info(i32 %10)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %8, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = call i32 @copy_ttstate_t(%struct.TYPE_9__* %7, i32* %16)
  br label %33

18:                                               ; preds = %2
  %19 = load i32, i32* @TT_LWP_GET_STATE, align 4
  %20 = load i32, i32* %4, align 4
  %21 = ptrtoint %struct.TYPE_9__* %7 to i32
  %22 = load i32, i32* @TT_NIL, align 4
  %23 = call i32 @call_ttrace(i32 %19, i32 %20, i32 %21, i32 8, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i64, i64* @errno, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = call i32 @perror_with_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %18
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %46

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %14
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TTEVT_FORK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  store i32 1, i32* %3, align 4
  br label %46

45:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %39, %31
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_10__* @find_thread_info(i32) #1

declare dso_local i32 @map_from_gdb_tid(i32) #1

declare dso_local i32 @copy_ttstate_t(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @call_ttrace(i32, i32, i32, i32, i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
