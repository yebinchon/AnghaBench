; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pident_fill_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pident_fill_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.task_struct = type { i32 }
%struct.pid_entry = type { i32, i32 }

@proc_pident_instantiate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32, %struct.task_struct*, %struct.pid_entry*)* @proc_pident_fill_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_pident_fill_cache(%struct.file* %0, i8* %1, i32 %2, %struct.task_struct* %3, %struct.pid_entry* %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.pid_entry*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  store %struct.pid_entry* %4, %struct.pid_entry** %10, align 8
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.pid_entry*, %struct.pid_entry** %10, align 8
  %15 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pid_entry*, %struct.pid_entry** %10, align 8
  %18 = getelementptr inbounds %struct.pid_entry, %struct.pid_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @proc_pident_instantiate, align 4
  %21 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %22 = load %struct.pid_entry*, %struct.pid_entry** %10, align 8
  %23 = call i32 @proc_fill_cache(%struct.file* %11, i8* %12, i32 %13, i32 %16, i32 %19, i32 %20, %struct.task_struct* %21, %struct.pid_entry* %22)
  ret i32 %23
}

declare dso_local i32 @proc_fill_cache(%struct.file*, i8*, i32, i32, i32, i32, %struct.task_struct*, %struct.pid_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
