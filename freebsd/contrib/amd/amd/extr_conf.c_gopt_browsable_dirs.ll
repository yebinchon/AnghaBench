; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_conf.c_gopt_browsable_dirs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_conf.c_gopt_browsable_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"full\00", align 1
@CFM_BROWSABLE_DIRS_FULL = common dso_local global i32 0, align 4
@gopt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@CFM_BROWSABLE_DIRS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"conf: unknown value to browsable_dirs \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gopt_browsable_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gopt_browsable_dirs(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @STREQ(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @CFM_BROWSABLE_DIRS_FULL, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %34

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @STREQ(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @CFM_BROWSABLE_DIRS, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %34

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @STREQ(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @CFM_BROWSABLE_DIRS, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gopt, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %34

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %32)
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %23, %15, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @STREQ(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
