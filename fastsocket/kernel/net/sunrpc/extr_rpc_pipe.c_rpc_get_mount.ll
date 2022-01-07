; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_get_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_get_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }

@rpc_pipe_fs_type = common dso_local global i32 0, align 4
@rpc_mount = common dso_local global %struct.vfsmount* null, align 8
@rpc_mount_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @rpc_get_mount() #0 {
  %1 = alloca %struct.vfsmount*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @simple_pin_fs(i32* @rpc_pipe_fs_type, %struct.vfsmount** @rpc_mount, i32* @rpc_mount_count)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.vfsmount* @ERR_PTR(i32 %7)
  store %struct.vfsmount* %8, %struct.vfsmount** %1, align 8
  br label %11

9:                                                ; preds = %0
  %10 = load %struct.vfsmount*, %struct.vfsmount** @rpc_mount, align 8
  store %struct.vfsmount* %10, %struct.vfsmount** %1, align 8
  br label %11

11:                                               ; preds = %9, %6
  %12 = load %struct.vfsmount*, %struct.vfsmount** %1, align 8
  ret %struct.vfsmount* %12
}

declare dso_local i32 @simple_pin_fs(i32*, %struct.vfsmount**, i32*) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
