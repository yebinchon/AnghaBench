; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_add_rheldata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_add_rheldata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.module = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"static const struct rheldata _rheldata __used\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"__attribute__((section(\22.rheldata\22))) = {\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\09.rhel_major = %d,\0A\00", align 1
@RHEL_MAJOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"\09.rhel_minor = %d,\0A\00", align 1
@RHEL_MINOR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer*, %struct.module*)* @add_rheldata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_rheldata(%struct.buffer* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca %struct.module*, align 8
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  %5 = load %struct.buffer*, %struct.buffer** %3, align 8
  %6 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.buffer*, %struct.buffer** %3, align 8
  %8 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.buffer*, %struct.buffer** %3, align 8
  %10 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %9, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %11 = load %struct.buffer*, %struct.buffer** %3, align 8
  %12 = load i32, i32* @RHEL_MAJOR, align 4
  %13 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %12)
  %14 = load %struct.buffer*, %struct.buffer** %3, align 8
  %15 = load i32, i32* @RHEL_MINOR, align 4
  %16 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %15)
  %17 = load %struct.buffer*, %struct.buffer** %3, align 8
  %18 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
