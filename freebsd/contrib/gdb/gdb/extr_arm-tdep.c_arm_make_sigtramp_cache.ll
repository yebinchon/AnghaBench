; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_make_sigtramp_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_make_sigtramp_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_prologue_cache = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.frame_info = type { i32 }

@ARM_SP_REGNUM = common dso_local global i64 0, align 8
@NUM_REGS = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.arm_prologue_cache* (%struct.frame_info*)* @arm_make_sigtramp_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.arm_prologue_cache* @arm_make_sigtramp_cache(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_info*, align 8
  %3 = alloca %struct.arm_prologue_cache*, align 8
  %4 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %2, align 8
  %5 = call %struct.arm_prologue_cache* @frame_obstack_zalloc(i32 24)
  store %struct.arm_prologue_cache* %5, %struct.arm_prologue_cache** %3, align 8
  %6 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %7 = load i64, i64* @ARM_SP_REGNUM, align 8
  %8 = call i32 @frame_unwind_register_unsigned(%struct.frame_info* %6, i64 %7)
  %9 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %3, align 8
  %10 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %12 = call %struct.TYPE_2__* @trad_frame_alloc_saved_regs(%struct.frame_info* %11)
  %13 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %3, align 8
  %14 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %13, i32 0, i32 1
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %14, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %34, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @NUM_REGS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %3, align 8
  %21 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %24 = call i32 @frame_pc_unwind(%struct.frame_info* %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @SIGCONTEXT_REGISTER_ADDRESS(i32 %22, i32 %24, i32 %25)
  %27 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %3, align 8
  %28 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %26, i32* %33, align 4
  br label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %15

37:                                               ; preds = %15
  %38 = load i64, i64* @ARM_SP_REGNUM, align 8
  %39 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %3, align 8
  %40 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %3, align 8
  %42 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %3, align 8
  %45 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @current_gdbarch, align 4
  %51 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %3, align 8
  %52 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @register_size(i32 %50, i64 %53)
  %55 = call i32 @read_memory_integer(i32 %49, i32 %54)
  %56 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %3, align 8
  %57 = getelementptr inbounds %struct.arm_prologue_cache, %struct.arm_prologue_cache* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.arm_prologue_cache*, %struct.arm_prologue_cache** %3, align 8
  ret %struct.arm_prologue_cache* %58
}

declare dso_local %struct.arm_prologue_cache* @frame_obstack_zalloc(i32) #1

declare dso_local i32 @frame_unwind_register_unsigned(%struct.frame_info*, i64) #1

declare dso_local %struct.TYPE_2__* @trad_frame_alloc_saved_regs(%struct.frame_info*) #1

declare dso_local i32 @SIGCONTEXT_REGISTER_ADDRESS(i32, i32, i32) #1

declare dso_local i32 @frame_pc_unwind(%struct.frame_info*) #1

declare dso_local i32 @read_memory_integer(i32, i32) #1

declare dso_local i32 @register_size(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
