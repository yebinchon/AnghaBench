; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_cmdlookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_cmdlookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tblentry = type { i32, i32, %struct.tblentry* }

@cmdtable = common dso_local global %struct.tblentry** null, align 8
@CMDTABLESIZE = common dso_local global i32 0, align 4
@INTOFF = common dso_local global i32 0, align 4
@CMDUNKNOWN = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@lastcmdentry = common dso_local global %struct.tblentry** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tblentry* (i8*, i32)* @cmdlookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tblentry* @cmdlookup(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tblentry*, align 8
  %8 = alloca %struct.tblentry**, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl i32 %13, 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %19, %2
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %6, align 8
  %22 = load i8, i8* %20, align 1
  %23 = sext i8 %22 to i32
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %15

26:                                               ; preds = %15
  %27 = load %struct.tblentry**, %struct.tblentry*** @cmdtable, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @CMDTABLESIZE, align 4
  %30 = urem i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.tblentry*, %struct.tblentry** %27, i64 %31
  store %struct.tblentry** %32, %struct.tblentry*** %8, align 8
  %33 = load %struct.tblentry**, %struct.tblentry*** %8, align 8
  %34 = load %struct.tblentry*, %struct.tblentry** %33, align 8
  store %struct.tblentry* %34, %struct.tblentry** %7, align 8
  br label %35

35:                                               ; preds = %49, %26
  %36 = load %struct.tblentry*, %struct.tblentry** %7, align 8
  %37 = icmp ne %struct.tblentry* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.tblentry*, %struct.tblentry** %7, align 8
  %40 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @equal(i32 %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %53

46:                                               ; preds = %38
  %47 = load %struct.tblentry*, %struct.tblentry** %7, align 8
  %48 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %47, i32 0, i32 2
  store %struct.tblentry** %48, %struct.tblentry*** %8, align 8
  br label %49

49:                                               ; preds = %46
  %50 = load %struct.tblentry*, %struct.tblentry** %7, align 8
  %51 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %50, i32 0, i32 2
  %52 = load %struct.tblentry*, %struct.tblentry** %51, align 8
  store %struct.tblentry* %52, %struct.tblentry** %7, align 8
  br label %35

53:                                               ; preds = %45, %35
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %53
  %57 = load %struct.tblentry*, %struct.tblentry** %7, align 8
  %58 = icmp eq %struct.tblentry* %57, null
  br i1 %58, label %59, label %82

59:                                               ; preds = %56
  %60 = load i32, i32* @INTOFF, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = call i64 @strlen(i8* %61)
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 16, %63
  %65 = add i64 %64, 1
  %66 = trunc i64 %65 to i32
  %67 = call %struct.tblentry* @ckmalloc(i32 %66)
  %68 = load %struct.tblentry**, %struct.tblentry*** %8, align 8
  store %struct.tblentry* %67, %struct.tblentry** %68, align 8
  store %struct.tblentry* %67, %struct.tblentry** %7, align 8
  %69 = load %struct.tblentry*, %struct.tblentry** %7, align 8
  %70 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %69, i32 0, i32 2
  store %struct.tblentry* null, %struct.tblentry** %70, align 8
  %71 = load i32, i32* @CMDUNKNOWN, align 4
  %72 = load %struct.tblentry*, %struct.tblentry** %7, align 8
  %73 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.tblentry*, %struct.tblentry** %7, align 8
  %75 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** %3, align 8
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  %80 = call i32 @memcpy(i32 %76, i8* %77, i64 %79)
  %81 = load i32, i32* @INTON, align 4
  br label %82

82:                                               ; preds = %59, %56, %53
  %83 = load %struct.tblentry**, %struct.tblentry*** %8, align 8
  store %struct.tblentry** %83, %struct.tblentry*** @lastcmdentry, align 8
  %84 = load %struct.tblentry*, %struct.tblentry** %7, align 8
  ret %struct.tblentry* %84
}

declare dso_local i64 @equal(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.tblentry* @ckmalloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
