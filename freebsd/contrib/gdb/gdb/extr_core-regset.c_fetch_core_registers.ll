; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_core-regset.c_fetch_core_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_core-regset.c_fetch_core_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Wrong size gregset in core file.\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Wrong size fpregset in core file.\00", align 1
@FP0_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @fetch_core_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_core_registers(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %38 [
    i32 0, label %12
    i32 2, label %23
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = icmp ne i64 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %22

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @memcpy(i32* %9, i8* %19, i32 4)
  %21 = call i32 @supply_gregset(i32* %9)
  br label %22

22:                                               ; preds = %18, %16
  br label %39

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = icmp ne i64 %25, 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %37

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @memcpy(i32* %10, i8* %30, i32 4)
  %32 = load i32, i32* @FP0_REGNUM, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @supply_fpregset(i32* %10)
  br label %36

36:                                               ; preds = %34, %29
  br label %37

37:                                               ; preds = %36, %27
  br label %39

38:                                               ; preds = %4
  br label %39

39:                                               ; preds = %38, %37, %22
  ret void
}

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @supply_gregset(i32*) #1

declare dso_local i32 @supply_fpregset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
