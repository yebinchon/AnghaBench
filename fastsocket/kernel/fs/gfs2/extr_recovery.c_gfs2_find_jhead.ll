; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_recovery.c_gfs2_find_jhead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_recovery.c_gfs2_find_jhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i32 }
%struct.gfs2_log_header_host = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_find_jhead(%struct.gfs2_jdesc* %0, %struct.gfs2_log_header_host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_jdesc*, align 8
  %5 = alloca %struct.gfs2_log_header_host*, align 8
  %6 = alloca %struct.gfs2_log_header_host, align 8
  %7 = alloca %struct.gfs2_log_header_host, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %4, align 8
  store %struct.gfs2_log_header_host* %1, %struct.gfs2_log_header_host** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %13 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %53, %2
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %17, %18
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %10, align 4
  %21 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %22 = call i32 @find_good_lh(%struct.gfs2_jdesc* %21, i32* %8, %struct.gfs2_log_header_host* %6)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %3, align 4
  br label %66

27:                                               ; preds = %16
  %28 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %29 = call i32 @find_good_lh(%struct.gfs2_jdesc* %28, i32* %10, %struct.gfs2_log_header_host* %7)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %3, align 4
  br label %66

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34
  br label %54

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.gfs2_log_header_host, %struct.gfs2_log_header_host* %7, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sle i64 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %8, align 4
  br label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %51, %49
  br label %16

54:                                               ; preds = %42
  %55 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %4, align 8
  %56 = call i32 @jhead_scan(%struct.gfs2_jdesc* %55, %struct.gfs2_log_header_host* %6)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %3, align 4
  br label %66

61:                                               ; preds = %54
  %62 = load %struct.gfs2_log_header_host*, %struct.gfs2_log_header_host** %5, align 8
  %63 = bitcast %struct.gfs2_log_header_host* %62 to i8*
  %64 = bitcast %struct.gfs2_log_header_host* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 8, i1 false)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %61, %59, %32, %25
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @find_good_lh(%struct.gfs2_jdesc*, i32*, %struct.gfs2_log_header_host*) #1

declare dso_local i32 @jhead_scan(%struct.gfs2_jdesc*, %struct.gfs2_log_header_host*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
