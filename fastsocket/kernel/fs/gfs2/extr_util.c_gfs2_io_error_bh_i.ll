; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_util.c_gfs2_io_error_bh_i.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_util.c_gfs2_io_error_bh_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [116 x i8] c"GFS2: fsid=%s: fatal: I/O error\0AGFS2: fsid=%s:   block = %llu\0AGFS2: fsid=%s:   function = %s, file = %s, line = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_io_error_bh_i(%struct.gfs2_sbd* %0, %struct.buffer_head* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %14 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %17 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %23 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @gfs2_lm_withdraw(%struct.gfs2_sbd* %12, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i64 %21, i32 %24, i8* %25, i8* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  ret i32 %29
}

declare dso_local i32 @gfs2_lm_withdraw(%struct.gfs2_sbd*, i8*, i32, i32, i64, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
