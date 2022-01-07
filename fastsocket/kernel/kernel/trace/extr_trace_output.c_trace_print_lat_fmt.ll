; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_print_lat_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_trace_print_lat_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.trace_entry = type { i32, i8, i8 }

@TRACE_FLAG_HARDIRQ = common dso_local global i32 0, align 4
@TRACE_FLAG_SOFTIRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%c%c%c\00", align 1
@TRACE_FLAG_IRQS_OFF = common dso_local global i32 0, align 4
@TRACE_FLAG_IRQS_NOSUPPORT = common dso_local global i32 0, align 4
@TRACE_FLAG_NEED_RESCHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_print_lat_fmt(%struct.trace_seq* %0, %struct.trace_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca %struct.trace_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store %struct.trace_entry* %1, %struct.trace_entry** %5, align 8
  %9 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %10 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TRACE_FLAG_HARDIRQ, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %15 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TRACE_FLAG_SOFTIRQ, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %20 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %21 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TRACE_FLAG_IRQS_OFF, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %29 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TRACE_FLAG_IRQS_NOSUPPORT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 88, i32 46
  br label %36

36:                                               ; preds = %27, %26
  %37 = phi i32 [ 100, %26 ], [ %35, %27 ]
  %38 = trunc i32 %37 to i8
  %39 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %40 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TRACE_FLAG_NEED_RESCHED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 78, i32 46
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %64

53:                                               ; preds = %49, %36
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %62

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 115, i32 46
  br label %62

62:                                               ; preds = %57, %56
  %63 = phi i32 [ 104, %56 ], [ %61, %57 ]
  br label %64

64:                                               ; preds = %62, %52
  %65 = phi i32 [ 72, %52 ], [ %63, %62 ]
  %66 = call i32 (%struct.trace_seq*, i8*, i8, ...) @trace_seq_printf(%struct.trace_seq* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 signext %38, i32 %46, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %102

69:                                               ; preds = %64
  %70 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %71 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %70, i32 0, i32 1
  %72 = load i8, i8* %71, align 4
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %76 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %77 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %76, i32 0, i32 1
  %78 = load i8, i8* %77, align 4
  %79 = call i32 (%struct.trace_seq*, i8*, i8, ...) @trace_seq_printf(%struct.trace_seq* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 signext %78)
  store i32 %79, i32* %8, align 4
  br label %83

80:                                               ; preds = %69
  %81 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %82 = call i32 @trace_seq_putc(%struct.trace_seq* %81, i8 signext 46)
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %102

87:                                               ; preds = %83
  %88 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %89 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %88, i32 0, i32 2
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %95 = call i32 @trace_seq_putc(%struct.trace_seq* %94, i8 signext 46)
  store i32 %95, i32* %3, align 4
  br label %102

96:                                               ; preds = %87
  %97 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %98 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %99 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %98, i32 0, i32 2
  %100 = load i8, i8* %99, align 1
  %101 = call i32 (%struct.trace_seq*, i8*, i8, ...) @trace_seq_printf(%struct.trace_seq* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8 signext %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %96, %93, %86, %68
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8 signext, ...) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
