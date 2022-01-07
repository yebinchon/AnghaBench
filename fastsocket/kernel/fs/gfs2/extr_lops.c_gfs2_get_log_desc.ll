; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_gfs2_get_log_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_gfs2_get_log_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_log_descriptor = type { i32, i64, i64, i64, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@GFS2_MAGIC = common dso_local global i32 0, align 4
@GFS2_METATYPE_LD = common dso_local global i32 0, align 4
@GFS2_FORMAT_LD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.gfs2_sbd*, i32)* @gfs2_get_log_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @gfs2_get_log_desc(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.gfs2_log_descriptor*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %8 = call %struct.buffer_head* @gfs2_log_get_buf(%struct.gfs2_sbd* %7)
  store %struct.buffer_head* %8, %struct.buffer_head** %5, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %10 = call %struct.gfs2_log_descriptor* @bh_log_desc(%struct.buffer_head* %9)
  store %struct.gfs2_log_descriptor* %10, %struct.gfs2_log_descriptor** %6, align 8
  %11 = load i32, i32* @GFS2_MAGIC, align 4
  %12 = call i8* @cpu_to_be32(i32 %11)
  %13 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %6, align 8
  %14 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i8* %12, i8** %15, align 8
  %16 = load i32, i32* @GFS2_METATYPE_LD, align 4
  %17 = call i8* @cpu_to_be32(i32 %16)
  %18 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %6, align 8
  %19 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* @GFS2_FORMAT_LD, align 4
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %6, align 8
  %24 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i8* @cpu_to_be32(i32 %26)
  %28 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %6, align 8
  %29 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %6, align 8
  %31 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %6, align 8
  %33 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %6, align 8
  %35 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %6, align 8
  %37 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memset(i32 %38, i32 0, i32 4)
  %40 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %40
}

declare dso_local %struct.buffer_head* @gfs2_log_get_buf(%struct.gfs2_sbd*) #1

declare dso_local %struct.gfs2_log_descriptor* @bh_log_desc(%struct.buffer_head*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
