; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_enter_cap_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_enter_cap_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@CAP_FSTAT = common dso_local global i32 0, align 4
@CAP_MMAP_R = common dso_local global i32 0, align 4
@nm_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@FA_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to initialize fileargs\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to limit stdio rights\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to enter capability mode\00", align 1
@nm_opts = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @enter_cap_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enter_cap_mode(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* @CAP_FSTAT, align 4
  %9 = load i32, i32* @CAP_MMAP_R, align 4
  %10 = call i32 @cap_rights_init(i32* %5, i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nm_info, i32 0, i32 0), align 4
  %15 = call i8* @strdup(i32 %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @err(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %13
  store i32 1, i32* %3, align 4
  store i8** %7, i8*** %4, align 8
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* %3, align 4
  %24 = load i8**, i8*** %4, align 8
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = load i32, i32* @FA_OPEN, align 4
  %27 = call i32* @fileargs_init(i32 %23, i8** %24, i32 %25, i32 0, i32* %5, i32 %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EXIT_FAILURE, align 4
  %32 = call i32 @err(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %22
  %34 = call i32 (...) @caph_cache_catpages()
  %35 = call i64 (...) @caph_limit_stdio()
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  %39 = call i32 @err(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %33
  %41 = call i64 (...) @caph_enter_casper()
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EXIT_FAILURE, align 4
  %45 = call i32 @err(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32*, i32** %6, align 8
  store i32* %47, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nm_opts, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @cap_rights_init(i32*, i32, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @fileargs_init(i32, i8**, i32, i32, i32*, i32) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i64 @caph_limit_stdio(...) #1

declare dso_local i64 @caph_enter_casper(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
