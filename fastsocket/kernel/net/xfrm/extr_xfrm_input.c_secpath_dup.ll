; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_input.c_secpath_dup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_input.c_secpath_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_path = type { i32, i32, i32* }

@secpath_cachep = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sec_path* @secpath_dup(%struct.sec_path* %0) #0 {
  %2 = alloca %struct.sec_path*, align 8
  %3 = alloca %struct.sec_path*, align 8
  %4 = alloca %struct.sec_path*, align 8
  %5 = alloca i32, align 4
  store %struct.sec_path* %0, %struct.sec_path** %3, align 8
  %6 = load i32, i32* @secpath_cachep, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.sec_path* @kmem_cache_alloc(i32 %6, i32 %7)
  store %struct.sec_path* %8, %struct.sec_path** %4, align 8
  %9 = load %struct.sec_path*, %struct.sec_path** %4, align 8
  %10 = icmp ne %struct.sec_path* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.sec_path* null, %struct.sec_path** %2, align 8
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.sec_path*, %struct.sec_path** %4, align 8
  %14 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.sec_path*, %struct.sec_path** %3, align 8
  %16 = icmp ne %struct.sec_path* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %12
  %18 = load %struct.sec_path*, %struct.sec_path** %4, align 8
  %19 = load %struct.sec_path*, %struct.sec_path** %3, align 8
  %20 = call i32 @memcpy(%struct.sec_path* %18, %struct.sec_path* %19, i32 16)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %36, %17
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.sec_path*, %struct.sec_path** %4, align 8
  %24 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.sec_path*, %struct.sec_path** %4, align 8
  %29 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @xfrm_state_hold(i32 %34)
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %21

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39, %12
  %41 = load %struct.sec_path*, %struct.sec_path** %4, align 8
  %42 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %41, i32 0, i32 1
  %43 = call i32 @atomic_set(i32* %42, i32 1)
  %44 = load %struct.sec_path*, %struct.sec_path** %4, align 8
  store %struct.sec_path* %44, %struct.sec_path** %2, align 8
  br label %45

45:                                               ; preds = %40, %11
  %46 = load %struct.sec_path*, %struct.sec_path** %2, align 8
  ret %struct.sec_path* %46
}

declare dso_local %struct.sec_path* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.sec_path*, %struct.sec_path*, i32) #1

declare dso_local i32 @xfrm_state_hold(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
