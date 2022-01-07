; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_parse_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_parse_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_cpu_option_table = type { i32*, i64, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"missing cpu name `%s'\00", align 1
@arm_cpus = common dso_local global %struct.arm_cpu_option_table* null, align 8
@mcpu_cpu_opt = common dso_local global i32* null, align 8
@mcpu_fpu_opt = common dso_local global i32* null, align 8
@selected_cpu_name = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"unknown cpu `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @arm_parse_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_parse_cpu(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.arm_cpu_option_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @strchr(i8* %8, i8 signext 43)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = ptrtoint i8* %13 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @as_bad(i32 %26, i8* %27)
  store i32 0, i32* %2, align 4
  br label %100

29:                                               ; preds = %22
  %30 = load %struct.arm_cpu_option_table*, %struct.arm_cpu_option_table** @arm_cpus, align 8
  store %struct.arm_cpu_option_table* %30, %struct.arm_cpu_option_table** %4, align 8
  br label %31

31:                                               ; preds = %93, %29
  %32 = load %struct.arm_cpu_option_table*, %struct.arm_cpu_option_table** %4, align 8
  %33 = getelementptr inbounds %struct.arm_cpu_option_table, %struct.arm_cpu_option_table* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %96

36:                                               ; preds = %31
  %37 = load %struct.arm_cpu_option_table*, %struct.arm_cpu_option_table** %4, align 8
  %38 = getelementptr inbounds %struct.arm_cpu_option_table, %struct.arm_cpu_option_table* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @strncmp(i32* %39, i8* %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %92

44:                                               ; preds = %36
  %45 = load %struct.arm_cpu_option_table*, %struct.arm_cpu_option_table** %4, align 8
  %46 = getelementptr inbounds %struct.arm_cpu_option_table, %struct.arm_cpu_option_table* %45, i32 0, i32 3
  store i32* %46, i32** @mcpu_cpu_opt, align 8
  %47 = load %struct.arm_cpu_option_table*, %struct.arm_cpu_option_table** %4, align 8
  %48 = getelementptr inbounds %struct.arm_cpu_option_table, %struct.arm_cpu_option_table* %47, i32 0, i32 2
  store i32* %48, i32** @mcpu_fpu_opt, align 8
  %49 = load %struct.arm_cpu_option_table*, %struct.arm_cpu_option_table** %4, align 8
  %50 = getelementptr inbounds %struct.arm_cpu_option_table, %struct.arm_cpu_option_table* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i64*, i64** @selected_cpu_name, align 8
  %55 = load %struct.arm_cpu_option_table*, %struct.arm_cpu_option_table** %4, align 8
  %56 = getelementptr inbounds %struct.arm_cpu_option_table, %struct.arm_cpu_option_table* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @strcpy(i64* %54, i64 %57)
  br label %85

59:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %77, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load %struct.arm_cpu_option_table*, %struct.arm_cpu_option_table** %4, align 8
  %66 = getelementptr inbounds %struct.arm_cpu_option_table, %struct.arm_cpu_option_table* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @TOUPPER(i32 %71)
  %73 = load i64*, i64** @selected_cpu_name, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %72, i64* %76, align 8
  br label %77

77:                                               ; preds = %64
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %60

80:                                               ; preds = %60
  %81 = load i64*, i64** @selected_cpu_name, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %80, %53
  %86 = load i8*, i8** %5, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @arm_parse_extension(i8* %89, i32** @mcpu_cpu_opt)
  store i32 %90, i32* %2, align 4
  br label %100

91:                                               ; preds = %85
  store i32 1, i32* %2, align 4
  br label %100

92:                                               ; preds = %36
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.arm_cpu_option_table*, %struct.arm_cpu_option_table** %4, align 8
  %95 = getelementptr inbounds %struct.arm_cpu_option_table, %struct.arm_cpu_option_table* %94, i32 1
  store %struct.arm_cpu_option_table* %95, %struct.arm_cpu_option_table** %4, align 8
  br label %31

96:                                               ; preds = %31
  %97 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i8*, i8** %3, align 8
  %99 = call i32 @as_bad(i32 %97, i8* %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %91, %88, %25
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @as_bad(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @strcpy(i64*, i64) #1

declare dso_local i64 @TOUPPER(i32) #1

declare dso_local i32 @arm_parse_extension(i8*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
