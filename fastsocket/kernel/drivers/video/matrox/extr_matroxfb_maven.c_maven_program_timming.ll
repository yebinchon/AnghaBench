; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_maven.c_maven_program_timming.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_maven.c_maven_program_timming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maven_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.mavenregs = type { i64 }

@MATROXFB_OUTPUT_MODE_MONITOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.maven_data*, %struct.mavenregs*)* @maven_program_timming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maven_program_timming(%struct.maven_data* %0, %struct.mavenregs* %1) #0 {
  %3 = alloca %struct.maven_data*, align 8
  %4 = alloca %struct.mavenregs*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  store %struct.maven_data* %0, %struct.maven_data** %3, align 8
  store %struct.mavenregs* %1, %struct.mavenregs** %4, align 8
  %6 = load %struct.maven_data*, %struct.maven_data** %3, align 8
  %7 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %6, i32 0, i32 0
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %5, align 8
  %9 = load %struct.mavenregs*, %struct.mavenregs** %4, align 8
  %10 = getelementptr inbounds %struct.mavenregs, %struct.mavenregs* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MATROXFB_OUTPUT_MODE_MONITOR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %2
  %15 = call i32 @LR(i32 128)
  %16 = call i32 @LR(i32 129)
  %17 = call i32 @LR(i32 130)
  %18 = call i32 @LR(i32 179)
  %19 = call i32 @LR(i32 148)
  %20 = call i32 @LRP(i32 150)
  %21 = call i32 @LRP(i32 152)
  %22 = call i32 @LRP(i32 154)
  %23 = call i32 @LRP(i32 156)
  %24 = call i32 @LRP(i32 158)
  %25 = call i32 @LRP(i32 160)
  %26 = call i32 @LRP(i32 162)
  %27 = call i32 @LRP(i32 164)
  %28 = call i32 @LRP(i32 166)
  %29 = call i32 @LRP(i32 168)
  %30 = call i32 @LRP(i32 170)
  %31 = call i32 @LRP(i32 172)
  %32 = call i32 @LRP(i32 174)
  %33 = call i32 @LR(i32 176)
  %34 = call i32 @LR(i32 177)
  %35 = call i32 @LR(i32 140)
  %36 = call i32 @LR(i32 141)
  %37 = call i32 @LR(i32 185)
  %38 = call i32 @LR(i32 191)
  br label %43

39:                                               ; preds = %2
  %40 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %41 = load %struct.mavenregs*, %struct.mavenregs** %4, align 8
  %42 = call i32 @maven_init_TV(%struct.i2c_client* %40, %struct.mavenregs* %41)
  br label %43

43:                                               ; preds = %39, %14
  ret i32 0
}

declare dso_local i32 @LR(i32) #1

declare dso_local i32 @LRP(i32) #1

declare dso_local i32 @maven_init_TV(%struct.i2c_client*, %struct.mavenregs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
