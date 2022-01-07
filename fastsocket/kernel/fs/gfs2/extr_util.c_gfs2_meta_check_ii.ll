; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_util.c_gfs2_meta_check_ii.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_util.c_gfs2_meta_check_ii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [131 x i8] c"GFS2: fsid=%s: fatal: invalid metadata block\0AGFS2: fsid=%s:   bh = %llu (%s)\0AGFS2: fsid=%s:   function = %s, file = %s, line = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_meta_check_ii(%struct.gfs2_sbd* %0, %struct.buffer_head* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %16 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %19 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %26 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @gfs2_lm_withdraw(%struct.gfs2_sbd* %14, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i64 %23, i8* %24, i32 %27, i8* %28, i8* %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 -1, i32 -2
  ret i32 %35
}

declare dso_local i32 @gfs2_lm_withdraw(%struct.gfs2_sbd*, i8*, i32, i32, i64, i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
