; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events.c_f_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events.c_f_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.ftrace_event_call* }
%struct.ftrace_event_call = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ftrace_event_field = type { i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"name: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ID: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"format:\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"\0Aprint fmt: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"__data_loc\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"\09field:%s %s;\09offset:%u;\09size:%u;\09signed:%d;\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"\09field:%.*s %s%s;\09offset:%u;\09size:%u;\09signed:%d;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @f_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ftrace_event_call*, align 8
  %7 = alloca %struct.ftrace_event_field*, align 8
  %8 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %10, align 8
  store %struct.ftrace_event_call* %11, %struct.ftrace_event_call** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = ptrtoint i8* %12 to i64
  switch i64 %13, label %34 [
    i64 129, label %14
    i64 128, label %27
  ]

14:                                               ; preds = %2
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %6, align 8
  %17 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %6, align 8
  %22 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %116

27:                                               ; preds = %2
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %6, align 8
  %30 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  store i32 0, i32* %3, align 4
  br label %116

34:                                               ; preds = %2
  %35 = load i8*, i8** %5, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = and i64 %36, 1
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = call i32 @seq_putc(%struct.seq_file* %40, i8 signext 10)
  %42 = load i8*, i8** %5, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = and i64 %43, -2
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i8*, i8** %5, align 8
  %48 = bitcast i8* %47 to %struct.ftrace_event_field*
  store %struct.ftrace_event_field* %48, %struct.ftrace_event_field** %7, align 8
  %49 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %50 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 91)
  store i8* %52, i8** %8, align 8
  %53 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %54 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strncmp(i8* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 10)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  store i8* null, i8** %8, align 8
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i8*, i8** %8, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %84, label %62

62:                                               ; preds = %59
  %63 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %64 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %65 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %68 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %71 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %74 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %77 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %66, i32 %69, i32 %72, i32 %75, i32 %82)
  br label %115

84:                                               ; preds = %59
  %85 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %88 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = ptrtoint i8* %86 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %95 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %98 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %102 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %105 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %7, align 8
  %108 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %93, i8* %96, i32 %99, i8* %100, i32 %103, i32 %106, i32 %113)
  br label %115

115:                                              ; preds = %84, %62
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %27, %14
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
