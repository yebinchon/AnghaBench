; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_alias.c_lookupalias.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_alias.c_lookupalias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias = type { i32, i32, %struct.alias* }

@aliases = common dso_local global i64 0, align 8
@ALIASINUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.alias* @lookupalias(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.alias*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.alias*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @aliases, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.alias* null, %struct.alias** %3, align 8
  br label %43

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.alias** @hashalias(i8* %11)
  %13 = load %struct.alias*, %struct.alias** %12, align 8
  store %struct.alias* %13, %struct.alias** %6, align 8
  br label %14

14:                                               ; preds = %38, %10
  %15 = load %struct.alias*, %struct.alias** %6, align 8
  %16 = icmp ne %struct.alias* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.alias*, %struct.alias** %6, align 8
  %20 = getelementptr inbounds %struct.alias, %struct.alias* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @equal(i8* %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.alias*, %struct.alias** %6, align 8
  %29 = getelementptr inbounds %struct.alias, %struct.alias* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ALIASINUSE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store %struct.alias* null, %struct.alias** %3, align 8
  br label %43

35:                                               ; preds = %27, %24
  %36 = load %struct.alias*, %struct.alias** %6, align 8
  store %struct.alias* %36, %struct.alias** %3, align 8
  br label %43

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.alias*, %struct.alias** %6, align 8
  %40 = getelementptr inbounds %struct.alias, %struct.alias* %39, i32 0, i32 2
  %41 = load %struct.alias*, %struct.alias** %40, align 8
  store %struct.alias* %41, %struct.alias** %6, align 8
  br label %14

42:                                               ; preds = %14
  store %struct.alias* null, %struct.alias** %3, align 8
  br label %43

43:                                               ; preds = %42, %35, %34, %9
  %44 = load %struct.alias*, %struct.alias** %3, align 8
  ret %struct.alias* %44
}

declare dso_local %struct.alias** @hashalias(i8*) #1

declare dso_local i64 @equal(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
