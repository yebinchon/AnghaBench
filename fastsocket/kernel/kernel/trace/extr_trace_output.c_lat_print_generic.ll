; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_lat_print_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_lat_print_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.trace_entry = type { i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%8.8s-%-5d %3d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, %struct.trace_entry*, i32)* @lat_print_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lat_print_generic(%struct.trace_seq* %0, %struct.trace_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca %struct.trace_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %5, align 8
  store %struct.trace_entry* %1, %struct.trace_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @TASK_COMM_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %16 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @trace_find_cmdline(i32 %17, i8* %14)
  %19 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %20 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %21 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @trace_seq_printf(%struct.trace_seq* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %31

27:                                               ; preds = %3
  %28 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %29 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %30 = call i32 @trace_print_lat_fmt(%struct.trace_seq* %28, %struct.trace_entry* %29)
  store i32 %30, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %31

31:                                               ; preds = %27, %26
  %32 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %32)
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace_find_cmdline(i32, i8*) #2

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8*, i32, i32) #2

declare dso_local i32 @trace_print_lat_fmt(%struct.trace_seq*, %struct.trace_entry*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
