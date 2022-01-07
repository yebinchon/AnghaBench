; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_kod.c_gdb_kod_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_kod.c_gdb_kod_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_target = common dso_local global i32 0, align 4
@TARGET_OBJECT_KOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"ERR: Kernel Object Display not supported by current target\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"kod: query argument too long\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"ERR: remote query failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*)* @gdb_kod_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdb_kod_query(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @TARGET_OBJECT_KOD, align 4
  %9 = call i64 @target_read_partial(i32* @current_target, i32 %8, i8* null, i8* null, i32 0, i32 0)
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %50

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strcpy(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %50

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32, i32* @TARGET_OBJECT_KOD, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @target_read_partial(i32* @current_target, i32 %41, i8* %42, i8* %43, i32 0, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcpy(i8* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %13, %20, %47, %40
  ret void
}

declare dso_local i64 @target_read_partial(i32*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
