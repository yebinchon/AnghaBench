; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tty_subs.c_tty_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tty_subs.c_tty_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEVTTY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@ttyoutf = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ttyinf = common dso_local global i32* null, align 8
@iflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Fatal error, cannot open %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @DEVTTY, align 4
  %4 = load i32, i32* @O_RDWR, align 4
  %5 = call i32 @open(i32 %3, i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = call i8* @fdopen(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** @ttyoutf, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = call i8* @fdopen(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** @ttyinf, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %31

18:                                               ; preds = %12
  %19 = load i32*, i32** @ttyoutf, align 8
  %20 = call i32 @fclose(i32* %19)
  br label %21

21:                                               ; preds = %18, %7
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @close(i32 %22)
  br label %24

24:                                               ; preds = %21, %0
  %25 = load i64, i64* @iflag, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @DEVTTY, align 4
  %29 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  store i32 -1, i32* %1, align 4
  br label %31

30:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %30, %27, %17
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i8* @fdopen(i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @paxwarn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
