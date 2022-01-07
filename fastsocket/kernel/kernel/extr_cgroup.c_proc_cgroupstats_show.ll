; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_proc_cgroupstats_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_proc_cgroupstats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"#subsys_name\09hierarchy\09num_cgroups\09enabled\0A\00", align 1
@cgroup_mutex = common dso_local global i32 0, align 4
@CGROUP_SUBSYS_COUNT = common dso_local global i32 0, align 4
@subsys = common dso_local global %struct.cgroup_subsys** null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%s\09%d\09%d\09%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @proc_cgroupstats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_cgroupstats_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cgroup_subsys*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = call i32 @seq_puts(%struct.seq_file* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @mutex_lock(i32* @cgroup_mutex)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %41, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @CGROUP_SUBSYS_COUNT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load %struct.cgroup_subsys**, %struct.cgroup_subsys*** @subsys, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.cgroup_subsys*, %struct.cgroup_subsys** %15, i64 %17
  %19 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %18, align 8
  store %struct.cgroup_subsys* %19, %struct.cgroup_subsys** %6, align 8
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %6, align 8
  %22 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %6, align 8
  %25 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %6, align 8
  %30 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %6, align 8
  %35 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %28, i32 %33, i32 %39)
  br label %41

41:                                               ; preds = %14
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %10

44:                                               ; preds = %10
  %45 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
