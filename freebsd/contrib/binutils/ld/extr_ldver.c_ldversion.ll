; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldver.c_ldversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldver.c_ldversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"GNU ld %s\0A\00", align 1
@BFD_VERSION_STRING = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Copyright 2007 Free Software Foundation, Inc.\0A\00", align 1
@.str.2 = private unnamed_addr constant [149 x i8] c"This program is free software; you may redistribute it under the terms of\0Athe GNU General Public License.  This program has absolutely no warranty.\0A\00", align 1
@ld_emulations = common dso_local global %struct.TYPE_3__** null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"  Supported emulations:\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"   %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldversion(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__**, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @stdout, align 4
  %5 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %6 = load i8*, i8** @BFD_VERSION_STRING, align 8
  %7 = call i32 @fprintf(i32 %4, i8* %5, i8* %6)
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 2
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* %12)
  %14 = call i8* @_(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @ld_emulations, align 8
  store %struct.TYPE_3__** %21, %struct.TYPE_3__*** %3, align 8
  %22 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* %22)
  br label %24

24:                                               ; preds = %28, %20
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %34, i32 1
  store %struct.TYPE_3__** %35, %struct.TYPE_3__*** %3, align 8
  br label %24

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %16
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
