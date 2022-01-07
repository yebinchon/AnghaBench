; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_legacy_write_register_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_legacy_write_register_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@registers_ptid = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@current_regcache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @legacy_write_register_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @legacy_write_register_gen(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NUM_REGS, align 4
  %11 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %12 = add nsw i32 %10, %11
  %13 = icmp slt i32 %9, %12
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi i1 [ false, %2 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @gdb_assert(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @CANNOT_STORE_REGISTER(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %63

22:                                               ; preds = %14
  %23 = load i32, i32* @registers_ptid, align 4
  %24 = load i32, i32* @inferior_ptid, align 4
  %25 = call i32 @ptid_equal(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = call i32 (...) @registers_changed()
  %29 = load i32, i32* @inferior_ptid, align 4
  store i32 %29, i32* @registers_ptid, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @real_register(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @register_cached(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* @current_regcache, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @register_buffer(i32 %41, i32 %42)
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @memcmp(i32 %43, i8* %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %63

49:                                               ; preds = %40, %36
  %50 = call i32 (...) @target_prepare_to_store()
  br label %51

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* @current_regcache, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @register_buffer(i32 %53, i32 %54)
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @memcpy(i32 %55, i8* %56, i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @set_register_cached(i32 %59, i32 1)
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @target_store_registers(i32 %61)
  br label %63

63:                                               ; preds = %52, %48, %21
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @CANNOT_STORE_REGISTER(i32) #1

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

declare dso_local i64 @real_register(i32) #1

declare dso_local i64 @register_cached(i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @register_buffer(i32, i32) #1

declare dso_local i32 @target_prepare_to_store(...) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @set_register_cached(i32, i32) #1

declare dso_local i32 @target_store_registers(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
