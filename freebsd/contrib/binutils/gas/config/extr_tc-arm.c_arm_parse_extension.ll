; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_parse_extension.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_arm_parse_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_option_cpu_value_table = type { i32*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"invalid architectural extension\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"missing architectural extension\00", align 1
@arm_extensions = common dso_local global %struct.arm_option_cpu_value_table* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"unknown architectural extnsion `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**)* @arm_parse_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_parse_extension(i8* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.arm_option_cpu_value_table*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  %10 = call i32* @xmalloc(i32 4)
  store i32* %10, i32** %6, align 8
  %11 = load i32**, i32*** %5, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32**, i32*** %5, align 8
  store i32* %15, i32** %16, align 8
  br label %17

17:                                               ; preds = %95, %2
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i1 [ false, %17 ], [ %24, %20 ]
  br i1 %26, label %27, label %97

27:                                               ; preds = %25
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 43
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 (i32, ...) @as_bad(i32 %33)
  store i32 0, i32* %3, align 4
  br label %98

35:                                               ; preds = %27
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 43)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  br label %52

49:                                               ; preds = %35
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @strlen(i8* %50)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 (i32, ...) @as_bad(i32 %56)
  store i32 0, i32* %3, align 4
  br label %98

58:                                               ; preds = %52
  %59 = load %struct.arm_option_cpu_value_table*, %struct.arm_option_cpu_value_table** @arm_extensions, align 8
  store %struct.arm_option_cpu_value_table* %59, %struct.arm_option_cpu_value_table** %7, align 8
  br label %60

60:                                               ; preds = %83, %58
  %61 = load %struct.arm_option_cpu_value_table*, %struct.arm_option_cpu_value_table** %7, align 8
  %62 = getelementptr inbounds %struct.arm_option_cpu_value_table, %struct.arm_option_cpu_value_table* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %86

65:                                               ; preds = %60
  %66 = load %struct.arm_option_cpu_value_table*, %struct.arm_option_cpu_value_table** %7, align 8
  %67 = getelementptr inbounds %struct.arm_option_cpu_value_table, %struct.arm_option_cpu_value_table* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @strncmp(i32* %68, i8* %69, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.arm_option_cpu_value_table*, %struct.arm_option_cpu_value_table** %7, align 8
  %79 = getelementptr inbounds %struct.arm_option_cpu_value_table, %struct.arm_option_cpu_value_table* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ARM_MERGE_FEATURE_SETS(i32 %75, i32 %77, i32 %80)
  br label %86

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.arm_option_cpu_value_table*, %struct.arm_option_cpu_value_table** %7, align 8
  %85 = getelementptr inbounds %struct.arm_option_cpu_value_table, %struct.arm_option_cpu_value_table* %84, i32 1
  store %struct.arm_option_cpu_value_table* %85, %struct.arm_option_cpu_value_table** %7, align 8
  br label %60

86:                                               ; preds = %73, %60
  %87 = load %struct.arm_option_cpu_value_table*, %struct.arm_option_cpu_value_table** %7, align 8
  %88 = getelementptr inbounds %struct.arm_option_cpu_value_table, %struct.arm_option_cpu_value_table* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 (i32, ...) @as_bad(i32 %92, i8* %93)
  store i32 0, i32* %3, align 4
  br label %98

95:                                               ; preds = %86
  %96 = load i8*, i8** %8, align 8
  store i8* %96, i8** %4, align 8
  br label %17

97:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %91, %55, %32
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32* @xmalloc(i32) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @ARM_MERGE_FEATURE_SETS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
