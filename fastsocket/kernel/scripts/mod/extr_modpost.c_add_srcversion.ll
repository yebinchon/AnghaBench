; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_add_srcversion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_add_srcversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.module = type { i64* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"MODULE_INFO(srcversion, \22%s\22);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer*, %struct.module*)* @add_srcversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_srcversion(%struct.buffer* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca %struct.module*, align 8
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  %5 = load %struct.module*, %struct.module** %4, align 8
  %6 = getelementptr inbounds %struct.module, %struct.module* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.buffer*, %struct.buffer** %3, align 8
  %13 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.buffer*, %struct.buffer** %3, align 8
  %15 = load %struct.module*, %struct.module** %4, align 8
  %16 = getelementptr inbounds %struct.module, %struct.module* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = call i32 (%struct.buffer*, i8*, ...) @buf_printf(%struct.buffer* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64* %17)
  br label %19

19:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @buf_printf(%struct.buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
