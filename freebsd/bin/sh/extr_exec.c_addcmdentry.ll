; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_addcmdentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_exec.c_addcmdentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdentry = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tblentry = type { i64, i32, %struct.TYPE_2__ }

@INTOFF = common dso_local global i32 0, align 4
@CMDFUNCTION = common dso_local global i64 0, align 8
@INTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cmdentry*)* @addcmdentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addcmdentry(i8* %0, %struct.cmdentry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cmdentry*, align 8
  %5 = alloca %struct.tblentry*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.cmdentry* %1, %struct.cmdentry** %4, align 8
  %6 = load i32, i32* @INTOFF, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.tblentry* @cmdlookup(i8* %7, i32 1)
  store %struct.tblentry* %8, %struct.tblentry** %5, align 8
  %9 = load %struct.tblentry*, %struct.tblentry** %5, align 8
  %10 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CMDFUNCTION, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.tblentry*, %struct.tblentry** %5, align 8
  %16 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @unreffunc(i32 %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.cmdentry*, %struct.cmdentry** %4, align 8
  %22 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.tblentry*, %struct.tblentry** %5, align 8
  %25 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.tblentry*, %struct.tblentry** %5, align 8
  %27 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %26, i32 0, i32 2
  %28 = load %struct.cmdentry*, %struct.cmdentry** %4, align 8
  %29 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %28, i32 0, i32 2
  %30 = bitcast %struct.TYPE_2__* %27 to i8*
  %31 = bitcast %struct.TYPE_2__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load %struct.cmdentry*, %struct.cmdentry** %4, align 8
  %33 = getelementptr inbounds %struct.cmdentry, %struct.cmdentry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.tblentry*, %struct.tblentry** %5, align 8
  %36 = getelementptr inbounds %struct.tblentry, %struct.tblentry* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local %struct.tblentry* @cmdlookup(i8*, i32) #1

declare dso_local i32 @unreffunc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
