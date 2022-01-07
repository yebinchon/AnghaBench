; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_parse_demangle_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_parse_demangle_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ELFTC_DEM_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"gnu-v2\00", align 1
@ELFTC_DEM_GNU2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"gnu-v3\00", align 1
@ELFTC_DEM_GNU3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@ELFTC_DEM_ARM = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"unknown demangling style '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_demangle_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_demangle_option(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @ELFTC_DEM_UNKNOWN, align 4
  store i32 %7, i32* %2, align 4
  br label %34

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strncasecmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @ELFTC_DEM_GNU2, align 4
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strncasecmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @ELFTC_DEM_GNU3, align 4
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strncasecmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ELFTC_DEM_ARM, align 4
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %20
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @errx(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %24, %18, %12, %6
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
