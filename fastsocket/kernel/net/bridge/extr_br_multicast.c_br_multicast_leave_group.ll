; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_leave_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_leave_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i64, i32, %struct.TYPE_4__, %struct.TYPE_4__, i64, %struct.net_bridge_mdb_htable*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.net_bridge_mdb_htable = type { i32 }
%struct.net_bridge_port = type { i64, %struct.TYPE_4__ }
%struct.br_ip = type { i32 }
%struct.net_bridge_mdb_entry = type { %struct.TYPE_4__, i64, %struct.TYPE_4__, i64, i64, %struct.net_bridge_port_group*, i32 }
%struct.net_bridge_port_group = type { %struct.TYPE_4__, i32, %struct.net_bridge_port*, %struct.net_bridge_port_group* }

@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge*, %struct.net_bridge_port*, %struct.br_ip*)* @br_multicast_leave_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_leave_group(%struct.net_bridge* %0, %struct.net_bridge_port* %1, %struct.br_ip* %2) #0 {
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca %struct.br_ip*, align 8
  %7 = alloca %struct.net_bridge_mdb_htable*, align 8
  %8 = alloca %struct.net_bridge_mdb_entry*, align 8
  %9 = alloca %struct.net_bridge_port_group*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %5, align 8
  store %struct.br_ip* %2, %struct.br_ip** %6, align 8
  %12 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %13 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %12, i32 0, i32 2
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %16 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @netif_running(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %22 = icmp ne %struct.net_bridge_port* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %25 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BR_STATE_DISABLED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %23, %20
  %30 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %31 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %30, i32 0, i32 4
  %32 = call i64 @timer_pending(%struct.TYPE_4__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %23, %3
  br label %183

35:                                               ; preds = %29
  %36 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %37 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %36, i32 0, i32 6
  %38 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %37, align 8
  store %struct.net_bridge_mdb_htable* %38, %struct.net_bridge_mdb_htable** %7, align 8
  %39 = load %struct.net_bridge_mdb_htable*, %struct.net_bridge_mdb_htable** %7, align 8
  %40 = load %struct.br_ip*, %struct.br_ip** %6, align 8
  %41 = call %struct.net_bridge_mdb_entry* @br_mdb_ip_get(%struct.net_bridge_mdb_htable* %39, %struct.br_ip* %40)
  store %struct.net_bridge_mdb_entry* %41, %struct.net_bridge_mdb_entry** %8, align 8
  %42 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %43 = icmp ne %struct.net_bridge_mdb_entry* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %183

45:                                               ; preds = %35
  %46 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %47 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %129

50:                                               ; preds = %45
  %51 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %52 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %51, i32 0, i32 4
  %53 = call i64 @timer_pending(%struct.TYPE_4__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %129, label %55

55:                                               ; preds = %50
  %56 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %57 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %58 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %59 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %58, i32 0, i32 6
  %60 = call i32 @__br_multicast_send_query(%struct.net_bridge* %56, %struct.net_bridge_port* %57, i32* %59)
  %61 = load i64, i64* @jiffies, align 8
  %62 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %63 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %66 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = mul i64 %64, %67
  %69 = add i64 %61, %68
  store i64 %69, i64* %11, align 8
  %70 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %71 = icmp ne %struct.net_bridge_port* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %55
  %73 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %74 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %73, i32 0, i32 1
  br label %78

75:                                               ; preds = %55
  %76 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %77 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %76, i32 0, i32 3
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi %struct.TYPE_4__* [ %74, %72 ], [ %77, %75 ]
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @mod_timer(%struct.TYPE_4__* %79, i64 %80)
  %82 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %83 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %82, i32 0, i32 5
  %84 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %83, align 8
  store %struct.net_bridge_port_group* %84, %struct.net_bridge_port_group** %9, align 8
  br label %85

85:                                               ; preds = %124, %78
  %86 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %9, align 8
  %87 = icmp ne %struct.net_bridge_port_group* %86, null
  br i1 %87, label %88, label %128

88:                                               ; preds = %85
  %89 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %9, align 8
  %90 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %89, i32 0, i32 2
  %91 = load %struct.net_bridge_port*, %struct.net_bridge_port** %90, align 8
  %92 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %93 = icmp ne %struct.net_bridge_port* %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %124

95:                                               ; preds = %88
  %96 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %9, align 8
  %97 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %96, i32 0, i32 1
  %98 = call i32 @hlist_unhashed(i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %123, label %100

100:                                              ; preds = %95
  %101 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %9, align 8
  %102 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %101, i32 0, i32 0
  %103 = call i64 @timer_pending(%struct.TYPE_4__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %9, align 8
  %107 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @time_after(i32 %109, i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %123

113:                                              ; preds = %100
  %114 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %9, align 8
  %115 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %114, i32 0, i32 0
  %116 = call i64 @try_to_del_timer_sync(%struct.TYPE_4__* %115)
  %117 = icmp sge i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113, %105
  %119 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %9, align 8
  %120 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %119, i32 0, i32 0
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @mod_timer(%struct.TYPE_4__* %120, i64 %121)
  br label %123

123:                                              ; preds = %118, %113, %105, %95
  br label %128

124:                                              ; preds = %94
  %125 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %9, align 8
  %126 = getelementptr inbounds %struct.net_bridge_port_group, %struct.net_bridge_port_group* %125, i32 0, i32 3
  %127 = load %struct.net_bridge_port_group*, %struct.net_bridge_port_group** %126, align 8
  store %struct.net_bridge_port_group* %127, %struct.net_bridge_port_group** %9, align 8
  br label %85

128:                                              ; preds = %123, %85
  br label %129

129:                                              ; preds = %128, %50, %45
  %130 = load i64, i64* @jiffies, align 8
  store i64 %130, i64* %10, align 8
  %131 = load i64, i64* %10, align 8
  %132 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %133 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %136 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = mul i64 %134, %137
  %139 = add i64 %131, %138
  store i64 %139, i64* %11, align 8
  %140 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %141 = icmp ne %struct.net_bridge_port* %140, null
  br i1 %141, label %182, label %142

142:                                              ; preds = %129
  %143 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %144 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %181

147:                                              ; preds = %142
  %148 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %149 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %181

152:                                              ; preds = %147
  %153 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %154 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %153, i32 0, i32 2
  %155 = call i64 @timer_pending(%struct.TYPE_4__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %159 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i64, i64* %11, align 8
  %163 = call i32 @time_after(i32 %161, i64 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %170, label %181

165:                                              ; preds = %152
  %166 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %167 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %166, i32 0, i32 2
  %168 = call i64 @try_to_del_timer_sync(%struct.TYPE_4__* %167)
  %169 = icmp sge i64 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %165, %157
  %171 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %172 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %171, i32 0, i32 2
  %173 = load i64, i64* %11, align 8
  %174 = call i32 @mod_timer(%struct.TYPE_4__* %172, i64 %173)
  %175 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %176 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %175, i32 0, i32 1
  store i64 0, i64* %176, align 8
  %177 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %178 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %177, i32 0, i32 0
  %179 = load i64, i64* %10, align 8
  %180 = call i32 @mod_timer(%struct.TYPE_4__* %178, i64 %179)
  br label %181

181:                                              ; preds = %170, %165, %157, %147, %142
  br label %182

182:                                              ; preds = %181, %129
  br label %183

183:                                              ; preds = %182, %44, %34
  %184 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %185 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %184, i32 0, i32 2
  %186 = call i32 @spin_unlock(i32* %185)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i64 @timer_pending(%struct.TYPE_4__*) #1

declare dso_local %struct.net_bridge_mdb_entry* @br_mdb_ip_get(%struct.net_bridge_mdb_htable*, %struct.br_ip*) #1

declare dso_local i32 @__br_multicast_send_query(%struct.net_bridge*, %struct.net_bridge_port*, i32*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i64 @try_to_del_timer_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
