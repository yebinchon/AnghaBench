; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_dump_object_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_dump_object_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.stack_trace = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Object 0x%08lx (size %zu):\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"  comm \22%s\22, pid %d, jiffies %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"  min_count = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"  count = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"  flags = 0x%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"  backtrace:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmemleak_object*)* @dump_object_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_object_info(%struct.kmemleak_object* %0) #0 {
  %2 = alloca %struct.kmemleak_object*, align 8
  %3 = alloca %struct.stack_trace, align 4
  store %struct.kmemleak_object* %0, %struct.kmemleak_object** %2, align 8
  %4 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %5 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %4, i32 0, i32 9
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %3, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %9 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %3, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %13 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %17 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %21 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %24 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %27 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25, i32 %28)
  %30 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %31 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %35 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %39 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %43 = call i32 @print_stack_trace(%struct.stack_trace* %3, i32 4)
  ret void
}

declare dso_local i32 @pr_notice(i8*, ...) #1

declare dso_local i32 @print_stack_trace(%struct.stack_trace*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
