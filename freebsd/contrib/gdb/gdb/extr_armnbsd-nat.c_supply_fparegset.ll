; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_armnbsd-nat.c_supply_fparegset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_armnbsd-nat.c_supply_fparegset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpreg = type { i32, i32* }

@ARM_F0_REGNUM = common dso_local global i32 0, align 4
@ARM_F7_REGNUM = common dso_local global i32 0, align 4
@ARM_FPS_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fpreg*)* @supply_fparegset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @supply_fparegset(%struct.fpreg* %0) #0 {
  %2 = alloca %struct.fpreg*, align 8
  %3 = alloca i32, align 4
  store %struct.fpreg* %0, %struct.fpreg** %2, align 8
  %4 = load i32, i32* @ARM_F0_REGNUM, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ARM_F7_REGNUM, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.fpreg*, %struct.fpreg** %2, align 8
  %12 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @ARM_F0_REGNUM, align 4
  %16 = sub nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = bitcast i32* %18 to i8*
  %20 = call i32 @supply_register(i32 %10, i8* %19)
  br label %21

21:                                               ; preds = %9
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %5

24:                                               ; preds = %5
  %25 = load i32, i32* @ARM_FPS_REGNUM, align 4
  %26 = load %struct.fpreg*, %struct.fpreg** %2, align 8
  %27 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to i8*
  %29 = call i32 @supply_register(i32 %25, i8* %28)
  ret void
}

declare dso_local i32 @supply_register(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
