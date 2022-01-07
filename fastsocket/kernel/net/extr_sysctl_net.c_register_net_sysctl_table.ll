; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_sysctl_net.c_register_net_sysctl_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_sysctl_net.c_register_net_sysctl_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nsproxy* }
%struct.nsproxy = type { %struct.net* }
%struct.net = type { i32 }
%struct.ctl_table_header = type { i32 }
%struct.ctl_path = type { i32 }
%struct.ctl_table = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@net_sysctl_root = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ctl_table_header* @register_net_sysctl_table(%struct.net* %0, %struct.ctl_path* %1, %struct.ctl_table* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.ctl_path*, align 8
  %6 = alloca %struct.ctl_table*, align 8
  %7 = alloca %struct.nsproxy, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.ctl_path* %1, %struct.ctl_path** %5, align 8
  store %struct.ctl_table* %2, %struct.ctl_table** %6, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nsproxy*, %struct.nsproxy** %9, align 8
  %11 = bitcast %struct.nsproxy* %7 to i8*
  %12 = bitcast %struct.nsproxy* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = load %struct.net*, %struct.net** %4, align 8
  %14 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %7, i32 0, i32 0
  store %struct.net* %13, %struct.net** %14, align 8
  %15 = load %struct.ctl_path*, %struct.ctl_path** %5, align 8
  %16 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %17 = call %struct.ctl_table_header* @__register_sysctl_paths(i32* @net_sysctl_root, %struct.nsproxy* %7, %struct.ctl_path* %15, %struct.ctl_table* %16)
  ret %struct.ctl_table_header* %17
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.ctl_table_header* @__register_sysctl_paths(i32*, %struct.nsproxy*, %struct.ctl_path*, %struct.ctl_table*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
