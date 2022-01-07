; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_statfs_change_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_statfs_change_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_statfs_change_host = type { i32, i32, i32 }
%struct.gfs2_statfs_change = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_statfs_change_host*, i8*)* @gfs2_statfs_change_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_statfs_change_out(%struct.gfs2_statfs_change_host* %0, i8* %1) #0 {
  %3 = alloca %struct.gfs2_statfs_change_host*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gfs2_statfs_change*, align 8
  store %struct.gfs2_statfs_change_host* %0, %struct.gfs2_statfs_change_host** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.gfs2_statfs_change*
  store %struct.gfs2_statfs_change* %7, %struct.gfs2_statfs_change** %5, align 8
  %8 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @cpu_to_be64(i32 %10)
  %12 = load %struct.gfs2_statfs_change*, %struct.gfs2_statfs_change** %5, align 8
  %13 = getelementptr inbounds %struct.gfs2_statfs_change, %struct.gfs2_statfs_change* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %3, align 8
  %15 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @cpu_to_be64(i32 %16)
  %18 = load %struct.gfs2_statfs_change*, %struct.gfs2_statfs_change** %5, align 8
  %19 = getelementptr inbounds %struct.gfs2_statfs_change, %struct.gfs2_statfs_change* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %3, align 8
  %21 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_be64(i32 %22)
  %24 = load %struct.gfs2_statfs_change*, %struct.gfs2_statfs_change** %5, align 8
  %25 = getelementptr inbounds %struct.gfs2_statfs_change, %struct.gfs2_statfs_change* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  ret void
}

declare dso_local i8* @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
