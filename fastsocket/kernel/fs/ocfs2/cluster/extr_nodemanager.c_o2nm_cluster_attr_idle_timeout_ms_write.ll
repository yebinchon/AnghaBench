; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_cluster_attr_idle_timeout_ms_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_cluster_attr_idle_timeout_ms_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2nm_cluster = type { i32, i32 }

@ML_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"o2net: cannot change idle timeout after the first peer has agreed to it.  %d connected peers\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"o2net: idle timeout must be larger than keepalive delay\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2nm_cluster*, i8*, i64)* @o2nm_cluster_attr_idle_timeout_ms_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2nm_cluster_attr_idle_timeout_ms_write(%struct.o2nm_cluster* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.o2nm_cluster*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.o2nm_cluster* %0, %struct.o2nm_cluster** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @o2nm_cluster_attr_write(i8* %9, i64 %10, i32* %8)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %3
  %15 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %4, align 8
  %16 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = call i64 (...) @o2net_num_connected_peers()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @ML_NOTICE, align 4
  %25 = call i64 (...) @o2net_num_connected_peers()
  %26 = call i32 (i32, i8*, ...) @mlog(i32 %24, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %45

29:                                               ; preds = %20, %14
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %4, align 8
  %32 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ule i32 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* @ML_NOTICE, align 4
  %37 = call i32 (i32, i8*, ...) @mlog(i32 %36, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %44

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %4, align 8
  %43 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %35
  br label %45

45:                                               ; preds = %44, %23
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @o2nm_cluster_attr_write(i8*, i64, i32*) #1

declare dso_local i64 @o2net_num_connected_peers(...) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
