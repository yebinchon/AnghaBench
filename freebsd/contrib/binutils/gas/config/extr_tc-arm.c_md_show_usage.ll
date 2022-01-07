; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_md_show_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_md_show_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_option_table = type { i8*, i8* }
%struct.arm_long_option_table = type { i8*, i8* }

@.str = private unnamed_addr constant [34 x i8] c" ARM-specific assembler options:\0A\00", align 1
@arm_opts = common dso_local global %struct.arm_option_table* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"  -%-23s%s\0A\00", align 1
@arm_long_opts = common dso_local global %struct.arm_long_option_table* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"  -%s%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_show_usage(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.arm_option_table*, align 8
  %4 = alloca %struct.arm_long_option_table*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* %6)
  %8 = load %struct.arm_option_table*, %struct.arm_option_table** @arm_opts, align 8
  store %struct.arm_option_table* %8, %struct.arm_option_table** %3, align 8
  br label %9

9:                                                ; preds = %30, %1
  %10 = load %struct.arm_option_table*, %struct.arm_option_table** %3, align 8
  %11 = getelementptr inbounds %struct.arm_option_table, %struct.arm_option_table* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  %15 = load %struct.arm_option_table*, %struct.arm_option_table** %3, align 8
  %16 = getelementptr inbounds %struct.arm_option_table, %struct.arm_option_table* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load i32*, i32** %2, align 8
  %21 = load %struct.arm_option_table*, %struct.arm_option_table** %3, align 8
  %22 = getelementptr inbounds %struct.arm_option_table, %struct.arm_option_table* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.arm_option_table*, %struct.arm_option_table** %3, align 8
  %25 = getelementptr inbounds %struct.arm_option_table, %struct.arm_option_table* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @_(i8* %26)
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %27)
  br label %29

29:                                               ; preds = %19, %14
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.arm_option_table*, %struct.arm_option_table** %3, align 8
  %32 = getelementptr inbounds %struct.arm_option_table, %struct.arm_option_table* %31, i32 1
  store %struct.arm_option_table* %32, %struct.arm_option_table** %3, align 8
  br label %9

33:                                               ; preds = %9
  %34 = load %struct.arm_long_option_table*, %struct.arm_long_option_table** @arm_long_opts, align 8
  store %struct.arm_long_option_table* %34, %struct.arm_long_option_table** %4, align 8
  br label %35

35:                                               ; preds = %56, %33
  %36 = load %struct.arm_long_option_table*, %struct.arm_long_option_table** %4, align 8
  %37 = getelementptr inbounds %struct.arm_long_option_table, %struct.arm_long_option_table* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load %struct.arm_long_option_table*, %struct.arm_long_option_table** %4, align 8
  %42 = getelementptr inbounds %struct.arm_long_option_table, %struct.arm_long_option_table* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i32*, i32** %2, align 8
  %47 = load %struct.arm_long_option_table*, %struct.arm_long_option_table** %4, align 8
  %48 = getelementptr inbounds %struct.arm_long_option_table, %struct.arm_long_option_table* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.arm_long_option_table*, %struct.arm_long_option_table** %4, align 8
  %51 = getelementptr inbounds %struct.arm_long_option_table, %struct.arm_long_option_table* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @_(i8* %52)
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %49, i8* %53)
  br label %55

55:                                               ; preds = %45, %40
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.arm_long_option_table*, %struct.arm_long_option_table** %4, align 8
  %58 = getelementptr inbounds %struct.arm_long_option_table, %struct.arm_long_option_table* %57, i32 1
  store %struct.arm_long_option_table* %58, %struct.arm_long_option_table** %4, align 8
  br label %35

59:                                               ; preds = %35
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
