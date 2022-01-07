; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster = type { i64, i64, %struct.cluster* }

@LOWEST_SLAVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_cltr_delete(%struct.cluster* %0) #0 {
  %2 = alloca %struct.cluster*, align 8
  %3 = alloca i64, align 8
  store %struct.cluster* %0, %struct.cluster** %2, align 8
  %4 = load %struct.cluster*, %struct.cluster** %2, align 8
  %5 = icmp ne %struct.cluster* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %49

7:                                                ; preds = %1
  store i64 1, i64* %3, align 8
  br label %8

8:                                                ; preds = %21, %7
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.cluster*, %struct.cluster** %2, align 8
  %11 = getelementptr inbounds %struct.cluster, %struct.cluster* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ule i64 %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load %struct.cluster*, %struct.cluster** %2, align 8
  %16 = getelementptr inbounds %struct.cluster, %struct.cluster* %15, i32 0, i32 2
  %17 = load %struct.cluster*, %struct.cluster** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.cluster, %struct.cluster* %17, i64 %18
  %20 = call i32 @tipc_node_delete(%struct.cluster* byval(%struct.cluster) align 8 %19)
  br label %21

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %8

24:                                               ; preds = %8
  %25 = load i64, i64* @LOWEST_SLAVE, align 8
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %39, %24
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.cluster*, %struct.cluster** %2, align 8
  %29 = getelementptr inbounds %struct.cluster, %struct.cluster* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ule i64 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.cluster*, %struct.cluster** %2, align 8
  %34 = getelementptr inbounds %struct.cluster, %struct.cluster* %33, i32 0, i32 2
  %35 = load %struct.cluster*, %struct.cluster** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.cluster, %struct.cluster* %35, i64 %36
  %38 = call i32 @tipc_node_delete(%struct.cluster* byval(%struct.cluster) align 8 %37)
  br label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %26

42:                                               ; preds = %26
  %43 = load %struct.cluster*, %struct.cluster** %2, align 8
  %44 = getelementptr inbounds %struct.cluster, %struct.cluster* %43, i32 0, i32 2
  %45 = load %struct.cluster*, %struct.cluster** %44, align 8
  %46 = call i32 @kfree(%struct.cluster* %45)
  %47 = load %struct.cluster*, %struct.cluster** %2, align 8
  %48 = call i32 @kfree(%struct.cluster* %47)
  br label %49

49:                                               ; preds = %42, %6
  ret void
}

declare dso_local i32 @tipc_node_delete(%struct.cluster* byval(%struct.cluster) align 8) #1

declare dso_local i32 @kfree(%struct.cluster*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
