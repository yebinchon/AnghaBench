; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/cmd/baddof/extr_baddof.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/cmd/baddof/extr_baddof.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"expected D script as argument\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"couldn't open %s\00", align 1
@DTRACE_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"cannot open dtrace library: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to compile script %s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"could not allocate copy of %d bytes\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"/devices/pseudo/dtrace@0:dtrace\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"couldn't open DTrace pseudo device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %2
  %23 = load i8*, i8** %6, align 8
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %12, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* @DTRACE_VERSION, align 4
  %31 = call i32* @dtrace_open(i32 %30, i32 0, i32* %9)
  store i32* %31, i32** %7, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @dtrace_errmsg(i32* null, i32 %34)
  %36 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i32* @dtrace_program_fcompile(i32* %38, i32* %39, i32 0, i32 0, i32* null)
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @fclose(i32* %41)
  %43 = load i32*, i32** %8, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load i8*, i8** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @dtrace_errno(i32* %48)
  %50 = call i32 @dtrace_errmsg(i32* %47, i32 %49)
  %51 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %46, i32 %50)
  br label %52

52:                                               ; preds = %45, %37
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i8* @dtrace_dof_create(i32* %53, i32* %54, i32 0)
  store i8* %55, i8** %13, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = bitcast i8* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i8* @malloc(i32 %60)
  store i8* %61, i8** %14, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i32, i32* %11, align 4
  %65 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %52
  br label %67

67:                                               ; preds = %78, %66
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @bcopy(i8* %68, i8* %69, i32 %70)
  %72 = load i32, i32* @O_RDWR, align 4
  %73 = call i32 @open(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %67
  %79 = load i32, i32* %10, align 4
  %80 = load i8*, i8** %14, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @corrupt(i32 %79, i8* %80, i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @close(i32 %83)
  br label %67
}

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @dtrace_open(i32, i32, i32*) #1

declare dso_local i32 @dtrace_errmsg(i32*, i32) #1

declare dso_local i32* @dtrace_program_fcompile(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @dtrace_errno(i32*) #1

declare dso_local i8* @dtrace_dof_create(i32*, i32*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @corrupt(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
