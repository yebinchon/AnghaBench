; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alphanbsd-tdep.c_fetch_core_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alphanbsd-tdep.c_fetch_core_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fetch_core_registers.regmap = internal constant [31 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 30, i32 31, i32 32, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 29, i32 26], align 16
@SIZEOF_STRUCT_FPREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Wrong size register set in core file.\00", align 1
@ALPHA_ZERO_REGNUM = common dso_local global i32 0, align 4
@PC_REGNUM = common dso_local global i32 0, align 4
@SIZEOF_TRAPFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @fetch_core_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_core_registers(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %53

15:                                               ; preds = %4
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 264
  store i8* %18, i8** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SIZEOF_STRUCT_FPREG, align 4
  %21 = add nsw i32 264, %20
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %53

25:                                               ; preds = %15
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @ALPHA_ZERO_REGNUM, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i32, i32* %11, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [31 x i32], [31 x i32]* @fetch_core_registers.regmap, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %32, i64 %38
  %40 = call i32 @supply_register(i32 %31, i8* %39)
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %26

44:                                               ; preds = %26
  %45 = load i32, i32* @ALPHA_ZERO_REGNUM, align 4
  %46 = call i32 @supply_register(i32 %45, i8* null)
  %47 = load i32, i32* @PC_REGNUM, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 224
  %50 = call i32 @supply_register(i32 %47, i8* %49)
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @alphabsd_supply_fpreg(i8* %51, i32 -1)
  br label %53

53:                                               ; preds = %44, %23, %14
  ret void
}

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @supply_register(i32, i8*) #1

declare dso_local i32 @alphabsd_supply_fpreg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
