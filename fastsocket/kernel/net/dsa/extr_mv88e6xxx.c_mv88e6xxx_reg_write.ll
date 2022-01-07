; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6xxx.c_mv88e6xxx_reg_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6xxx.c_mv88e6xxx_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mv88e6xxx_priv_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_reg_write(%struct.dsa_switch* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mv88e6xxx_priv_state*, align 8
  %10 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %12 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %11, i64 1
  %13 = bitcast %struct.dsa_switch* %12 to i8*
  %14 = bitcast i8* %13 to %struct.mv88e6xxx_priv_state*
  store %struct.mv88e6xxx_priv_state* %14, %struct.mv88e6xxx_priv_state** %9, align 8
  %15 = load %struct.mv88e6xxx_priv_state*, %struct.mv88e6xxx_priv_state** %9, align 8
  %16 = getelementptr inbounds %struct.mv88e6xxx_priv_state, %struct.mv88e6xxx_priv_state* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %19 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %22 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @__mv88e6xxx_reg_write(i32 %20, i32 %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.mv88e6xxx_priv_state*, %struct.mv88e6xxx_priv_state** %9, align 8
  %31 = getelementptr inbounds %struct.mv88e6xxx_priv_state, %struct.mv88e6xxx_priv_state* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %10, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__mv88e6xxx_reg_write(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
