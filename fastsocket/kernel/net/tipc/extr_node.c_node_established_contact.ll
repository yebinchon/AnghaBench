; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_node_established_contact.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_node_established_contact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32, %struct.TYPE_2__, %struct.cluster* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.cluster = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"node_established_contact:-> %x\0A\00", align 1
@tipc_named_node_up = common dso_local global i64 0, align 8
@tipc_own_addr = common dso_local global i32 0, align 4
@tipc_max_nodes = common dso_local global i32 0, align 4
@tipc_cltr_bcast_nodes = common dso_local global i32 0, align 4
@tipc_own_tag = common dso_local global i32 0, align 4
@LOWEST_SLAVE = common dso_local global i32 0, align 4
@tipc_highest_allowed_slave = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_node*)* @node_established_contact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_established_contact(%struct.tipc_node* %0) #0 {
  %2 = alloca %struct.tipc_node*, align 8
  %3 = alloca %struct.cluster*, align 8
  store %struct.tipc_node* %0, %struct.tipc_node** %2, align 8
  %4 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %5 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %9 = call i32 @tipc_node_has_active_routes(%struct.tipc_node* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %13 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @in_own_cluster(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i64, i64* @tipc_named_node_up, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %21 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @tipc_k_signal(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %17, %11, %1
  %25 = call i32 (...) @tipc_bclink_get_last_sent()
  %26 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %27 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @tipc_own_addr, align 4
  %30 = call i64 @is_slave(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %116

33:                                               ; preds = %24
  %34 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %35 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @in_own_cluster(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @tipc_own_addr, align 4
  %41 = call %struct.cluster* @tipc_cltr_find(i32 %40)
  store %struct.cluster* %41, %struct.cluster** %3, align 8
  %42 = load %struct.cluster*, %struct.cluster** %3, align 8
  %43 = icmp ne %struct.cluster* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @tipc_own_addr, align 4
  %46 = call %struct.cluster* @tipc_cltr_create(i32 %45)
  store %struct.cluster* %46, %struct.cluster** %3, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.cluster*, %struct.cluster** %3, align 8
  %49 = icmp ne %struct.cluster* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.cluster*, %struct.cluster** %3, align 8
  %52 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %53 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @tipc_max_nodes, align 4
  %56 = call i32 @tipc_cltr_bcast_new_route(%struct.cluster* %51, i32 %54, i32 1, i32 %55)
  br label %57

57:                                               ; preds = %50, %47
  br label %116

58:                                               ; preds = %33
  %59 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %60 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %59, i32 0, i32 2
  %61 = load %struct.cluster*, %struct.cluster** %60, align 8
  store %struct.cluster* %61, %struct.cluster** %3, align 8
  %62 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %63 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @is_slave(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %58
  %68 = load %struct.cluster*, %struct.cluster** %3, align 8
  %69 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %70 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @tipc_max_nodes, align 4
  %73 = call i32 @tipc_cltr_bcast_new_route(%struct.cluster* %68, i32 %71, i32 1, i32 %72)
  %74 = load %struct.cluster*, %struct.cluster** %3, align 8
  %75 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %76 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @tipc_cltr_send_local_routes(%struct.cluster* %74, i32 %77)
  br label %116

79:                                               ; preds = %58
  %80 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %81 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %87 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @tipc_nmap_add(i32* @tipc_cltr_bcast_nodes, i32 %88)
  %90 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %91 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @tipc_own_addr, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i32, i32* @tipc_own_tag, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* @tipc_own_tag, align 4
  br label %98

98:                                               ; preds = %95, %85
  br label %99

99:                                               ; preds = %98, %79
  %100 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %101 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @tipc_net_send_external_routes(i32 %102)
  %104 = load %struct.cluster*, %struct.cluster** %3, align 8
  %105 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %106 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @tipc_cltr_send_slave_routes(%struct.cluster* %104, i32 %107)
  %109 = load %struct.cluster*, %struct.cluster** %3, align 8
  %110 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  %111 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @LOWEST_SLAVE, align 4
  %114 = load i32, i32* @tipc_highest_allowed_slave, align 4
  %115 = call i32 @tipc_cltr_bcast_new_route(%struct.cluster* %109, i32 %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %99, %67, %57, %32
  ret void
}

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @tipc_node_has_active_routes(%struct.tipc_node*) #1

declare dso_local i64 @in_own_cluster(i32) #1

declare dso_local i32 @tipc_k_signal(i32, i32) #1

declare dso_local i32 @tipc_bclink_get_last_sent(...) #1

declare dso_local i64 @is_slave(i32) #1

declare dso_local %struct.cluster* @tipc_cltr_find(i32) #1

declare dso_local %struct.cluster* @tipc_cltr_create(i32) #1

declare dso_local i32 @tipc_cltr_bcast_new_route(%struct.cluster*, i32, i32, i32) #1

declare dso_local i32 @tipc_cltr_send_local_routes(%struct.cluster*, i32) #1

declare dso_local i32 @tipc_nmap_add(i32*, i32) #1

declare dso_local i32 @tipc_net_send_external_routes(i32) #1

declare dso_local i32 @tipc_cltr_send_slave_routes(%struct.cluster*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
