; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_parse_probe_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_parse_probe_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_probe = type { i32 }
%struct.probe_arg = type { i8*, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }

@MAX_ARGSTR_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Argument is too long.: %s\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to allocate memory for command '%s'.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Unsupported type: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.trace_probe*, %struct.probe_arg*, i32)* @parse_probe_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_probe_arg(i8* %0, %struct.trace_probe* %1, %struct.probe_arg* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.trace_probe*, align 8
  %8 = alloca %struct.probe_arg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.trace_probe* %1, %struct.trace_probe** %7, align 8
  store %struct.probe_arg* %2, %struct.probe_arg** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i64, i64* @MAX_ARGSTR_LEN, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @ENOSPC, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %131

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kstrdup(i8* %22, i32 %23)
  %25 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %26 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %28 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %21
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %131

36:                                               ; preds = %21
  %37 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %38 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 58)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %47 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %45 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = getelementptr inbounds i8, i8* %44, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %10, align 8
  br label %55

55:                                               ; preds = %43, %36
  %56 = load i8*, i8** %10, align 8
  %57 = call %struct.TYPE_9__* @find_fetch_type(i8* %56)
  %58 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %59 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %58, i32 0, i32 3
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %59, align 8
  %60 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %61 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %60, i32 0, i32 3
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %55
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %131

69:                                               ; preds = %55
  %70 = load %struct.trace_probe*, %struct.trace_probe** %7, align 8
  %71 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %74 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %76 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %75, i32 0, i32 3
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.trace_probe*, %struct.trace_probe** %7, align 8
  %81 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %88 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %87, i32 0, i32 3
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %91 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %90, i32 0, i32 1
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @__parse_probe_arg(i8* %86, %struct.TYPE_9__* %89, %struct.TYPE_10__* %91, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %69
  %97 = load i8*, i8** %10, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i8*, i8** %10, align 8
  %101 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %102 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %101, i32 0, i32 3
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %105 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %104, i32 0, i32 1
  %106 = call i32 @__parse_bitfield_probe_arg(i8* %100, %struct.TYPE_9__* %103, %struct.TYPE_10__* %105)
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %99, %96, %69
  %108 = load i32, i32* %11, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %107
  %111 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %112 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %111, i32 0, i32 3
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %115 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @get_fetch_size_function(%struct.TYPE_9__* %113, i32 %117)
  %119 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %120 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %123 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.probe_arg*, %struct.probe_arg** %8, align 8
  %127 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  br label %129

129:                                              ; preds = %110, %107
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %129, %64, %31, %16
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_9__* @find_fetch_type(i8*) #1

declare dso_local i32 @__parse_probe_arg(i8*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @__parse_bitfield_probe_arg(i8*, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @get_fetch_size_function(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
