; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_legacy_read_register_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_legacy_read_register_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@registers_ptid = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@current_regcache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @legacy_read_register_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @legacy_read_register_gen(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @NUM_REGS, align 4
  %10 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %11 = add nsw i32 %9, %10
  %12 = icmp slt i32 %8, %11
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i1 [ false, %2 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @gdb_assert(i32 %15)
  %17 = load i32, i32* @registers_ptid, align 4
  %18 = load i32, i32* @inferior_ptid, align 4
  %19 = call i32 @ptid_equal(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = call i32 (...) @registers_changed()
  %23 = load i32, i32* @inferior_ptid, align 4
  store i32 %23, i32* @registers_ptid, align 4
  br label %24

24:                                               ; preds = %21, %13
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @register_cached(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @target_fetch_registers(i32 %29)
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @current_regcache, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @register_buffer(i32 %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %36)
  %38 = call i32 @memcpy(i8* %32, i32 %35, i32 %37)
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i32 @register_cached(i32) #1

declare dso_local i32 @target_fetch_registers(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @register_buffer(i32, i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
