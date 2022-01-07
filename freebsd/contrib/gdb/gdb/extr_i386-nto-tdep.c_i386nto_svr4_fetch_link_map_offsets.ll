; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-nto-tdep.c_i386nto_svr4_fetch_link_map_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-nto-tdep.c_i386nto_svr4_fetch_link_map_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_map_offsets = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@i386nto_svr4_fetch_link_map_offsets.lmo = internal global %struct.link_map_offsets zeroinitializer, align 8
@i386nto_svr4_fetch_link_map_offsets.lmp = internal global %struct.link_map_offsets* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.link_map_offsets* ()* @i386nto_svr4_fetch_link_map_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.link_map_offsets* @i386nto_svr4_fetch_link_map_offsets() #0 {
  %1 = load %struct.link_map_offsets*, %struct.link_map_offsets** @i386nto_svr4_fetch_link_map_offsets.lmp, align 8
  %2 = icmp eq %struct.link_map_offsets* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store %struct.link_map_offsets* @i386nto_svr4_fetch_link_map_offsets.lmo, %struct.link_map_offsets** @i386nto_svr4_fetch_link_map_offsets.lmp, align 8
  store i32 8, i32* getelementptr inbounds (%struct.link_map_offsets, %struct.link_map_offsets* @i386nto_svr4_fetch_link_map_offsets.lmo, i32 0, i32 0), align 8
  store i32 4, i32* getelementptr inbounds (%struct.link_map_offsets, %struct.link_map_offsets* @i386nto_svr4_fetch_link_map_offsets.lmo, i32 0, i32 1), align 4
  store i32 4, i32* getelementptr inbounds (%struct.link_map_offsets, %struct.link_map_offsets* @i386nto_svr4_fetch_link_map_offsets.lmo, i32 0, i32 2), align 8
  store i32 20, i32* getelementptr inbounds (%struct.link_map_offsets, %struct.link_map_offsets* @i386nto_svr4_fetch_link_map_offsets.lmo, i32 0, i32 3), align 4
  store i64 0, i64* getelementptr inbounds (%struct.link_map_offsets, %struct.link_map_offsets* @i386nto_svr4_fetch_link_map_offsets.lmo, i32 0, i32 11), align 8
  store i32 4, i32* getelementptr inbounds (%struct.link_map_offsets, %struct.link_map_offsets* @i386nto_svr4_fetch_link_map_offsets.lmo, i32 0, i32 4), align 8
  store i32 4, i32* getelementptr inbounds (%struct.link_map_offsets, %struct.link_map_offsets* @i386nto_svr4_fetch_link_map_offsets.lmo, i32 0, i32 5), align 4
  store i32 4, i32* getelementptr inbounds (%struct.link_map_offsets, %struct.link_map_offsets* @i386nto_svr4_fetch_link_map_offsets.lmo, i32 0, i32 6), align 8
  store i32 12, i32* getelementptr inbounds (%struct.link_map_offsets, %struct.link_map_offsets* @i386nto_svr4_fetch_link_map_offsets.lmo, i32 0, i32 7), align 4
  store i32 4, i32* getelementptr inbounds (%struct.link_map_offsets, %struct.link_map_offsets* @i386nto_svr4_fetch_link_map_offsets.lmo, i32 0, i32 8), align 8
  store i32 16, i32* getelementptr inbounds (%struct.link_map_offsets, %struct.link_map_offsets* @i386nto_svr4_fetch_link_map_offsets.lmo, i32 0, i32 9), align 4
  store i32 4, i32* getelementptr inbounds (%struct.link_map_offsets, %struct.link_map_offsets* @i386nto_svr4_fetch_link_map_offsets.lmo, i32 0, i32 10), align 8
  br label %4

4:                                                ; preds = %3, %0
  %5 = load %struct.link_map_offsets*, %struct.link_map_offsets** @i386nto_svr4_fetch_link_map_offsets.lmp, align 8
  ret %struct.link_map_offsets* %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
