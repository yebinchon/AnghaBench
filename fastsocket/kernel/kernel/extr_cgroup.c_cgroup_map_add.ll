; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_map_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_map_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_map_cb = type { %struct.seq_file* }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_map_cb*, i8*, i64)* @cgroup_map_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_map_add(%struct.cgroup_map_cb* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.cgroup_map_cb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.seq_file*, align 8
  store %struct.cgroup_map_cb* %0, %struct.cgroup_map_cb** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.cgroup_map_cb*, %struct.cgroup_map_cb** %4, align 8
  %9 = getelementptr inbounds %struct.cgroup_map_cb, %struct.cgroup_map_cb* %8, i32 0, i32 0
  %10 = load %struct.seq_file*, %struct.seq_file** %9, align 8
  store %struct.seq_file* %10, %struct.seq_file** %7, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %12, i64 %13)
  ret i32 %14
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
