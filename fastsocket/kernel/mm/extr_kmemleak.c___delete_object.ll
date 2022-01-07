; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c___delete_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c___delete_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i32, i32, i32, i32, i32 }

@kmemleak_lock = common dso_local global i32 0, align 4
@object_tree_root = common dso_local global i32 0, align 4
@OBJECT_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmemleak_object*)* @__delete_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__delete_object(%struct.kmemleak_object* %0) #0 {
  %2 = alloca %struct.kmemleak_object*, align 8
  %3 = alloca i64, align 8
  store %struct.kmemleak_object* %0, %struct.kmemleak_object** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @write_lock_irqsave(i32* @kmemleak_lock, i64 %4)
  %6 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %7 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %6, i32 0, i32 4
  %8 = call i32 @prio_tree_remove(i32* @object_tree_root, i32* %7)
  %9 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %10 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %9, i32 0, i32 3
  %11 = call i32 @list_del_rcu(i32* %10)
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @write_unlock_irqrestore(i32* @kmemleak_lock, i64 %12)
  %14 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %15 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @OBJECT_ALLOCATED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %24 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %23, i32 0, i32 2
  %25 = call i32 @atomic_read(i32* %24)
  %26 = icmp slt i32 %25, 2
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %30 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %29, i32 0, i32 1
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i32, i32* @OBJECT_ALLOCATED, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %36 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %40 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %39, i32 0, i32 1
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %44 = call i32 @put_object(%struct.kmemleak_object* %43)
  ret void
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @prio_tree_remove(i32*, i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @put_object(%struct.kmemleak_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
