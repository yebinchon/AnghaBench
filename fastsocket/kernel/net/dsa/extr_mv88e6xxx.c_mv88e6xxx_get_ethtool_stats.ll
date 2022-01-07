; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6xxx.c_mv88e6xxx_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dsa/extr_mv88e6xxx.c_mv88e6xxx_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }
%struct.mv88e6xxx_hw_stat = type { i32, i64 }
%struct.mv88e6xxx_priv_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mv88e6xxx_get_ethtool_stats(%struct.dsa_switch* %0, i32 %1, %struct.mv88e6xxx_hw_stat* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mv88e6xxx_hw_stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mv88e6xxx_priv_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mv88e6xxx_hw_stat*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mv88e6xxx_hw_stat* %2, %struct.mv88e6xxx_hw_stat** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %18 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %17, i64 1
  %19 = bitcast %struct.dsa_switch* %18 to i8*
  %20 = bitcast i8* %19 to %struct.mv88e6xxx_priv_state*
  store %struct.mv88e6xxx_priv_state* %20, %struct.mv88e6xxx_priv_state** %11, align 8
  %21 = load %struct.mv88e6xxx_priv_state*, %struct.mv88e6xxx_priv_state** %11, align 8
  %22 = getelementptr inbounds %struct.mv88e6xxx_priv_state, %struct.mv88e6xxx_priv_state* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @mv88e6xxx_stats_snapshot(%struct.dsa_switch* %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load %struct.mv88e6xxx_priv_state*, %struct.mv88e6xxx_priv_state** %11, align 8
  %31 = getelementptr inbounds %struct.mv88e6xxx_priv_state, %struct.mv88e6xxx_priv_state* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  br label %76

33:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %69, %33
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %34
  %39 = load %struct.mv88e6xxx_hw_stat*, %struct.mv88e6xxx_hw_stat** %8, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mv88e6xxx_hw_stat, %struct.mv88e6xxx_hw_stat* %39, i64 %41
  store %struct.mv88e6xxx_hw_stat* %42, %struct.mv88e6xxx_hw_stat** %14, align 8
  %43 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %44 = load %struct.mv88e6xxx_hw_stat*, %struct.mv88e6xxx_hw_stat** %14, align 8
  %45 = getelementptr inbounds %struct.mv88e6xxx_hw_stat, %struct.mv88e6xxx_hw_stat* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @mv88e6xxx_stats_read(%struct.dsa_switch* %43, i64 %46, i32* %15)
  %48 = load %struct.mv88e6xxx_hw_stat*, %struct.mv88e6xxx_hw_stat** %14, align 8
  %49 = getelementptr inbounds %struct.mv88e6xxx_hw_stat, %struct.mv88e6xxx_hw_stat* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %59

52:                                               ; preds = %38
  %53 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %54 = load %struct.mv88e6xxx_hw_stat*, %struct.mv88e6xxx_hw_stat** %14, align 8
  %55 = getelementptr inbounds %struct.mv88e6xxx_hw_stat, %struct.mv88e6xxx_hw_stat* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  %58 = call i32 @mv88e6xxx_stats_read(%struct.dsa_switch* %53, i64 %57, i32* %16)
  br label %60

59:                                               ; preds = %38
  store i32 0, i32* %16, align 4
  br label %60

60:                                               ; preds = %59, %52
  %61 = load i32, i32* %16, align 4
  %62 = shl i32 %61, 32
  %63 = load i32, i32* %15, align 4
  %64 = or i32 %62, %63
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %34

72:                                               ; preds = %34
  %73 = load %struct.mv88e6xxx_priv_state*, %struct.mv88e6xxx_priv_state** %11, align 8
  %74 = getelementptr inbounds %struct.mv88e6xxx_priv_state, %struct.mv88e6xxx_priv_state* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  br label %76

76:                                               ; preds = %72, %29
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mv88e6xxx_stats_snapshot(%struct.dsa_switch*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mv88e6xxx_stats_read(%struct.dsa_switch*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
