; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_free_vfsmnt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_free_vfsmnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32, i32 }

@mnt_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_vfsmnt(%struct.vfsmount* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %2, align 8
  %3 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %4 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @kfree(i32 %5)
  %7 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %8 = call i32 @mnt_free_id(%struct.vfsmount* %7)
  %9 = load i32, i32* @mnt_cache, align 4
  %10 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %11 = call i32 @kmem_cache_free(i32 %9, %struct.vfsmount* %10)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mnt_free_id(%struct.vfsmount*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
