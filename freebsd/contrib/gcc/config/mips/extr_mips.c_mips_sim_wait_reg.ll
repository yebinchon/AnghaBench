; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_sim_wait_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_sim_wait_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_sim = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips_sim*, i32, i32)* @mips_sim_wait_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_sim_wait_reg(%struct.mips_sim* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mips_sim*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mips_sim* %0, %struct.mips_sim** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %70, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @REGNO(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @GET_MODE(i32 %13)
  %15 = call i32 @HARD_REGNO_NREGS(i32 %12, i32 %14)
  %16 = icmp ult i32 %10, %15
  br i1 %16, label %17, label %73

17:                                               ; preds = %9
  %18 = load %struct.mips_sim*, %struct.mips_sim** %4, align 8
  %19 = getelementptr inbounds %struct.mips_sim, %struct.mips_sim* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @REGNO(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %17
  %31 = load %struct.mips_sim*, %struct.mips_sim** %4, align 8
  %32 = getelementptr inbounds %struct.mips_sim, %struct.mips_sim* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @REGNO(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %8, align 4
  %42 = load %struct.mips_sim*, %struct.mips_sim** %4, align 8
  %43 = getelementptr inbounds %struct.mips_sim, %struct.mips_sim* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @REGNO(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @insn_latency(i64 %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %65, %30
  %60 = load %struct.mips_sim*, %struct.mips_sim** %4, align 8
  %61 = getelementptr inbounds %struct.mips_sim, %struct.mips_sim* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.mips_sim*, %struct.mips_sim** %4, align 8
  %67 = call i32 @mips_sim_next_cycle(%struct.mips_sim* %66)
  br label %59

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %17
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %9

73:                                               ; preds = %9
  ret void
}

declare dso_local i32 @HARD_REGNO_NREGS(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @insn_latency(i64, i32) #1

declare dso_local i32 @mips_sim_next_cycle(%struct.mips_sim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
