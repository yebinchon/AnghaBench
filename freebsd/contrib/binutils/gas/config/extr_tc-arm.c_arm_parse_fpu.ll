; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_parse_fpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_parse_fpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_option_cpu_value_table = type { i32, i32* }

@arm_fpus = common dso_local global %struct.arm_option_cpu_value_table* null, align 8
@mfpu_opt = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"unknown floating point format `%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @arm_parse_fpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_parse_fpu(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.arm_option_cpu_value_table*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.arm_option_cpu_value_table*, %struct.arm_option_cpu_value_table** @arm_fpus, align 8
  store %struct.arm_option_cpu_value_table* %5, %struct.arm_option_cpu_value_table** %4, align 8
  br label %6

6:                                                ; preds = %22, %1
  %7 = load %struct.arm_option_cpu_value_table*, %struct.arm_option_cpu_value_table** %4, align 8
  %8 = getelementptr inbounds %struct.arm_option_cpu_value_table, %struct.arm_option_cpu_value_table* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = load %struct.arm_option_cpu_value_table*, %struct.arm_option_cpu_value_table** %4, align 8
  %13 = getelementptr inbounds %struct.arm_option_cpu_value_table, %struct.arm_option_cpu_value_table* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @streq(i32* %14, i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.arm_option_cpu_value_table*, %struct.arm_option_cpu_value_table** %4, align 8
  %20 = getelementptr inbounds %struct.arm_option_cpu_value_table, %struct.arm_option_cpu_value_table* %19, i32 0, i32 0
  store i32* %20, i32** @mfpu_opt, align 8
  store i32 1, i32* %2, align 4
  br label %29

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.arm_option_cpu_value_table*, %struct.arm_option_cpu_value_table** %4, align 8
  %24 = getelementptr inbounds %struct.arm_option_cpu_value_table, %struct.arm_option_cpu_value_table* %23, i32 1
  store %struct.arm_option_cpu_value_table* %24, %struct.arm_option_cpu_value_table** %4, align 8
  br label %6

25:                                               ; preds = %6
  %26 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @as_bad(i32 %26, i8* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @streq(i32*, i8*) #1

declare dso_local i32 @as_bad(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
