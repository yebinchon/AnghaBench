; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_print_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_print_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32* }

@nm_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@sym_elem_print_all_sysv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"\0A\0A%s from %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Symbols\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Undefined symbols\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c":\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [97 x i8] c"Name                  Value           Class        Type         Size             Line  Section\0A\0A\00", align 1
@PRINT_NAME_FULL = common dso_local global i64 0, align 8
@sym_elem_print_all_portable = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"%s[%s]:\0A\00", align 1
@sym_elem_print_all = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"\0A%s:\0A\00", align 1
@PRINT_NAME_MULTI = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @print_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_header(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %65

8:                                                ; preds = %2
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 2), align 8
  %10 = icmp eq i32* %9, @sym_elem_print_all_sysv
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 0), align 8
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0)
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16)
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %11
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.5, i64 0, i64 0))
  br label %65

26:                                               ; preds = %8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 1), align 8
  %28 = load i64, i64* @PRINT_NAME_FULL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 2), align 8
  %35 = load i32*, i32** @sym_elem_print_all_portable, align 8
  %36 = icmp eq i32* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8*, i8** %3, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %38, i8* %39)
  br label %49

41:                                               ; preds = %33
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 2), align 8
  %43 = load i32*, i32** @sym_elem_print_all, align 8
  %44 = icmp eq i32* %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %41
  br label %49

49:                                               ; preds = %48, %37
  br label %64

50:                                               ; preds = %30, %26
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 1), align 8
  %52 = load i64, i64* @PRINT_NAME_MULTI, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 2), align 8
  %56 = load i32*, i32** @sym_elem_print_all, align 8
  %57 = icmp eq i32* %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %50
  br label %64

64:                                               ; preds = %63, %49
  br label %65

65:                                               ; preds = %7, %64, %23
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
