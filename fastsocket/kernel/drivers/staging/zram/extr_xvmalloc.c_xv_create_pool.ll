; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_xvmalloc.c_xv_create_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_xvmalloc.c_xv_create_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xv_pool = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xv_pool* @xv_create_pool() #0 {
  %1 = alloca %struct.xv_pool*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.xv_pool*, align 8
  %4 = load i32, i32* @PAGE_SIZE, align 4
  %5 = call i32 @roundup(i32 4, i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.xv_pool* @kzalloc(i32 %6, i32 %7)
  store %struct.xv_pool* %8, %struct.xv_pool** %3, align 8
  %9 = load %struct.xv_pool*, %struct.xv_pool** %3, align 8
  %10 = icmp ne %struct.xv_pool* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  store %struct.xv_pool* null, %struct.xv_pool** %1, align 8
  br label %17

12:                                               ; preds = %0
  %13 = load %struct.xv_pool*, %struct.xv_pool** %3, align 8
  %14 = getelementptr inbounds %struct.xv_pool, %struct.xv_pool* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.xv_pool*, %struct.xv_pool** %3, align 8
  store %struct.xv_pool* %16, %struct.xv_pool** %1, align 8
  br label %17

17:                                               ; preds = %12, %11
  %18 = load %struct.xv_pool*, %struct.xv_pool** %1, align 8
  ret %struct.xv_pool* %18
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.xv_pool* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
