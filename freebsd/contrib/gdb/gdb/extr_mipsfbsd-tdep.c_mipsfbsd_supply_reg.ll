; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsfbsd-tdep.c_mipsfbsd_supply_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsfbsd-tdep.c_mipsfbsd_supply_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PC_REGNUM = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mipsfbsd_supply_reg(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %36, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @PC_REGNUM, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %35

17:                                               ; preds = %14, %10
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @CANNOT_FETCH_REGISTER(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @supply_register(i32 %22, i8* null)
  br label %34

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @current_gdbarch, align 4
  %29 = call i32 @mips_regsize(i32 %28)
  %30 = mul nsw i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %26, i64 %31
  %33 = call i32 @supply_register(i32 %25, i8* %32)
  br label %34

34:                                               ; preds = %24, %21
  br label %35

35:                                               ; preds = %34, %14
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %6

39:                                               ; preds = %6
  ret void
}

declare dso_local i64 @CANNOT_FETCH_REGISTER(i32) #1

declare dso_local i32 @supply_register(i32, i8*) #1

declare dso_local i32 @mips_regsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
