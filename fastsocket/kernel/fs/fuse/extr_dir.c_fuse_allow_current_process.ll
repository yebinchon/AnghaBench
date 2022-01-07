; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_allow_current_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_allow_current_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32, i64, i64 }
%struct.cred = type { i64, i64, i64, i64, i64, i64 }

@FUSE_ALLOW_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_allow_current_process(%struct.fuse_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.cred*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  %5 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %6 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @FUSE_ALLOW_OTHER, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %63

12:                                               ; preds = %1
  %13 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %13, %struct.cred** %4, align 8
  %14 = load %struct.cred*, %struct.cred** %4, align 8
  %15 = getelementptr inbounds %struct.cred, %struct.cred* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %18 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %12
  %22 = load %struct.cred*, %struct.cred** %4, align 8
  %23 = getelementptr inbounds %struct.cred, %struct.cred* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %26 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %21
  %30 = load %struct.cred*, %struct.cred** %4, align 8
  %31 = getelementptr inbounds %struct.cred, %struct.cred* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %34 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %29
  %38 = load %struct.cred*, %struct.cred** %4, align 8
  %39 = getelementptr inbounds %struct.cred, %struct.cred* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %42 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %37
  %46 = load %struct.cred*, %struct.cred** %4, align 8
  %47 = getelementptr inbounds %struct.cred, %struct.cred* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %50 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load %struct.cred*, %struct.cred** %4, align 8
  %55 = getelementptr inbounds %struct.cred, %struct.cred* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %58 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %63

62:                                               ; preds = %53, %45, %37, %29, %21, %12
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %61, %11
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.cred* @current_cred(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
