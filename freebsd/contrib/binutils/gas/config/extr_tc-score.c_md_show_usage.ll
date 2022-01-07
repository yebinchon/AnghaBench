; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_md_show_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_md_show_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c" Score-specific assembler options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"        -FIXDD\09\09assemble code for fix data dependency\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"        -NWARN\09\09assemble code for no warning message for fix data dependency\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"        -SCORE5\09\09assemble code for target is SCORE5\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"        -SCORE5U\09assemble code for target is SCORE5U\0A\00", align 1
@.str.5 = private unnamed_addr constant [78 x i8] c"        -SCORE7\09\09assemble code for target is SCORE7, this is default setting\0A\00", align 1
@.str.6 = private unnamed_addr constant [83 x i8] c"        -USE_R1\09\09assemble code for no warning message when using temp register r1\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"        -KPIC\09\09assemble code for PIC\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"        -O0\09\09assembler will not perform any optimizations\0A\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"        -G gpnum\09assemble code for setting gpsize and default is 8 byte\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"        -V \09\09Sunplus release version \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_show_usage(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @fprintf(i32* %3, i8* %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @fprintf(i32* %6, i8* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i8* @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @fprintf(i32* %9, i8* %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @fprintf(i32* %12, i8* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i8* @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 @fprintf(i32* %15, i8* %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i8* @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i64 0, i64 0))
  %20 = call i32 @fprintf(i32* %18, i8* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i8* @_(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.6, i64 0, i64 0))
  %23 = call i32 @fprintf(i32* %21, i8* %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %26 = call i32 @fprintf(i32* %24, i8* %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0))
  %29 = call i32 @fprintf(i32* %27, i8* %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i8* @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0))
  %32 = call i32 @fprintf(i32* %30, i8* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %35 = call i32 @fprintf(i32* %33, i8* %34)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
