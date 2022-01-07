; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_create_cache_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_create_cache_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32 }
%struct.cache_detail = type { i32 }

@rpc_cachedir_populate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @rpc_create_cache_dir(%struct.dentry* %0, %struct.qstr* %1, i32 %2, %struct.cache_detail* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_detail*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.cache_detail* %3, %struct.cache_detail** %8, align 8
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = load %struct.qstr*, %struct.qstr** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @rpc_cachedir_populate, align 4
  %13 = load %struct.cache_detail*, %struct.cache_detail** %8, align 8
  %14 = call %struct.dentry* @rpc_mkdir_populate(%struct.dentry* %9, %struct.qstr* %10, i32 %11, i32* null, i32 %12, %struct.cache_detail* %13)
  ret %struct.dentry* %14
}

declare dso_local %struct.dentry* @rpc_mkdir_populate(%struct.dentry*, %struct.qstr*, i32, i32*, i32, %struct.cache_detail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
