; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_locking-selftest.c_init_shared_classes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_locking-selftest.c_init_shared_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lock_X1 = common dso_local global i32 0, align 4
@rwlock_X1 = common dso_local global i32 0, align 4
@mutex_X1 = common dso_local global i32 0, align 4
@rwsem_X1 = common dso_local global i32 0, align 4
@lock_X2 = common dso_local global i32 0, align 4
@rwlock_X2 = common dso_local global i32 0, align 4
@mutex_X2 = common dso_local global i32 0, align 4
@rwsem_X2 = common dso_local global i32 0, align 4
@lock_Y1 = common dso_local global i32 0, align 4
@rwlock_Y1 = common dso_local global i32 0, align 4
@mutex_Y1 = common dso_local global i32 0, align 4
@rwsem_Y1 = common dso_local global i32 0, align 4
@lock_Y2 = common dso_local global i32 0, align 4
@rwlock_Y2 = common dso_local global i32 0, align 4
@mutex_Y2 = common dso_local global i32 0, align 4
@rwsem_Y2 = common dso_local global i32 0, align 4
@lock_Z1 = common dso_local global i32 0, align 4
@rwlock_Z1 = common dso_local global i32 0, align 4
@mutex_Z1 = common dso_local global i32 0, align 4
@rwsem_Z1 = common dso_local global i32 0, align 4
@lock_Z2 = common dso_local global i32 0, align 4
@rwlock_Z2 = common dso_local global i32 0, align 4
@mutex_Z2 = common dso_local global i32 0, align 4
@rwsem_Z2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_shared_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_shared_classes() #0 {
  %1 = call i32 @init_class_X(i32* @lock_X1, i32* @rwlock_X1, i32* @mutex_X1, i32* @rwsem_X1)
  %2 = call i32 @init_class_X(i32* @lock_X2, i32* @rwlock_X2, i32* @mutex_X2, i32* @rwsem_X2)
  %3 = call i32 @init_class_Y(i32* @lock_Y1, i32* @rwlock_Y1, i32* @mutex_Y1, i32* @rwsem_Y1)
  %4 = call i32 @init_class_Y(i32* @lock_Y2, i32* @rwlock_Y2, i32* @mutex_Y2, i32* @rwsem_Y2)
  %5 = call i32 @init_class_Z(i32* @lock_Z1, i32* @rwlock_Z1, i32* @mutex_Z1, i32* @rwsem_Z1)
  %6 = call i32 @init_class_Z(i32* @lock_Z2, i32* @rwlock_Z2, i32* @mutex_Z2, i32* @rwsem_Z2)
  ret void
}

declare dso_local i32 @init_class_X(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @init_class_Y(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @init_class_Z(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
