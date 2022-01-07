; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-nat.c_amd64_native_gregset_reg_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-nat.c_amd64_native_gregset_reg_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@amd64_native_gregset64_reg_offset = common dso_local global i32* null, align 8
@amd64_native_gregset64_num_regs = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@amd64_native_gregset32_reg_offset = common dso_local global i32* null, align 8
@amd64_native_gregset32_num_regs = common dso_local global i32 0, align 4
@NUM_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amd64_native_gregset_reg_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd64_native_gregset_reg_offset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32*, i32** @amd64_native_gregset64_reg_offset, align 8
  store i32* %6, i32** %4, align 8
  %7 = load i32, i32* @amd64_native_gregset64_num_regs, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @gdb_assert(i32 %10)
  %12 = load i32, i32* @current_gdbarch, align 4
  %13 = call i32 @gdbarch_ptr_bit(i32 %12)
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32*, i32** @amd64_native_gregset32_reg_offset, align 8
  store i32* %16, i32** %4, align 8
  %17 = load i32, i32* @amd64_native_gregset32_num_regs, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NUM_REGS, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @NUM_REGS, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @NUM_REGS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %28, %24
  store i32 -1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @gdbarch_ptr_bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
