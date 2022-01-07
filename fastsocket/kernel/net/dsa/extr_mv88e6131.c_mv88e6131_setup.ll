; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6131.c_mv88e6131_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6131.c_mv88e6131_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }
%struct.mv88e6xxx_priv_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @mv88e6131_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6131_setup(%struct.dsa_switch* %0) #0 {
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
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %15 = call i32 @mv88e6xxx_ppu_state_init(%struct.dsa_switch* %14)
  %16 = load %struct.mv88e6xxx_priv_state*, %struct.mv88e6xxx_priv_state** %4, align 8
  %17 = getelementptr inbounds %struct.mv88e6xxx_priv_state, %struct.mv88e6xxx_priv_state* %16, i32 0, i32 0
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %20 = call i32 @mv88e6131_switch_reset(%struct.dsa_switch* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %49

25:                                               ; preds = %1
  %26 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %27 = call i32 @mv88e6131_setup_global(%struct.dsa_switch* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %49

32:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %45, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 11
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @mv88e6131_setup_port(%struct.dsa_switch* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %33

48:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %42, %30, %23
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mv88e6xxx_ppu_state_init(%struct.dsa_switch*) #1

declare dso_local i32 @mv88e6131_switch_reset(%struct.dsa_switch*) #1

declare dso_local i32 @mv88e6131_setup_global(%struct.dsa_switch*) #1

declare dso_local i32 @mv88e6131_setup_port(%struct.dsa_switch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
