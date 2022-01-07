; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_recovery.c_jhead_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_recovery.c_jhead_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i32, i32 }
%struct.gfs2_log_header_host = type { i32, i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_jdesc*, %struct.gfs2_log_header_host*)* @jhead_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jhead_scan(%struct.gfs2_jdesc* %0, %struct.gfs2_log_header_host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_jdesc*, align 8
  %5 = alloca %struct.gfs2_log_header_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_log_header_host, align 8
  %8 = alloca i32, align 4
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %4, align 8
  store %struct.gfs2_log_header_host* %1, %struct.gfs2_log_header_host** %5, align 8
  %9 = load %struct.gfs2_log_header_host*, %struct.gfs2_log_header_host** %5, align 8
  %10 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %55, %31, %2
  %13 = load i32, i32* %6, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %6, align 4
  %15 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %16 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %12
  %21 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @get_log_header(%struct.gfs2_jdesc* %21, i32 %22, %struct.gfs2_log_header_host* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %60

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %12

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %7, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.gfs2_log_header_host*, %struct.gfs2_log_header_host** %5, align 8
  %36 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %41 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @GFS2_I(i32 %42)
  %44 = call i32 @gfs2_consist_inode(i32 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %60

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %7, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.gfs2_log_header_host*, %struct.gfs2_log_header_host** %5, align 8
  %51 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %59

55:                                               ; preds = %47
  %56 = load %struct.gfs2_log_header_host*, %struct.gfs2_log_header_host** %5, align 8
  %57 = bitcast %struct.gfs2_log_header_host* %56 to i8*
  %58 = bitcast %struct.gfs2_log_header_host* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  br label %12

59:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %39, %26
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @get_log_header(%struct.gfs2_jdesc*, i32, %struct.gfs2_log_header_host*) #1

declare dso_local i32 @gfs2_consist_inode(i32) #1

declare dso_local i32 @GFS2_I(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
