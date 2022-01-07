; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6123_61_65.c_mv88e6123_61_65_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6123_61_65.c_mv88e6123_61_65_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }
%struct.mv88e6xxx_priv_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @mv88e6123_61_65_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6123_61_65_setup(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca %struct.mv88e6xxx_priv_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %8 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %7, i64 1
  %9 = bitcast %struct.dsa_switch* %8 to i8*
  %10 = bitcast i8* %9 to %struct.mv88e6xxx_priv_state*
  store %struct.mv88e6xxx_priv_state* %10, %struct.mv88e6xxx_priv_state** %4, align 8
  %11 = load %struct.mv88e6xxx_priv_state*, %struct.mv88e6xxx_priv_state** %4, align 8
  %12 = getelementptr inbounds %struct.mv88e6xxx_priv_state, %struct.mv88e6xxx_priv_state* %11, i32 0, i32 1
  %13 = call i32 @mutex_init(i32* %12)
  %14 = load %struct.mv88e6xxx_priv_state*, %struct.mv88e6xxx_priv_state** %4, align 8
  %15 = getelementptr inbounds %struct.mv88e6xxx_priv_state, %struct.mv88e6xxx_priv_state* %14, i32 0, i32 0
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %18 = call i32 @mv88e6123_61_65_switch_reset(%struct.dsa_switch* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %47

23:                                               ; preds = %1
  %24 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %25 = call i32 @mv88e6123_61_65_setup_global(%struct.dsa_switch* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %47

30:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 6
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @mv88e6123_61_65_setup_port(%struct.dsa_switch* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %47

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %31

46:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %40, %28, %21
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mv88e6123_61_65_switch_reset(%struct.dsa_switch*) #1

declare dso_local i32 @mv88e6123_61_65_setup_global(%struct.dsa_switch*) #1

declare dso_local i32 @mv88e6123_61_65_setup_port(%struct.dsa_switch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
