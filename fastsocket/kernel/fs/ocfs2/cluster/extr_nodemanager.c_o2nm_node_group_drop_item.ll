; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_group_drop_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_group_drop_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.config_item = type { i32 }
%struct.o2nm_node = type { i64, i32, i64 }
%struct.o2nm_cluster = type { i64, i32, i32, %struct.o2nm_node**, i32, i64 }

@O2NM_INVALID_NODE_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_group*, %struct.config_item*)* @o2nm_node_group_drop_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2nm_node_group_drop_item(%struct.config_group* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.o2nm_node*, align 8
  %6 = alloca %struct.o2nm_cluster*, align 8
  store %struct.config_group* %0, %struct.config_group** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %7 = load %struct.config_item*, %struct.config_item** %4, align 8
  %8 = call %struct.o2nm_node* @to_o2nm_node(%struct.config_item* %7)
  store %struct.o2nm_node* %8, %struct.o2nm_node** %5, align 8
  %9 = load %struct.config_group*, %struct.config_group** %3, align 8
  %10 = getelementptr inbounds %struct.config_group, %struct.config_group* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.o2nm_cluster* @to_o2nm_cluster(i32 %12)
  store %struct.o2nm_cluster* %13, %struct.o2nm_cluster** %6, align 8
  %14 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %15 = call i32 @o2net_disconnect_node(%struct.o2nm_node* %14)
  %16 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %17 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %22 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %25 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %30 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* @O2NM_INVALID_NODE_NUM, align 8
  %32 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %33 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %35 = call i32 @o2net_stop_listening(%struct.o2nm_node* %34)
  br label %36

36:                                               ; preds = %28, %20, %2
  %37 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %38 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %37, i32 0, i32 1
  %39 = call i32 @write_lock(i32* %38)
  %40 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %41 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %46 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %45, i32 0, i32 1
  %47 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %48 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %47, i32 0, i32 4
  %49 = call i32 @rb_erase(i32* %46, i32* %48)
  br label %50

50:                                               ; preds = %44, %36
  %51 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %52 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %51, i32 0, i32 3
  %53 = load %struct.o2nm_node**, %struct.o2nm_node*** %52, align 8
  %54 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %55 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.o2nm_node*, %struct.o2nm_node** %53, i64 %56
  %58 = load %struct.o2nm_node*, %struct.o2nm_node** %57, align 8
  %59 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %60 = icmp eq %struct.o2nm_node* %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %50
  %62 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %63 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %62, i32 0, i32 3
  %64 = load %struct.o2nm_node**, %struct.o2nm_node*** %63, align 8
  %65 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %66 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.o2nm_node*, %struct.o2nm_node** %64, i64 %67
  store %struct.o2nm_node* null, %struct.o2nm_node** %68, align 8
  %69 = load %struct.o2nm_node*, %struct.o2nm_node** %5, align 8
  %70 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %73 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @clear_bit(i64 %71, i32 %74)
  br label %76

76:                                               ; preds = %61, %50
  %77 = load %struct.o2nm_cluster*, %struct.o2nm_cluster** %6, align 8
  %78 = getelementptr inbounds %struct.o2nm_cluster, %struct.o2nm_cluster* %77, i32 0, i32 1
  %79 = call i32 @write_unlock(i32* %78)
  %80 = load %struct.config_item*, %struct.config_item** %4, align 8
  %81 = call i32 @config_item_put(%struct.config_item* %80)
  ret void
}

declare dso_local %struct.o2nm_node* @to_o2nm_node(%struct.config_item*) #1

declare dso_local %struct.o2nm_cluster* @to_o2nm_cluster(i32) #1

declare dso_local i32 @o2net_disconnect_node(%struct.o2nm_node*) #1

declare dso_local i32 @o2net_stop_listening(%struct.o2nm_node*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
