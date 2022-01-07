; ModuleID = '/home/carl/AnghaBench/freebsd/bin/df/extr_df.c_prthumanval.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/df/extr_df.c_prthumanval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HN_B = common dso_local global i32 0, align 4
@HN_NOSPACE = common dso_local global i32 0, align 4
@HN_DECIMAL = common dso_local global i32 0, align 4
@hflag = common dso_local global i64 0, align 8
@UNITS_SI = common dso_local global i64 0, align 8
@HN_DIVISOR_1000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @prthumanval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prthumanval(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [6 x i8], align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @HN_B, align 4
  %8 = load i32, i32* @HN_NOSPACE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @HN_DECIMAL, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i64, i64* @hflag, align 8
  %13 = load i64, i64* @UNITS_SI, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @HN_DIVISOR_1000, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %21 = load i64, i64* %4, align 8
  %22 = icmp slt i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 1
  %25 = sext i32 %24 to i64
  %26 = sub i64 6, %25
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @HN_AUTOSCALE, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @humanize_number(i8* %20, i32 %27, i64 %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @xo_attr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0
  %36 = call i32 @xo_emit(i8* %34, i8* %35)
  ret void
}

declare dso_local i32 @humanize_number(i8*, i32, i64, i8*, i32, i32) #1

declare dso_local i32 @xo_attr(i8*, i8*, i64) #1

declare dso_local i32 @xo_emit(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
