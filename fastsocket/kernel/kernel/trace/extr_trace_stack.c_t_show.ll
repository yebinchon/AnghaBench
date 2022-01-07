; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_stack.c_t_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_stack.c_t_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.seq_file = type { i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [83 x i8] c"        Depth    Size   Location    (%d entries)\0A        -----    ----   --------\0A\00", align 1
@max_stack_trace = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@stack_tracer_enabled = common dso_local global i32 0, align 4
@max_stack_size = common dso_local global i32 0, align 4
@stack_dump_trace = common dso_local global i64* null, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@stack_dump_index = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%3ld) %8d   %5d   \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @t_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %10 = icmp eq i8* %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @max_stack_trace, i32 0, i32 0), align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* @stack_tracer_enabled, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = load i32, i32* @max_stack_size, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = call i32 @print_disabled(%struct.seq_file* %23)
  br label %25

25:                                               ; preds = %22, %19, %11
  store i32 0, i32* %3, align 4
  br label %84

26:                                               ; preds = %2
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @max_stack_trace, i32 0, i32 0), align 4
  %32 = sext i32 %31 to i64
  %33 = icmp sge i64 %30, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %26
  %35 = load i64*, i64** @stack_dump_trace, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ULONG_MAX, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %26
  store i32 0, i32* %3, align 4
  br label %84

42:                                               ; preds = %34
  %43 = load i64, i64* %6, align 8
  %44 = add nsw i64 %43, 1
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @max_stack_trace, i32 0, i32 0), align 4
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = load i64*, i64** @stack_dump_trace, align 8
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, 1
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ULONG_MAX, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48, %42
  %57 = load i32*, i32** @stack_dump_index, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  br label %72

61:                                               ; preds = %48
  %62 = load i32*, i32** @stack_dump_index, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** @stack_dump_index, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, 1
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %65, %70
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %61, %56
  %73 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i32*, i32** @stack_dump_index, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %74, i32 %78, i32 %79)
  %81 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @trace_lookup_stack(%struct.seq_file* %81, i64 %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %72, %41, %25
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

declare dso_local i32 @print_disabled(%struct.seq_file*) #1

declare dso_local i32 @trace_lookup_stack(%struct.seq_file*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
