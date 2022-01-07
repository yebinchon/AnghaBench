; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_probes_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_probes_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.trace_probe = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c":%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" 0x%p\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" %s+%u\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" %s=%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @probes_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probes_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.trace_probe*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.trace_probe*
  store %struct.trace_probe* %8, %struct.trace_probe** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %11 = call i64 @trace_probe_is_return(%struct.trace_probe* %10)
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 114, i32 112
  %15 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %18 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %22 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %24)
  %26 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %27 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %2
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %33 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %61

38:                                               ; preds = %2
  %39 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %40 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %48 = call i32 @trace_probe_symbol(%struct.trace_probe* %47)
  %49 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %50 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %48, i64 %53)
  br label %60

55:                                               ; preds = %38
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %58 = call i32 @trace_probe_symbol(%struct.trace_probe* %57)
  %59 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %55, %45
  br label %61

61:                                               ; preds = %60, %30
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %87, %61
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %65 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %62
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %71 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.trace_probe*, %struct.trace_probe** %5, align 8
  %79 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32 %85)
  br label %87

87:                                               ; preds = %68
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %62

90:                                               ; preds = %62
  %91 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %92 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @trace_probe_is_return(%struct.trace_probe*) #1

declare dso_local i32 @trace_probe_symbol(%struct.trace_probe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
