; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_read_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-tdep.c_ia64_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_regcache = common dso_local global i32 0, align 4
@IA64_BSPSTORE_REGNUM = common dso_local global i32 0, align 4
@IA64_BSP_REGNUM = common dso_local global i32 0, align 4
@current_target = common dso_local global i32 0, align 4
@TARGET_OBJECT_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i32)* @ia64_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_read_reg(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @current_regcache, align 4
  %10 = load i32, i32* @IA64_BSPSTORE_REGNUM, align 4
  %11 = call i32 @regcache_cooked_read_unsigned(i32 %9, i32 %10, i64* %7)
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load i32, i32* @current_regcache, align 4
  %17 = load i32, i32* @IA64_BSP_REGNUM, align 4
  %18 = call i32 @regcache_cooked_read_unsigned(i32 %16, i32 %17, i64* %8)
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load i32, i32* @TARGET_OBJECT_DIRTY, align 4
  %24 = bitcast i64* %7 to i8*
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @target_read_partial(i32* @current_target, i32 %23, i8* %24, i8* %25, i64 %28, i32 %29)
  br label %37

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i64, i64* %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @read_memory(i64 %33, i8* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %22
  ret void
}

declare dso_local i32 @regcache_cooked_read_unsigned(i32, i32, i64*) #1

declare dso_local i32 @target_read_partial(i32*, i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @read_memory(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
