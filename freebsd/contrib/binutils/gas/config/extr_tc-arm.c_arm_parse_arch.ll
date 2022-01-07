; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_parse_arch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_parse_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_arch_option_table = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"missing architecture name `%s'\00", align 1
@arm_archs = common dso_local global %struct.arm_arch_option_table* null, align 8
@march_cpu_opt = common dso_local global i32* null, align 8
@march_fpu_opt = common dso_local global i32* null, align 8
@selected_cpu_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unknown architecture `%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @arm_parse_arch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_parse_arch(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.arm_arch_option_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @strchr(i8* %7, i8 signext 43)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = ptrtoint i8* %12 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %11
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @as_bad(i32 %25, i8* %26)
  store i32 0, i32* %2, align 4
  br label %67

28:                                               ; preds = %21
  %29 = load %struct.arm_arch_option_table*, %struct.arm_arch_option_table** @arm_archs, align 8
  store %struct.arm_arch_option_table* %29, %struct.arm_arch_option_table** %4, align 8
  br label %30

30:                                               ; preds = %60, %28
  %31 = load %struct.arm_arch_option_table*, %struct.arm_arch_option_table** %4, align 8
  %32 = getelementptr inbounds %struct.arm_arch_option_table, %struct.arm_arch_option_table* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = load %struct.arm_arch_option_table*, %struct.arm_arch_option_table** %4, align 8
  %37 = getelementptr inbounds %struct.arm_arch_option_table, %struct.arm_arch_option_table* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @strncmp(i32* %38, i8* %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %35
  %44 = load %struct.arm_arch_option_table*, %struct.arm_arch_option_table** %4, align 8
  %45 = getelementptr inbounds %struct.arm_arch_option_table, %struct.arm_arch_option_table* %44, i32 0, i32 2
  store i32* %45, i32** @march_cpu_opt, align 8
  %46 = load %struct.arm_arch_option_table*, %struct.arm_arch_option_table** %4, align 8
  %47 = getelementptr inbounds %struct.arm_arch_option_table, %struct.arm_arch_option_table* %46, i32 0, i32 1
  store i32* %47, i32** @march_fpu_opt, align 8
  %48 = load i32, i32* @selected_cpu_name, align 4
  %49 = load %struct.arm_arch_option_table*, %struct.arm_arch_option_table** %4, align 8
  %50 = getelementptr inbounds %struct.arm_arch_option_table, %struct.arm_arch_option_table* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @strcpy(i32 %48, i32* %51)
  %53 = load i8*, i8** %5, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @arm_parse_extension(i8* %56, i32** @march_cpu_opt)
  store i32 %57, i32* %2, align 4
  br label %67

58:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %67

59:                                               ; preds = %35
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.arm_arch_option_table*, %struct.arm_arch_option_table** %4, align 8
  %62 = getelementptr inbounds %struct.arm_arch_option_table, %struct.arm_arch_option_table* %61, i32 1
  store %struct.arm_arch_option_table* %62, %struct.arm_arch_option_table** %4, align 8
  br label %30

63:                                               ; preds = %30
  %64 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @as_bad(i32 %64, i8* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %58, %55, %24
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @as_bad(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i32*) #1

declare dso_local i32 @arm_parse_extension(i8*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
