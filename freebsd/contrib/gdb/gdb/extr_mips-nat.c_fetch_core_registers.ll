; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-nat.c_fetch_core_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-nat.c_fetch_core_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg_ptr = common dso_local global i32 0, align 4
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Old mips core file can't be processed on this machine.\00", align 1
@NUM_REGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Register %s not found in core file.\00", align 1
@ZERO_REGNUM = common dso_local global i32 0, align 4
@DEPRECATED_FP_REGNUM = common dso_local global i32 0, align 4
@KERNEL_U_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @fetch_core_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_core_registers(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sub i32 0, %14
  store i32 %15, i32* @reg_ptr, align 4
  %16 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %21 = call i32 @memset(i8* %19, i32 0, i32 %20)
  %22 = load i32, i32* @reg_ptr, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %53, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @NUM_REGS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @reg_ptr, align 4
  %35 = call i32 @register_addr(i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %42, %39
  br label %52

45:                                               ; preds = %32
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = call i32 @supply_register(i32 %46, i8* %50)
  br label %52

52:                                               ; preds = %45, %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %28

56:                                               ; preds = %28
  %57 = load i32, i32* %11, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @REGISTER_NAME(i32 %60)
  %62 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* @ZERO_REGNUM, align 4
  %65 = call i32 @supply_register(i32 %64, i8* %19)
  %66 = load i32, i32* @DEPRECATED_FP_REGNUM, align 4
  %67 = call i32 @supply_register(i32 %66, i8* %19)
  %68 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %68)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @error(i8*, ...) #2

declare dso_local i32 @register_addr(i32, i32) #2

declare dso_local i32 @supply_register(i32, i8*) #2

declare dso_local i32 @REGISTER_NAME(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
