; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_make_prologue_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_make_prologue_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_prologue_cache = type { i64, i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.frame_info = type { i32 }

@NUM_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.arm_prologue_cache* (%struct.frame_info*)* @arm_make_prologue_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.arm_prologue_cache* @arm_make_prologue_cache(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.arm_prologue_cache*, align 8
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_prologue_cache*, align 8
  %6 = alloca i64, align 8
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %7 = call %struct.arm_prologue_cache* @frame_obstack_zalloc(i32 40)
  store %struct.arm_prologue_cache* %7, %struct.arm_prologue_cache** %5, align 8
  %8 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %9 = call %struct.TYPE_3__* @trad_frame_alloc_saved_regs(%struct.frame_info* %8)
  %10 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %5, align 8
  %11 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %10, i32 0, i32 3
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %11, align 8
  %12 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %13 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %5, align 8
  %14 = call i32 @arm_scan_prologue(%struct.frame_info* %12, %struct.arm_prologue_cache* %13)
  %15 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %16 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %5, align 8
  %17 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @frame_unwind_register_unsigned(%struct.frame_info* %15, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %5, align 8
  store %struct.arm_prologue_cache* %23, %struct.arm_prologue_cache** %2, align 8
  br label %68

24:                                               ; preds = %1
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %5, align 8
  %27 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %5, align 8
  %31 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %5, align 8
  %35 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %63, %24
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @NUM_REGS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %5, align 8
  %42 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @trad_frame_addr_p(%struct.TYPE_3__* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %5, align 8
  %49 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %5, align 8
  %52 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %50
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  br label %62

62:                                               ; preds = %47, %40
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %36

66:                                               ; preds = %36
  %67 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %5, align 8
  store %struct.arm_prologue_cache* %67, %struct.arm_prologue_cache** %2, align 8
  br label %68

68:                                               ; preds = %66, %22
  %69 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %2, align 8
  ret %struct.arm_prologue_cache* %69
}

declare dso_local %struct.arm_prologue_cache* @frame_obstack_zalloc(i32) #1

declare dso_local %struct.TYPE_3__* @trad_frame_alloc_saved_regs(%struct.frame_info*) #1

declare dso_local i32 @arm_scan_prologue(%struct.frame_info*, %struct.arm_prologue_cache*) #1

declare dso_local i64 @frame_unwind_register_unsigned(%struct.frame_info*, i32) #1

declare dso_local i64 @trad_frame_addr_p(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
