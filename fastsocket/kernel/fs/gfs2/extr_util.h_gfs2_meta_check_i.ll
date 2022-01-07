; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_util.h_gfs2_meta_check_i.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_util.h_gfs2_meta_check_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_meta_header = type { i32 }

@GFS2_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"magic number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, %struct.buffer_head*, i8*, i8*, i32)* @gfs2_meta_check_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_meta_check_i(%struct.gfs2_sbd* %0, %struct.buffer_head* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gfs2_meta_header*, align 8
  %13 = alloca i64, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.gfs2_meta_header*
  store %struct.gfs2_meta_header* %17, %struct.gfs2_meta_header** %12, align 8
  %18 = load %struct.gfs2_meta_header*, %struct.gfs2_meta_header** %12, align 8
  %19 = getelementptr inbounds %struct.gfs2_meta_header, %struct.gfs2_meta_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @be32_to_cpu(i32 %20)
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @GFS2_MAGIC, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @gfs2_meta_check_ii(%struct.gfs2_sbd* %29, %struct.buffer_head* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %36

35:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfs2_meta_check_ii(%struct.gfs2_sbd*, %struct.buffer_head*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
