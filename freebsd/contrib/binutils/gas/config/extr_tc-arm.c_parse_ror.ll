; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_ror.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_parse_ror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"ROR\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"missing rotation field after comma\00", align 1
@inst = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FAIL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"rotation can only be 0, 8, 16, or 24\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @parse_ror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ror(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strncasecmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 3
  store i8* %13, i8** %5, align 8
  br label %17

14:                                               ; preds = %1
  %15 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %16 = load i32, i32* @FAIL, align 4
  store i32 %16, i32* %2, align 4
  br label %41

17:                                               ; preds = %11
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 @parse_immediate(i8** %5, i32* %4, i32 0, i32 24, i32 %18)
  %20 = load i32, i32* @FAIL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @FAIL, align 4
  store i32 %23, i32* %2, align 4
  br label %41

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %38 [
    i32 0, label %26
    i32 8, label %29
    i32 16, label %32
    i32 24, label %35
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** %5, align 8
  %28 = load i8**, i8*** %3, align 8
  store i8* %27, i8** %28, align 8
  store i32 0, i32* %2, align 4
  br label %41

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = load i8**, i8*** %3, align 8
  store i8* %30, i8** %31, align 8
  store i32 1, i32* %2, align 4
  br label %41

32:                                               ; preds = %24
  %33 = load i8*, i8** %5, align 8
  %34 = load i8**, i8*** %3, align 8
  store i8* %33, i8** %34, align 8
  store i32 2, i32* %2, align 4
  br label %41

35:                                               ; preds = %24
  %36 = load i8*, i8** %5, align 8
  %37 = load i8**, i8*** %3, align 8
  store i8* %36, i8** %37, align 8
  store i32 3, i32* %2, align 4
  br label %41

38:                                               ; preds = %24
  %39 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @inst, i32 0, i32 0), align 8
  %40 = load i32, i32* @FAIL, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %35, %32, %29, %26, %22, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @parse_immediate(i8**, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
