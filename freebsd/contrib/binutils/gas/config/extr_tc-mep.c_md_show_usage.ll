; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_md_show_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_md_show_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [737 x i8] c"MeP specific command line options:\0A  -EB                     assemble for a big endian system (default)\0A  -EL                     assemble for a little endian system\0A  -mconfig=<name>         specify a chip configuration to use\0A  -maverage -mno-average -mmult -mno-mult -mdiv -mno-div\0A  -mbitops -mno-bitops -mleadz -mno-leadz -mabsdiff -mno-absdiff\0A  -mminmax -mno-minmax -mclip -mno-clip -msatur -mno-satur -mcop32\0A                          enable/disable the given opcodes\0A\0A  If -mconfig is given, the other -m options modify it.  Otherwise,\0A  if no -m options are given, all core opcodes are enabled;\0A  if any enabling -m options are given, only those are enabled;\0A  if only disabling -m options are given, only those are disabled.\0A\00", align 1
@mep_config_map = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"  -mconfig=STR            specify the configuration to use\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"  Configurations:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_show_usage(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i8* @_(i8* getelementptr inbounds ([737 x i8], [737 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (i32*, i8*, ...) @fprintf(i32* %4, i8* %5)
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mep_config_map, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %34, %12
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mep_config_map, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = load i32*, i32** %2, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mep_config_map, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %1
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
