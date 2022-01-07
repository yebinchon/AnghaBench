; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-fbsd-tdep.c_ia64_fbsd_supply_fpregset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ia64-fbsd-tdep.c_ia64_fbsd_supply_fpregset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regset = type { i32 }
%struct.regcache = type { i32 }

@NUM_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regset*, %struct.regcache*, i32, i8*, i64)* @ia64_fbsd_supply_fpregset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ia64_fbsd_supply_fpregset(%struct.regset* %0, %struct.regcache* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.regset*, align 8
  %7 = alloca %struct.regcache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.regset* %0, %struct.regset** %6, align 8
  store %struct.regcache* %1, %struct.regcache** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %32

13:                                               ; preds = %5
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %28, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @NUM_REGS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @FPREG_SUPPLIES(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.regcache*, %struct.regcache** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @ia64_fbsd_regcache_supply(%struct.regcache* %23, i32 %24, i8* %25)
  br label %27

27:                                               ; preds = %22, %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %14

31:                                               ; preds = %14
  br label %42

32:                                               ; preds = %5
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @FPREG_SUPPLIES(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.regcache*, %struct.regcache** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @ia64_fbsd_regcache_supply(%struct.regcache* %37, i32 %38, i8* %39)
  br label %41

41:                                               ; preds = %36, %32
  br label %42

42:                                               ; preds = %41, %31
  ret void
}

declare dso_local i64 @FPREG_SUPPLIES(i32) #1

declare dso_local i32 @ia64_fbsd_regcache_supply(%struct.regcache*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
