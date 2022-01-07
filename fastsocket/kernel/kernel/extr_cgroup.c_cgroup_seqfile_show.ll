; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_seqfile_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_seqfile_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.cgroup_seqfile_state* }
%struct.cgroup_seqfile_state = type { i32, %struct.cftype* }
%struct.cftype = type { i32 (i32, %struct.cftype*, %struct.cgroup_map_cb*)*, i32 (i32, %struct.cftype*, %struct.seq_file*)* }
%struct.cgroup_map_cb = type { %struct.seq_file*, i32 }

@cgroup_map_add = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @cgroup_seqfile_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_seqfile_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cgroup_seqfile_state*, align 8
  %7 = alloca %struct.cftype*, align 8
  %8 = alloca %struct.cgroup_map_cb, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.cgroup_seqfile_state*, %struct.cgroup_seqfile_state** %10, align 8
  store %struct.cgroup_seqfile_state* %11, %struct.cgroup_seqfile_state** %6, align 8
  %12 = load %struct.cgroup_seqfile_state*, %struct.cgroup_seqfile_state** %6, align 8
  %13 = getelementptr inbounds %struct.cgroup_seqfile_state, %struct.cgroup_seqfile_state* %12, i32 0, i32 1
  %14 = load %struct.cftype*, %struct.cftype** %13, align 8
  store %struct.cftype* %14, %struct.cftype** %7, align 8
  %15 = load %struct.cftype*, %struct.cftype** %7, align 8
  %16 = getelementptr inbounds %struct.cftype, %struct.cftype* %15, i32 0, i32 0
  %17 = load i32 (i32, %struct.cftype*, %struct.cgroup_map_cb*)*, i32 (i32, %struct.cftype*, %struct.cgroup_map_cb*)** %16, align 8
  %18 = icmp ne i32 (i32, %struct.cftype*, %struct.cgroup_map_cb*)* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.cgroup_map_cb, %struct.cgroup_map_cb* %8, i32 0, i32 0
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  store %struct.seq_file* %21, %struct.seq_file** %20, align 8
  %22 = getelementptr inbounds %struct.cgroup_map_cb, %struct.cgroup_map_cb* %8, i32 0, i32 1
  %23 = load i32, i32* @cgroup_map_add, align 4
  store i32 %23, i32* %22, align 8
  %24 = load %struct.cftype*, %struct.cftype** %7, align 8
  %25 = getelementptr inbounds %struct.cftype, %struct.cftype* %24, i32 0, i32 0
  %26 = load i32 (i32, %struct.cftype*, %struct.cgroup_map_cb*)*, i32 (i32, %struct.cftype*, %struct.cgroup_map_cb*)** %25, align 8
  %27 = load %struct.cgroup_seqfile_state*, %struct.cgroup_seqfile_state** %6, align 8
  %28 = getelementptr inbounds %struct.cgroup_seqfile_state, %struct.cgroup_seqfile_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cftype*, %struct.cftype** %7, align 8
  %31 = call i32 %26(i32 %29, %struct.cftype* %30, %struct.cgroup_map_cb* %8)
  store i32 %31, i32* %3, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load %struct.cftype*, %struct.cftype** %7, align 8
  %34 = getelementptr inbounds %struct.cftype, %struct.cftype* %33, i32 0, i32 1
  %35 = load i32 (i32, %struct.cftype*, %struct.seq_file*)*, i32 (i32, %struct.cftype*, %struct.seq_file*)** %34, align 8
  %36 = load %struct.cgroup_seqfile_state*, %struct.cgroup_seqfile_state** %6, align 8
  %37 = getelementptr inbounds %struct.cgroup_seqfile_state, %struct.cgroup_seqfile_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.cftype*, %struct.cftype** %7, align 8
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = call i32 %35(i32 %38, %struct.cftype* %39, %struct.seq_file* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %32, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
