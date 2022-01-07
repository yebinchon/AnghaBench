; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.c_tipc_cltr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster = type { i32, %struct._zone*, %struct.cluster*, i64, i32 }
%struct._zone = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Cluster creation failure, no memory\0A\00", align 1
@LOWEST_SLAVE = common dso_local global i32 0, align 4
@tipc_max_slaves = common dso_local global i32 0, align 4
@tipc_max_nodes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Cluster creation failure, no memory for node area\0A\00", align 1
@tipc_local_nodes = common dso_local global %struct.cluster* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cluster* @tipc_cltr_create(i32 %0) #0 {
  %2 = alloca %struct.cluster*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._zone*, align 8
  %5 = alloca %struct.cluster*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.cluster* @kzalloc(i32 40, i32 %7)
  store %struct.cluster* %8, %struct.cluster** %5, align 8
  %9 = load %struct.cluster*, %struct.cluster** %5, align 8
  %10 = icmp eq %struct.cluster* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store %struct.cluster* null, %struct.cluster** %2, align 8
  br label %87

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @tipc_zone(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @tipc_cluster(i32 %16)
  %18 = call i32 @tipc_addr(i32 %15, i32 %17, i32 0)
  %19 = load %struct.cluster*, %struct.cluster** %5, align 8
  %20 = getelementptr inbounds %struct.cluster, %struct.cluster* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @in_own_cluster(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load i32, i32* @LOWEST_SLAVE, align 4
  %26 = load i32, i32* @tipc_max_slaves, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %6, align 4
  br label %31

28:                                               ; preds = %13
  %29 = load i32, i32* @tipc_max_nodes, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.cluster* @kcalloc(i32 %33, i32 8, i32 %34)
  %36 = load %struct.cluster*, %struct.cluster** %5, align 8
  %37 = getelementptr inbounds %struct.cluster, %struct.cluster* %36, i32 0, i32 2
  store %struct.cluster* %35, %struct.cluster** %37, align 8
  %38 = load %struct.cluster*, %struct.cluster** %5, align 8
  %39 = getelementptr inbounds %struct.cluster, %struct.cluster* %38, i32 0, i32 2
  %40 = load %struct.cluster*, %struct.cluster** %39, align 8
  %41 = icmp eq %struct.cluster* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = call i32 @warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.cluster*, %struct.cluster** %5, align 8
  %45 = call i32 @kfree(%struct.cluster* %44)
  store %struct.cluster* null, %struct.cluster** %2, align 8
  br label %87

46:                                               ; preds = %31
  %47 = load i32, i32* %3, align 4
  %48 = call i64 @in_own_cluster(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.cluster*, %struct.cluster** %5, align 8
  %52 = getelementptr inbounds %struct.cluster, %struct.cluster* %51, i32 0, i32 2
  %53 = load %struct.cluster*, %struct.cluster** %52, align 8
  store %struct.cluster* %53, %struct.cluster** @tipc_local_nodes, align 8
  br label %54

54:                                               ; preds = %50, %46
  %55 = load i32, i32* @LOWEST_SLAVE, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.cluster*, %struct.cluster** %5, align 8
  %58 = getelementptr inbounds %struct.cluster, %struct.cluster* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.cluster*, %struct.cluster** %5, align 8
  %60 = getelementptr inbounds %struct.cluster, %struct.cluster* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @tipc_zone(i32 %61)
  %63 = call %struct._zone* @tipc_zone_find(i32 %62)
  store %struct._zone* %63, %struct._zone** %4, align 8
  %64 = load %struct._zone*, %struct._zone** %4, align 8
  %65 = icmp ne %struct._zone* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %3, align 4
  %68 = call %struct._zone* @tipc_zone_create(i32 %67)
  store %struct._zone* %68, %struct._zone** %4, align 8
  br label %69

69:                                               ; preds = %66, %54
  %70 = load %struct._zone*, %struct._zone** %4, align 8
  %71 = icmp ne %struct._zone* %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = load %struct.cluster*, %struct.cluster** %5, align 8
  %74 = getelementptr inbounds %struct.cluster, %struct.cluster* %73, i32 0, i32 2
  %75 = load %struct.cluster*, %struct.cluster** %74, align 8
  %76 = call i32 @kfree(%struct.cluster* %75)
  %77 = load %struct.cluster*, %struct.cluster** %5, align 8
  %78 = call i32 @kfree(%struct.cluster* %77)
  store %struct.cluster* null, %struct.cluster** %2, align 8
  br label %87

79:                                               ; preds = %69
  %80 = load %struct._zone*, %struct._zone** %4, align 8
  %81 = load %struct.cluster*, %struct.cluster** %5, align 8
  %82 = call i32 @tipc_zone_attach_cluster(%struct._zone* %80, %struct.cluster* %81)
  %83 = load %struct._zone*, %struct._zone** %4, align 8
  %84 = load %struct.cluster*, %struct.cluster** %5, align 8
  %85 = getelementptr inbounds %struct.cluster, %struct.cluster* %84, i32 0, i32 1
  store %struct._zone* %83, %struct._zone** %85, align 8
  %86 = load %struct.cluster*, %struct.cluster** %5, align 8
  store %struct.cluster* %86, %struct.cluster** %2, align 8
  br label %87

87:                                               ; preds = %79, %72, %42, %11
  %88 = load %struct.cluster*, %struct.cluster** %2, align 8
  ret %struct.cluster* %88
}

declare dso_local %struct.cluster* @kzalloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @tipc_addr(i32, i32, i32) #1

declare dso_local i32 @tipc_zone(i32) #1

declare dso_local i32 @tipc_cluster(i32) #1

declare dso_local i64 @in_own_cluster(i32) #1

declare dso_local %struct.cluster* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.cluster*) #1

declare dso_local %struct._zone* @tipc_zone_find(i32) #1

declare dso_local %struct._zone* @tipc_zone_create(i32) #1

declare dso_local i32 @tipc_zone_attach_cluster(%struct._zone*, %struct.cluster*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
