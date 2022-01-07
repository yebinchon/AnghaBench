; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_read_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_read_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i64, i32, i32 }
%struct.task_struct = type { i32 }
%struct.tomoyo_domain_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@tasklist_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d %u %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_io_buffer*)* @tomoyo_read_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_read_pid(%struct.tomoyo_io_buffer* %0) #0 {
  %2 = alloca %struct.tomoyo_io_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.tomoyo_domain_info*, align 8
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %2, align 8
  %6 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %7 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %46

10:                                               ; preds = %1
  %11 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %10
  %16 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %17 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  store %struct.tomoyo_domain_info* null, %struct.tomoyo_domain_info** %5, align 8
  %19 = call i32 @read_lock(i32* @tasklist_lock)
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.task_struct* @find_task_by_vpid(i32 %20)
  store %struct.task_struct* %21, %struct.task_struct** %4, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %23 = icmp ne %struct.task_struct* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %26 = call %struct.tomoyo_domain_info* @tomoyo_real_domain(%struct.task_struct* %25)
  store %struct.tomoyo_domain_info* %26, %struct.tomoyo_domain_info** %5, align 8
  br label %27

27:                                               ; preds = %24, %15
  %28 = call i32 @read_unlock(i32* @tasklist_lock)
  %29 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %30 = icmp ne %struct.tomoyo_domain_info* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %35 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tomoyo_domain_info*, %struct.tomoyo_domain_info** %5, align 8
  %38 = getelementptr inbounds %struct.tomoyo_domain_info, %struct.tomoyo_domain_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @tomoyo_io_printf(%struct.tomoyo_io_buffer* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %41)
  br label %43

43:                                               ; preds = %31, %27
  %44 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %2, align 8
  %45 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %44, i32 0, i32 1
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %10, %1
  ret i32 0
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i32) #1

declare dso_local %struct.tomoyo_domain_info* @tomoyo_real_domain(%struct.task_struct*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @tomoyo_io_printf(%struct.tomoyo_io_buffer*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
