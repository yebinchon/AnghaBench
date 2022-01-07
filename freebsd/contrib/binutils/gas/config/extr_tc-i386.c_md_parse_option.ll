; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_md_parse_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_md_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@optimize_align_code = common dso_local global i32 0, align 4
@quiet_warnings = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"i386\00", align 1
@default_arch = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid -march= option: `%s'\00", align 1
@cpu_arch = common dso_local global %struct.TYPE_3__* null, align 8
@cpu_arch_isa = common dso_local global i32 0, align 4
@cpu_arch_isa_flags = common dso_local global i32 0, align 4
@cpu_arch_tune_set = common dso_local global i32 0, align 4
@cpu_arch_tune = common dso_local global i32 0, align 4
@cpu_arch_tune_flags = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid -mtune= option: `%s'\00", align 1
@i386_comment_chars = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_parse_option(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %122 [
    i32 110, label %8
    i32 113, label %9
    i32 132, label %10
    i32 130, label %11
    i32 129, label %12
    i32 128, label %70
  ]

8:                                                ; preds = %2
  store i32 0, i32* @optimize_align_code, align 4
  br label %123

9:                                                ; preds = %2
  store i32 1, i32* @quiet_warnings, align 4
  br label %123

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** @default_arch, align 8
  br label %123

11:                                               ; preds = %2
  br label %123

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 46
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 (i32, ...) @as_fatal(i32 %18, i8* %19)
  br label %21

21:                                               ; preds = %17, %12
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %57, %21
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_arch, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %24)
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_arch, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* %28, i8* %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %27
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_arch, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* @cpu_arch_isa, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_arch, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* @cpu_arch_isa_flags, align 4
  %50 = load i32, i32* @cpu_arch_tune_set, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %37
  %53 = load i32, i32* @cpu_arch_isa, align 4
  store i32 %53, i32* @cpu_arch_tune, align 4
  %54 = load i32, i32* @cpu_arch_isa_flags, align 4
  store i32 %54, i32* @cpu_arch_tune_flags, align 4
  br label %55

55:                                               ; preds = %52, %37
  br label %60

56:                                               ; preds = %27
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %22

60:                                               ; preds = %55, %22
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_arch, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %62)
  %64 = icmp uge i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 (i32, ...) @as_fatal(i32 %66, i8* %67)
  br label %69

69:                                               ; preds = %65, %60
  br label %123

70:                                               ; preds = %2
  %71 = load i8*, i8** %5, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 46
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 (i32, ...) @as_fatal(i32 %76, i8* %77)
  br label %79

79:                                               ; preds = %75, %70
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %109, %79
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_arch, align 8
  %83 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %82)
  %84 = icmp ult i32 %81, %83
  br i1 %84, label %85, label %112

85:                                               ; preds = %80
  %86 = load i8*, i8** %5, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_arch, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strcmp(i8* %86, i8* %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %85
  store i32 1, i32* @cpu_arch_tune_set, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_arch, align 8
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* @cpu_arch_tune, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_arch, align 8
  %103 = load i32, i32* %6, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* @cpu_arch_tune_flags, align 4
  br label %112

108:                                              ; preds = %85
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %6, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %80

112:                                              ; preds = %95, %80
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_arch, align 8
  %115 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %114)
  %116 = icmp uge i32 %113, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 (i32, ...) @as_fatal(i32 %118, i8* %119)
  br label %121

121:                                              ; preds = %117, %112
  br label %123

122:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %124

123:                                              ; preds = %121, %69, %11, %10, %9, %8
  store i32 1, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %122
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @as_fatal(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
