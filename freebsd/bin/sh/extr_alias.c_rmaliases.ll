; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_alias.c_rmaliases.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_alias.c_rmaliases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias = type { i32, i8*, %struct.alias* }

@INTOFF = common dso_local global i32 0, align 4
@ATABSIZE = common dso_local global i32 0, align 4
@atab = common dso_local global %struct.alias** null, align 8
@ALIASINUSE = common dso_local global i32 0, align 4
@aliases = common dso_local global i64 0, align 8
@INTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rmaliases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmaliases() #0 {
  %1 = alloca %struct.alias*, align 8
  %2 = alloca %struct.alias**, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @INTOFF, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %43, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ATABSIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %46

9:                                                ; preds = %5
  %10 = load %struct.alias**, %struct.alias*** @atab, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.alias*, %struct.alias** %10, i64 %12
  store %struct.alias** %13, %struct.alias*** %2, align 8
  br label %14

14:                                               ; preds = %41, %9
  %15 = load %struct.alias**, %struct.alias*** %2, align 8
  %16 = load %struct.alias*, %struct.alias** %15, align 8
  %17 = icmp ne %struct.alias* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load %struct.alias**, %struct.alias*** %2, align 8
  %20 = load %struct.alias*, %struct.alias** %19, align 8
  store %struct.alias* %20, %struct.alias** %1, align 8
  %21 = load %struct.alias*, %struct.alias** %1, align 8
  %22 = getelementptr inbounds %struct.alias, %struct.alias* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ALIASINUSE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.alias*, %struct.alias** %1, align 8
  %29 = getelementptr inbounds %struct.alias, %struct.alias* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8 0, i8* %30, align 1
  %31 = load %struct.alias**, %struct.alias*** %2, align 8
  %32 = load %struct.alias*, %struct.alias** %31, align 8
  %33 = getelementptr inbounds %struct.alias, %struct.alias* %32, i32 0, i32 2
  store %struct.alias** %33, %struct.alias*** %2, align 8
  br label %41

34:                                               ; preds = %18
  %35 = load %struct.alias*, %struct.alias** %1, align 8
  %36 = getelementptr inbounds %struct.alias, %struct.alias* %35, i32 0, i32 2
  %37 = load %struct.alias*, %struct.alias** %36, align 8
  %38 = load %struct.alias**, %struct.alias*** %2, align 8
  store %struct.alias* %37, %struct.alias** %38, align 8
  %39 = load %struct.alias*, %struct.alias** %1, align 8
  %40 = call i32 @freealias(%struct.alias* %39)
  br label %41

41:                                               ; preds = %34, %27
  br label %14

42:                                               ; preds = %14
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %5

46:                                               ; preds = %5
  store i64 0, i64* @aliases, align 8
  %47 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local i32 @freealias(%struct.alias*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
