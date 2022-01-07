; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_printentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_printentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tblentry = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CMDNORMAL = common dso_local global i64 0, align 8
@CMDBUILTIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"builtin %s\00", align 1
@CMDFUNCTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"function %s\00", align 1
@INTOFF = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tblentry*, i32)* @printentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printentry(%struct.tblentry* %0, i32 %1) #0 {
  %3 = alloca %struct.tblentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.tblentry* %0, %struct.tblentry** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.tblentry*, %struct.tblentry** %3, align 8
  %10 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CMDNORMAL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load %struct.tblentry*, %struct.tblentry** %3, align 8
  %16 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = call i8* (...) @pathval()
  store i8* %19, i8** %6, align 8
  br label %20

20:                                               ; preds = %27, %14
  %21 = load %struct.tblentry*, %struct.tblentry** %3, align 8
  %22 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @padvance(i8** %6, i8** %7, i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @stunalloc(i8* %25)
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %20, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @out1str(i8* %32)
  br label %75

34:                                               ; preds = %2
  %35 = load %struct.tblentry*, %struct.tblentry** %3, align 8
  %36 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CMDBUILTIN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.tblentry*, %struct.tblentry** %3, align 8
  %42 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @out1fmt(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %74

45:                                               ; preds = %34
  %46 = load %struct.tblentry*, %struct.tblentry** %3, align 8
  %47 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CMDFUNCTION, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load %struct.tblentry*, %struct.tblentry** %3, align 8
  %53 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @out1fmt(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load i32, i32* @INTOFF, align 4
  %60 = load %struct.tblentry*, %struct.tblentry** %3, align 8
  %61 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @getfuncnode(i32 %63)
  %65 = call i8* @commandtext(i32 %64)
  store i8* %65, i8** %8, align 8
  %66 = call i32 @out1c(i8 signext 32)
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @out1str(i8* %67)
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @ckfree(i8* %69)
  %71 = load i32, i32* @INTON, align 4
  br label %72

72:                                               ; preds = %58, %51
  br label %73

73:                                               ; preds = %72, %45
  br label %74

74:                                               ; preds = %73, %40
  br label %75

75:                                               ; preds = %74, %31
  %76 = call i32 @out1c(i8 signext 10)
  ret void
}

declare dso_local i8* @pathval(...) #1

declare dso_local i8* @padvance(i8**, i8**, i32) #1

declare dso_local i32 @stunalloc(i8*) #1

declare dso_local i32 @out1str(i8*) #1

declare dso_local i32 @out1fmt(i8*, i32) #1

declare dso_local i8* @commandtext(i32) #1

declare dso_local i32 @getfuncnode(i32) #1

declare dso_local i32 @out1c(i8 signext) #1

declare dso_local i32 @ckfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
