; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_add_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_add_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32, i64, i32 }
%struct.net_bridge_port = type { i64, i32 }
%struct.br_ip = type { i32 }
%struct.net_bridge_mdb_entry = type { i32, %struct.net_bridge_port_group* }
%struct.net_bridge_port_group = type { i32, i32, i32, %struct.net_bridge_port_group*, %struct.net_bridge_port*, %struct.br_ip }

@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@br_multicast_port_group_expired = common dso_local global i32 0, align 4
@br_multicast_port_group_query_expired = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_port*, %struct.br_ip*)* @br_multicast_add_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_multicast_add_group(%struct.net_bridge* %0, %struct.net_bridge_port* %1, %struct.br_ip* %2) #0 {
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca %struct.br_ip*, align 8
  %7 = alloca %struct.net_bridge_mdb_entry*, align 8
  %8 = alloca %struct.net_bridge_port_group*, align 8
  %9 = alloca %struct.net_bridge_port_group**, align 8
  %10 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %5, align 8
  store %struct.br_ip* %2, %struct.br_ip** %6, align 8
  %11 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %12 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %15 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @netif_running(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %21 = icmp ne %struct.net_bridge_port* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %24 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BR_STATE_DISABLED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %3
  br label %136

29:                                               ; preds = %22, %19
  %30 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %31 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %32 = load %struct.br_ip*, %struct.br_ip** %6, align 8
  %33 = call %struct.net_bridge_mdb_entry* @br_multicast_new_group(%struct.net_bridge* %30, %struct.net_bridge_port* %31, %struct.br_ip* %32)
  store %struct.net_bridge_mdb_entry* %33, %struct.net_bridge_mdb_entry** %7, align 8
  %34 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %7, align 8
  %35 = call i32 @PTR_ERR(%struct.net_bridge_mdb_entry* %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %7, align 8
  %37 = call i64 @IS_ERR(%struct.net_bridge_mdb_entry* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %29
  %40 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %7, align 8
  %41 = icmp ne %struct.net_bridge_mdb_entry* %40, null
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %39, %29
  %44 = phi i1 [ true, %29 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %137

49:                                               ; preds = %43
  %50 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %51 = icmp ne %struct.net_bridge_port* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %7, align 8
  %54 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %136

55:                                               ; preds = %49
  %56 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %7, align 8
  %57 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %56, i32 0, i32 1
  store %struct.net_bridge_port_group** %57, %struct.net_bridge_port_group*** %9, align 8
  br label %58

58:                                               ; preds = %87, %55
  %59 = load %struct.net_bridge_port_group**, %struct.net_bridge_port_group*** %9, align 8
  %60 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %59, align 8
  store %struct.net_bridge_port_group* %60, %struct.net_bridge_port_group** %8, align 8
  %61 = icmp ne %struct.net_bridge_port_group* %60, null
  br i1 %61, label %62, label %90

62:                                               ; preds = %58
  %63 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %8, align 8
  %64 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %63, i32 0, i32 4
  %65 = load %struct.net_bridge_port*, %struct.net_bridge_port** %64, align 8
  %66 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %67 = icmp eq %struct.net_bridge_port* %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %8, align 8
  %70 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %69, i32 0, i32 1
  %71 = load i64, i64* @jiffies, align 8
  %72 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %73 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = call i32 @mod_timer(i32* %70, i64 %75)
  br label %136

77:                                               ; preds = %62
  %78 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %8, align 8
  %79 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %78, i32 0, i32 4
  %80 = load %struct.net_bridge_port*, %struct.net_bridge_port** %79, align 8
  %81 = ptrtoint %struct.net_bridge_port* %80 to i64
  %82 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %83 = ptrtoint %struct.net_bridge_port* %82 to i64
  %84 = icmp ult i64 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %90

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %8, align 8
  %89 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %88, i32 0, i32 3
  store %struct.net_bridge_port_group** %89, %struct.net_bridge_port_group*** %9, align 8
  br label %58

90:                                               ; preds = %85, %58
  %91 = load i32, i32* @GFP_ATOMIC, align 4
  %92 = call %struct.net_bridge_port_group* @kzalloc(i32 40, i32 %91)
  store %struct.net_bridge_port_group* %92, %struct.net_bridge_port_group** %8, align 8
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %10, align 4
  %95 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %8, align 8
  %96 = icmp ne %struct.net_bridge_port_group* %95, null
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %137

102:                                              ; preds = %90
  %103 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %8, align 8
  %104 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %103, i32 0, i32 5
  %105 = load %struct.br_ip*, %struct.br_ip** %6, align 8
  %106 = bitcast %struct.br_ip* %104 to i8*
  %107 = bitcast %struct.br_ip* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 4 %107, i64 4, i1 false)
  %108 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %109 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %8, align 8
  %110 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %109, i32 0, i32 4
  store %struct.net_bridge_port* %108, %struct.net_bridge_port** %110, align 8
  %111 = load %struct.net_bridge_port_group**, %struct.net_bridge_port_group*** %9, align 8
  %112 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %111, align 8
  %113 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %8, align 8
  %114 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %113, i32 0, i32 3
  store %struct.net_bridge_port_group* %112, %struct.net_bridge_port_group** %114, align 8
  %115 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %8, align 8
  %116 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %115, i32 0, i32 2
  %117 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %118 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %117, i32 0, i32 1
  %119 = call i32 @hlist_add_head(i32* %116, i32* %118)
  %120 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %8, align 8
  %121 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %120, i32 0, i32 1
  %122 = load i32, i32* @br_multicast_port_group_expired, align 4
  %123 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %8, align 8
  %124 = ptrtoint %struct.net_bridge_port_group* %123 to i64
  %125 = call i32 @setup_timer(i32* %121, i32 %122, i64 %124)
  %126 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %8, align 8
  %127 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %126, i32 0, i32 0
  %128 = load i32, i32* @br_multicast_port_group_query_expired, align 4
  %129 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %8, align 8
  %130 = ptrtoint %struct.net_bridge_port_group* %129 to i64
  %131 = call i32 @setup_timer(i32* %127, i32 %128, i64 %130)
  %132 = load %struct.net_bridge_port_group**, %struct.net_bridge_port_group*** %9, align 8
  %133 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %132, align 8
  %134 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %8, align 8
  %135 = call i32 @rcu_assign_pointer(%struct.net_bridge_port_group* %133, %struct.net_bridge_port_group* %134)
  br label %136

136:                                              ; preds = %102, %68, %52, %28
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %136, %101, %48
  %138 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %139 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %138, i32 0, i32 0
  %140 = call i32 @spin_unlock(i32* %139)
  %141 = load i32, i32* %10, align 4
  ret i32 %141
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local %struct.net_bridge_mdb_entry* @br_multicast_new_group(%struct.net_bridge*, %struct.net_bridge_port*, %struct.br_ip*) #1

declare dso_local i32 @PTR_ERR(%struct.net_bridge_mdb_entry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IS_ERR(%struct.net_bridge_mdb_entry*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local %struct.net_bridge_port_group* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @rcu_assign_pointer(%struct.net_bridge_port_group*, %struct.net_bridge_port_group*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
