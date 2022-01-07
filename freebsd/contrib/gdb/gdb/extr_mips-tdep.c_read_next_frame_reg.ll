; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_read_next_frame_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_read_next_frame_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }

@NUM_REGS = common dso_local global i32 0, align 4
@current_regcache = common dso_local global i32 0, align 4
@SP_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.frame_info*, i32)* @read_next_frame_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_next_frame_reg(%struct.frame_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.frame_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @NUM_REGS, align 4
  %9 = icmp sge i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @gdb_assert(i32 %10)
  %12 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %13 = icmp eq %struct.frame_info* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @current_regcache, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @regcache_cooked_read_signed(i32 %15, i32 %16, i32* %6)
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %35

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @NUM_REGS, align 4
  %22 = srem i32 %20, %21
  %23 = load i32, i32* @SP_REGNUM, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @NUM_REGS, align 4
  %29 = srem i32 %27, %28
  %30 = call i32 @frame_unwind_register_signed(%struct.frame_info* %26, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %19
  %32 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @frame_unwind_register_signed(%struct.frame_info* %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %25, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @regcache_cooked_read_signed(i32, i32, i32*) #1

declare dso_local i32 @frame_unwind_register_signed(%struct.frame_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
