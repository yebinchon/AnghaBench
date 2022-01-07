; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_process_init_limits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_process_init_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i64, i64 }
%struct.fuse_init_out = type { i32, i64, i64 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@max_user_bgreq = common dso_local global i64 0, align 8
@max_user_congthresh = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_init_out*)* @process_init_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_init_limits(%struct.fuse_conn* %0, %struct.fuse_init_out* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_init_out*, align 8
  %5 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_init_out* %1, %struct.fuse_init_out** %4, align 8
  %6 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %7 = call i32 @capable(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.fuse_init_out*, %struct.fuse_init_out** %4, align 8
  %9 = getelementptr inbounds %struct.fuse_init_out, %struct.fuse_init_out* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 13
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %63

13:                                               ; preds = %2
  %14 = call i32 @sanitize_global_limit(i64* @max_user_bgreq)
  %15 = call i32 @sanitize_global_limit(i64* @max_user_congthresh)
  %16 = load %struct.fuse_init_out*, %struct.fuse_init_out** %4, align 8
  %17 = getelementptr inbounds %struct.fuse_init_out, %struct.fuse_init_out* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %13
  %21 = load %struct.fuse_init_out*, %struct.fuse_init_out** %4, align 8
  %22 = getelementptr inbounds %struct.fuse_init_out, %struct.fuse_init_out* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %25 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %20
  %29 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %30 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @max_user_bgreq, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i64, i64* @max_user_bgreq, align 8
  %36 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %37 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %28, %20
  br label %39

39:                                               ; preds = %38, %13
  %40 = load %struct.fuse_init_out*, %struct.fuse_init_out** %4, align 8
  %41 = getelementptr inbounds %struct.fuse_init_out, %struct.fuse_init_out* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load %struct.fuse_init_out*, %struct.fuse_init_out** %4, align 8
  %46 = getelementptr inbounds %struct.fuse_init_out, %struct.fuse_init_out* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %49 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %44
  %53 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %54 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @max_user_congthresh, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i64, i64* @max_user_congthresh, align 8
  %60 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %61 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %52, %44
  br label %63

63:                                               ; preds = %12, %62, %39
  ret void
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @sanitize_global_limit(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
