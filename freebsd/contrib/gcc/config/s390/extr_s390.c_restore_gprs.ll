; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_restore_gprs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_restore_gprs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pmode = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @restore_gprs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore_gprs(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @plus_constant(i32 %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @Pmode, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @gen_rtx_MEM(i32 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 (...) @get_frame_alias_set()
  %20 = call i32 @set_mem_alias_set(i32 %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %4
  %25 = load i64, i64* @TARGET_64BIT, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* @Pmode, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @gen_rtx_REG(i32 %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @gen_movdi(i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  br label %39

33:                                               ; preds = %24
  %34 = load i32, i32* @Pmode, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @gen_rtx_REG(i32 %34, i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @gen_movsi(i32 %36, i32 %37)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %33, %27
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %53

41:                                               ; preds = %4
  %42 = load i32, i32* @Pmode, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @gen_rtx_REG(i32 %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %46, %47
  %49 = add nsw i32 %48, 1
  %50 = call i32 @GEN_INT(i32 %49)
  %51 = call i32 @gen_load_multiple(i32 %44, i32 %45, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %41, %39
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @set_mem_alias_set(i32, i32) #1

declare dso_local i32 @get_frame_alias_set(...) #1

declare dso_local i32 @gen_movdi(i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @gen_movsi(i32, i32) #1

declare dso_local i32 @gen_load_multiple(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
