; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_pidlist_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_pidlist_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cgroup = type { i32 }
%struct.cgroup_pidlist = type { i32 }
%struct.seq_file = type { %struct.cgroup_pidlist* }

@FMODE_READ = common dso_local global i32 0, align 4
@cgroup_pidlist_operations = common dso_local global i32 0, align 4
@cgroup_pidlist_seq_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @cgroup_pidlist_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_pidlist_open(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cgroup*, align 8
  %7 = alloca %struct.cgroup_pidlist*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.cgroup* @__d_cgrp(i32 %13)
  store %struct.cgroup* %14, %struct.cgroup** %6, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FMODE_READ, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @pidlist_array_load(%struct.cgroup* %23, i32 %24, %struct.cgroup_pidlist** %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %48

30:                                               ; preds = %22
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 2
  store i32* @cgroup_pidlist_operations, i32** %32, align 8
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = call i32 @seq_open(%struct.file* %33, i32* @cgroup_pidlist_seq_operations)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %7, align 8
  %39 = call i32 @cgroup_release_pid_array(%struct.cgroup_pidlist* %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %48

41:                                               ; preds = %30
  %42 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %7, align 8
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.seq_file*
  %47 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %46, i32 0, i32 0
  store %struct.cgroup_pidlist* %42, %struct.cgroup_pidlist** %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %41, %37, %28, %21
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.cgroup* @__d_cgrp(i32) #1

declare dso_local i32 @pidlist_array_load(%struct.cgroup*, i32, %struct.cgroup_pidlist**) #1

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

declare dso_local i32 @cgroup_release_pid_array(%struct.cgroup_pidlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
