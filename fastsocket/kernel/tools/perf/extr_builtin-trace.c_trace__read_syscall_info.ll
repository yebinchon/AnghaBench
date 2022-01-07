; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-trace.c_trace__read_syscall_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-trace.c_trace__read_syscall_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.syscall* }
%struct.syscall = type { i8*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"sys_enter_%s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"syscalls\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace*, i32)* @trace__read_syscall_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__read_syscall_info(%struct.trace* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [128 x i8], align 16
  %7 = alloca %struct.syscall*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.syscall*, align 8
  store %struct.trace* %0, %struct.trace** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.trace*, %struct.trace** %4, align 8
  %12 = getelementptr inbounds %struct.trace, %struct.trace* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @audit_syscall_to_name(i32 %10, i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %144

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.trace*, %struct.trace** %4, align 8
  %21 = getelementptr inbounds %struct.trace, %struct.trace* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %19, %23
  br i1 %24, label %25, label %81

25:                                               ; preds = %18
  %26 = load %struct.trace*, %struct.trace** %4, align 8
  %27 = getelementptr inbounds %struct.trace, %struct.trace* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.syscall*, %struct.syscall** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 24
  %34 = trunc i64 %33 to i32
  %35 = call %struct.syscall* @realloc(%struct.syscall* %29, i32 %34)
  store %struct.syscall* %35, %struct.syscall** %9, align 8
  %36 = load %struct.syscall*, %struct.syscall** %9, align 8
  %37 = icmp eq %struct.syscall* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %144

39:                                               ; preds = %25
  %40 = load %struct.trace*, %struct.trace** %4, align 8
  %41 = getelementptr inbounds %struct.trace, %struct.trace* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load %struct.syscall*, %struct.syscall** %9, align 8
  %47 = load %struct.trace*, %struct.trace** %4, align 8
  %48 = getelementptr inbounds %struct.trace, %struct.trace* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.syscall, %struct.syscall* %46, i64 %51
  %53 = getelementptr inbounds %struct.syscall, %struct.syscall* %52, i64 1
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.trace*, %struct.trace** %4, align 8
  %56 = getelementptr inbounds %struct.trace, %struct.trace* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %54, %58
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 24
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memset(%struct.syscall* %53, i32 0, i32 %62)
  br label %72

64:                                               ; preds = %39
  %65 = load %struct.syscall*, %struct.syscall** %9, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 24
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memset(%struct.syscall* %65, i32 0, i32 %70)
  br label %72

72:                                               ; preds = %64, %45
  %73 = load %struct.syscall*, %struct.syscall** %9, align 8
  %74 = load %struct.trace*, %struct.trace** %4, align 8
  %75 = getelementptr inbounds %struct.trace, %struct.trace* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store %struct.syscall* %73, %struct.syscall** %76, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.trace*, %struct.trace** %4, align 8
  %79 = getelementptr inbounds %struct.trace, %struct.trace* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  br label %81

81:                                               ; preds = %72, %18
  %82 = load %struct.trace*, %struct.trace** %4, align 8
  %83 = getelementptr inbounds %struct.trace, %struct.trace* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load %struct.syscall*, %struct.syscall** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.syscall, %struct.syscall* %85, i64 %87
  store %struct.syscall* %88, %struct.syscall** %7, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load %struct.syscall*, %struct.syscall** %7, align 8
  %91 = getelementptr inbounds %struct.syscall, %struct.syscall* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load %struct.syscall*, %struct.syscall** %7, align 8
  %93 = getelementptr inbounds %struct.syscall, %struct.syscall* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call %struct.TYPE_4__* @syscall_fmt__find(i8* %94)
  %96 = load %struct.syscall*, %struct.syscall** %7, align 8
  %97 = getelementptr inbounds %struct.syscall, %struct.syscall* %96, i32 0, i32 2
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %97, align 8
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %99 = load %struct.syscall*, %struct.syscall** %7, align 8
  %100 = getelementptr inbounds %struct.syscall, %struct.syscall* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @snprintf(i8* %98, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %101)
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %104 = call i8* @event_format__new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %103)
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.syscall*, %struct.syscall** %7, align 8
  %107 = getelementptr inbounds %struct.syscall, %struct.syscall* %106, i32 0, i32 1
  store i32* %105, i32** %107, align 8
  %108 = load %struct.syscall*, %struct.syscall** %7, align 8
  %109 = getelementptr inbounds %struct.syscall, %struct.syscall* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %137

112:                                              ; preds = %81
  %113 = load %struct.syscall*, %struct.syscall** %7, align 8
  %114 = getelementptr inbounds %struct.syscall, %struct.syscall* %113, i32 0, i32 2
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = icmp ne %struct.TYPE_4__* %115, null
  br i1 %116, label %117, label %137

117:                                              ; preds = %112
  %118 = load %struct.syscall*, %struct.syscall** %7, align 8
  %119 = getelementptr inbounds %struct.syscall, %struct.syscall* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %137

124:                                              ; preds = %117
  %125 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %126 = load %struct.syscall*, %struct.syscall** %7, align 8
  %127 = getelementptr inbounds %struct.syscall, %struct.syscall* %126, i32 0, i32 2
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @snprintf(i8* %125, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %130)
  %132 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %133 = call i8* @event_format__new(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %132)
  %134 = bitcast i8* %133 to i32*
  %135 = load %struct.syscall*, %struct.syscall** %7, align 8
  %136 = getelementptr inbounds %struct.syscall, %struct.syscall* %135, i32 0, i32 1
  store i32* %134, i32** %136, align 8
  br label %137

137:                                              ; preds = %124, %117, %112, %81
  %138 = load %struct.syscall*, %struct.syscall** %7, align 8
  %139 = getelementptr inbounds %struct.syscall, %struct.syscall* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 0, i32 -1
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %137, %38, %17
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i8* @audit_syscall_to_name(i32, i32) #1

declare dso_local %struct.syscall* @realloc(%struct.syscall*, i32) #1

declare dso_local i32 @memset(%struct.syscall*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @syscall_fmt__find(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @event_format__new(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
