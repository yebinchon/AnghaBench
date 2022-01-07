; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_alias.c_unalias.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_alias.c_unalias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias = type { i8*, i32, %struct.alias* }

@ALIASINUSE = common dso_local global i32 0, align 4
@INTOFF = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@aliases = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @unalias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unalias(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.alias*, align 8
  %5 = alloca %struct.alias**, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.alias** @hashalias(i8* %6)
  store %struct.alias** %7, %struct.alias*** %5, align 8
  %8 = load %struct.alias**, %struct.alias*** %5, align 8
  %9 = load %struct.alias*, %struct.alias** %8, align 8
  store %struct.alias* %9, %struct.alias** %4, align 8
  br label %10

10:                                               ; preds = %44, %1
  %11 = load %struct.alias*, %struct.alias** %4, align 8
  %12 = icmp ne %struct.alias* %11, null
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.alias*, %struct.alias** %4, align 8
  %16 = getelementptr inbounds %struct.alias, %struct.alias* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @equal(i8* %14, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %13
  %21 = load %struct.alias*, %struct.alias** %4, align 8
  %22 = getelementptr inbounds %struct.alias, %struct.alias* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ALIASINUSE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.alias*, %struct.alias** %4, align 8
  %29 = getelementptr inbounds %struct.alias, %struct.alias* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8 0, i8* %30, align 1
  br label %40

31:                                               ; preds = %20
  %32 = load i32, i32* @INTOFF, align 4
  %33 = load %struct.alias*, %struct.alias** %4, align 8
  %34 = getelementptr inbounds %struct.alias, %struct.alias* %33, i32 0, i32 2
  %35 = load %struct.alias*, %struct.alias** %34, align 8
  %36 = load %struct.alias**, %struct.alias*** %5, align 8
  store %struct.alias* %35, %struct.alias** %36, align 8
  %37 = load %struct.alias*, %struct.alias** %4, align 8
  %38 = call i32 @freealias(%struct.alias* %37)
  %39 = load i32, i32* @INTON, align 4
  br label %40

40:                                               ; preds = %31, %27
  %41 = load i32, i32* @aliases, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* @aliases, align 4
  store i32 0, i32* %2, align 4
  br label %51

43:                                               ; preds = %13
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.alias*, %struct.alias** %4, align 8
  %46 = getelementptr inbounds %struct.alias, %struct.alias* %45, i32 0, i32 2
  store %struct.alias** %46, %struct.alias*** %5, align 8
  %47 = load %struct.alias*, %struct.alias** %4, align 8
  %48 = getelementptr inbounds %struct.alias, %struct.alias* %47, i32 0, i32 2
  %49 = load %struct.alias*, %struct.alias** %48, align 8
  store %struct.alias* %49, %struct.alias** %4, align 8
  br label %10

50:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %40
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.alias** @hashalias(i8*) #1

declare dso_local i64 @equal(i8*, i8*) #1

declare dso_local i32 @freealias(%struct.alias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
