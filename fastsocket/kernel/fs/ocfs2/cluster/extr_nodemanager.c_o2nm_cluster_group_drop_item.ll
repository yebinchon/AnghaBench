; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_cluster_group_drop_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_cluster_group_drop_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2nm_cluster = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.config_item }
%struct.config_item = type { i32 }
%struct.config_group = type { i32 }

@o2nm_single_cluster = common dso_local global %struct.o2nm_cluster* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_group*, %struct.config_item*)* @o2nm_cluster_group_drop_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2nm_cluster_group_drop_item(%struct.config_group* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.o2nm_cluster*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.config_item*, align 8
  store %struct.config_group* %0, %struct.config_group** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %8 = load %struct.config_item*, %struct.config_item** %4, align 8
  %9 = call %struct.o2nm_cluster* @to_o2nm_cluster(%struct.config_item* %8)
  store %struct.o2nm_cluster* %9, %struct.o2nm_cluster** %5, align 8
  %10 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** @o2nm_single_cluster, align 8
  %11 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %5, align 8
  %12 = icmp ne %struct.o2nm_cluster* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  store %struct.o2nm_cluster* null, %struct.o2nm_cluster** @o2nm_single_cluster, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %44, %2
  %16 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %5, align 8
  %17 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %19, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %15
  %26 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %5, align 8
  %27 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %29, i64 %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.config_item* %34, %struct.config_item** %7, align 8
  %35 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %5, align 8
  %36 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %38, i64 %40
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %41, align 8
  %42 = load %struct.config_item*, %struct.config_item** %7, align 8
  %43 = call i32 @config_item_put(%struct.config_item* %42)
  br label %44

44:                                               ; preds = %25
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %15

47:                                               ; preds = %15
  %48 = load %struct.config_item*, %struct.config_item** %4, align 8
  %49 = call i32 @config_item_put(%struct.config_item* %48)
  ret void
}

declare dso_local %struct.o2nm_cluster* @to_o2nm_cluster(%struct.config_item*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
