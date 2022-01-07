; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_clearcmdentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_clearcmdentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tblentry = type { i64, %struct.tblentry* }

@INTOFF = common dso_local global i32 0, align 4
@cmdtable = common dso_local global %struct.tblentry** null, align 8
@CMDTABLESIZE = common dso_local global i64 0, align 8
@CMDNORMAL = common dso_local global i64 0, align 8
@cmdtable_cd = common dso_local global i64 0, align 8
@INTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clearcmdentry() #0 {
  %1 = alloca %struct.tblentry**, align 8
  %2 = alloca %struct.tblentry**, align 8
  %3 = alloca %struct.tblentry*, align 8
  %4 = load i32, i32* @INTOFF, align 4
  %5 = load %struct.tblentry**, %struct.tblentry*** @cmdtable, align 8
  store %struct.tblentry** %5, %struct.tblentry*** %1, align 8
  br label %6

6:                                                ; preds = %36, %0
  %7 = load %struct.tblentry**, %struct.tblentry*** %1, align 8
  %8 = load %struct.tblentry**, %struct.tblentry*** @cmdtable, align 8
  %9 = load i64, i64* @CMDTABLESIZE, align 8
  %10 = getelementptr inbounds %struct.tblentry*, %struct.tblentry** %8, i64 %9
  %11 = icmp ult %struct.tblentry** %7, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %6
  %13 = load %struct.tblentry**, %struct.tblentry*** %1, align 8
  store %struct.tblentry** %13, %struct.tblentry*** %2, align 8
  br label %14

14:                                               ; preds = %34, %12
  %15 = load %struct.tblentry**, %struct.tblentry*** %2, align 8
  %16 = load %struct.tblentry*, %struct.tblentry** %15, align 8
  store %struct.tblentry* %16, %struct.tblentry** %3, align 8
  %17 = icmp ne %struct.tblentry* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.tblentry*, %struct.tblentry** %3, align 8
  %20 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CMDNORMAL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.tblentry*, %struct.tblentry** %3, align 8
  %26 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %25, i32 0, i32 1
  %27 = load %struct.tblentry*, %struct.tblentry** %26, align 8
  %28 = load %struct.tblentry**, %struct.tblentry*** %2, align 8
  store %struct.tblentry* %27, %struct.tblentry** %28, align 8
  %29 = load %struct.tblentry*, %struct.tblentry** %3, align 8
  %30 = call i32 @ckfree(%struct.tblentry* %29)
  br label %34

31:                                               ; preds = %18
  %32 = load %struct.tblentry*, %struct.tblentry** %3, align 8
  %33 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %32, i32 0, i32 1
  store %struct.tblentry** %33, %struct.tblentry*** %2, align 8
  br label %34

34:                                               ; preds = %31, %24
  br label %14

35:                                               ; preds = %14
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.tblentry**, %struct.tblentry*** %1, align 8
  %38 = getelementptr inbounds %struct.tblentry*, %struct.tblentry** %37, i32 1
  store %struct.tblentry** %38, %struct.tblentry*** %1, align 8
  br label %6

39:                                               ; preds = %6
  store i64 0, i64* @cmdtable_cd, align 8
  %40 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local i32 @ckfree(%struct.tblentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
