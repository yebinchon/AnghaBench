; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_md_parse_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_md_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_type = type { i32, i32 }

@alpha_nofloats_on = common dso_local global i32 0, align 4
@alpha_addr32_on = common dso_local global i32 0, align 4
@alpha_debug = common dso_local global i32 0, align 4
@g_switch_value = common dso_local global i32 0, align 4
@cpu_types = common dso_local global %struct.cpu_type* null, align 8
@alpha_target_name = common dso_local global i32 0, align 4
@alpha_target = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unknown CPU identifier `%s'\00", align 1
@alpha_flag_relax = common dso_local global i32 0, align 4
@alpha_flag_hash_long_names = common dso_local global i32 0, align 4
@alpha_flag_mdebug = common dso_local global i32 0, align 4
@alpha_flag_show_after_trunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_parse_option(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cpu_type*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %45 [
    i32 70, label %8
    i32 131, label %9
    i32 103, label %10
    i32 71, label %11
    i32 109, label %14
    i32 128, label %44
  ]

8:                                                ; preds = %2
  store i32 1, i32* @alpha_nofloats_on, align 4
  br label %46

9:                                                ; preds = %2
  store i32 1, i32* @alpha_addr32_on, align 4
  br label %46

10:                                               ; preds = %2
  store i32 1, i32* @alpha_debug, align 4
  br label %46

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @atoi(i8* %12)
  store i32 %13, i32* @g_switch_value, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load %struct.cpu_type*, %struct.cpu_type** @cpu_types, align 8
  store %struct.cpu_type* %15, %struct.cpu_type** %6, align 8
  br label %16

16:                                               ; preds = %36, %14
  %17 = load %struct.cpu_type*, %struct.cpu_type** %6, align 8
  %18 = getelementptr inbounds %struct.cpu_type, %struct.cpu_type* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.cpu_type*, %struct.cpu_type** %6, align 8
  %24 = getelementptr inbounds %struct.cpu_type, %struct.cpu_type* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strcmp(i8* %22, i32 %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.cpu_type*, %struct.cpu_type** %6, align 8
  %30 = getelementptr inbounds %struct.cpu_type, %struct.cpu_type* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* @alpha_target_name, align 4
  %32 = load %struct.cpu_type*, %struct.cpu_type** %6, align 8
  %33 = getelementptr inbounds %struct.cpu_type, %struct.cpu_type* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* @alpha_target, align 4
  br label %43

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.cpu_type*, %struct.cpu_type** %6, align 8
  %38 = getelementptr inbounds %struct.cpu_type, %struct.cpu_type* %37, i32 1
  store %struct.cpu_type* %38, %struct.cpu_type** %6, align 8
  br label %16

39:                                               ; preds = %16
  %40 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @as_warn(i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %28
  br label %46

44:                                               ; preds = %2
  store i32 1, i32* @alpha_flag_relax, align 4
  br label %46

45:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

46:                                               ; preds = %44, %43, %11, %10, %9, %8
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @as_warn(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
