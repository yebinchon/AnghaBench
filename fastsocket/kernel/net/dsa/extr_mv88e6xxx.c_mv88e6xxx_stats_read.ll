; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6xxx.c_mv88e6xxx_stats_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6xxx.c_mv88e6xxx_stats_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }

@REG_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32*)* @mv88e6xxx_stats_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6xxx_stats_read(%struct.dsa_switch* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %11 = load i32, i32* @REG_GLOBAL, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 52224, %12
  %14 = call i32 @mv88e6xxx_reg_write(%struct.dsa_switch* %10, i32 %11, i32 29, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %20 = call i32 @mv88e6xxx_stats_wait(%struct.dsa_switch* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %45

24:                                               ; preds = %18
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %26 = load i32, i32* @REG_GLOBAL, align 4
  %27 = call i32 @mv88e6xxx_reg_read(%struct.dsa_switch* %25, i32 %26, i32 30)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %45

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %32, 16
  store i32 %33, i32* %7, align 4
  %34 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %35 = load i32, i32* @REG_GLOBAL, align 4
  %36 = call i32 @mv88e6xxx_reg_read(%struct.dsa_switch* %34, i32 %35, i32 31)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %45

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %39, %30, %23, %17
  ret void
}

declare dso_local i32 @mv88e6xxx_reg_write(%struct.dsa_switch*, i32, i32, i32) #1

declare dso_local i32 @mv88e6xxx_stats_wait(%struct.dsa_switch*) #1

declare dso_local i32 @mv88e6xxx_reg_read(%struct.dsa_switch*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
