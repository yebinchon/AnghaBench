; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmu_notifier.c_do_mmu_notifier_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmu_notifier.c_do_mmu_notifier_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mmu_notifier = type { i32 }
%struct.mm_struct = type { i32, i32, %struct.mmu_notifier_mm*, i32 }
%struct.mmu_notifier_mm = type { i32, i32 }

@srcu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmu_notifier*, %struct.mm_struct*, i32)* @do_mmu_notifier_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mmu_notifier_register(%struct.mmu_notifier* %0, %struct.mm_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.mmu_notifier*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmu_notifier_mm*, align 8
  %8 = alloca i32, align 4
  store %struct.mmu_notifier* %0, %struct.mmu_notifier** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = call i64 @atomic_read(i32* %10)
  %12 = icmp sle i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @srcu, i32 0, i32 0), align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mmu_notifier_mm* @kmalloc(i32 8, i32 %22)
  store %struct.mmu_notifier_mm* %23, %struct.mmu_notifier_mm** %7, align 8
  %24 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %7, align 8
  %25 = icmp ne %struct.mmu_notifier_mm* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %92

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 1
  %37 = call i32 @down_write(i32* %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %40 = call i32 @mm_take_all_locks(%struct.mm_struct* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %82

45:                                               ; preds = %38
  %46 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %47 = call i32 @mm_has_notifiers(%struct.mm_struct* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %45
  %50 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %7, align 8
  %51 = getelementptr inbounds %struct.mmu_notifier_mm, %struct.mmu_notifier_mm* %50, i32 0, i32 1
  %52 = call i32 @INIT_HLIST_HEAD(i32* %51)
  %53 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %7, align 8
  %54 = getelementptr inbounds %struct.mmu_notifier_mm, %struct.mmu_notifier_mm* %53, i32 0, i32 0
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %7, align 8
  %57 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %58 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %57, i32 0, i32 2
  store %struct.mmu_notifier_mm* %56, %struct.mmu_notifier_mm** %58, align 8
  store %struct.mmu_notifier_mm* null, %struct.mmu_notifier_mm** %7, align 8
  br label %59

59:                                               ; preds = %49, %45
  %60 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %61 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %60, i32 0, i32 3
  %62 = call i32 @atomic_inc(i32* %61)
  %63 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %64 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %63, i32 0, i32 2
  %65 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %64, align 8
  %66 = getelementptr inbounds %struct.mmu_notifier_mm, %struct.mmu_notifier_mm* %65, i32 0, i32 0
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load %struct.mmu_notifier*, %struct.mmu_notifier** %4, align 8
  %69 = getelementptr inbounds %struct.mmu_notifier, %struct.mmu_notifier* %68, i32 0, i32 0
  %70 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %71 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %70, i32 0, i32 2
  %72 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %71, align 8
  %73 = getelementptr inbounds %struct.mmu_notifier_mm, %struct.mmu_notifier_mm* %72, i32 0, i32 1
  %74 = call i32 @hlist_add_head(i32* %69, i32* %73)
  %75 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %76 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %75, i32 0, i32 2
  %77 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %76, align 8
  %78 = getelementptr inbounds %struct.mmu_notifier_mm, %struct.mmu_notifier_mm* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %81 = call i32 @mm_drop_all_locks(%struct.mm_struct* %80)
  br label %82

82:                                               ; preds = %59, %44
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %87 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %86, i32 0, i32 1
  %88 = call i32 @up_write(i32* %87)
  br label %89

89:                                               ; preds = %85, %82
  %90 = load %struct.mmu_notifier_mm*, %struct.mmu_notifier_mm** %7, align 8
  %91 = call i32 @kfree(%struct.mmu_notifier_mm* %90)
  br label %92

92:                                               ; preds = %89, %30
  %93 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %94 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %93, i32 0, i32 0
  %95 = call i64 @atomic_read(i32* %94)
  %96 = icmp sle i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @BUG_ON(i32 %97)
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.mmu_notifier_mm* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @mm_take_all_locks(%struct.mm_struct*) #1

declare dso_local i32 @mm_has_notifiers(%struct.mm_struct*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mm_drop_all_locks(%struct.mm_struct*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(%struct.mmu_notifier_mm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
