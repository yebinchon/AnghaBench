; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_iint.c_ima_inode_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_iint.c_ima_inode_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ima_iint_cache = type { i32 }

@ima_enabled = common dso_local global i32 0, align 4
@ima_iint_lock = common dso_local global i32 0, align 4
@ima_iint_store = common dso_local global i32 0, align 4
@iint_rcu_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ima_inode_free(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ima_iint_cache*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load i32, i32* @ima_enabled, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %20

7:                                                ; preds = %1
  %8 = call i32 @spin_lock(i32* @ima_iint_lock)
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = ptrtoint %struct.inode* %9 to i64
  %11 = call %struct.ima_iint_cache* @radix_tree_delete(i32* @ima_iint_store, i64 %10)
  store %struct.ima_iint_cache* %11, %struct.ima_iint_cache** %3, align 8
  %12 = call i32 @spin_unlock(i32* @ima_iint_lock)
  %13 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %3, align 8
  %14 = icmp ne %struct.ima_iint_cache* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %3, align 8
  %17 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %16, i32 0, i32 0
  %18 = load i32, i32* @iint_rcu_free, align 4
  %19 = call i32 @call_rcu(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %6, %15, %7
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ima_iint_cache* @radix_tree_delete(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
