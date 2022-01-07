; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_alias.c_hashalias.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_alias.c_hashalias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias = type { i32 }

@atab = common dso_local global %struct.alias** null, align 8
@ATABSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.alias** (i8*)* @hashalias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.alias** @hashalias(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl i32 %6, 4
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %12, %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %2, align 8
  %15 = load i8, i8* %13, align 1
  %16 = sext i8 %15 to i32
  %17 = load i32, i32* %3, align 4
  %18 = add i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %8

19:                                               ; preds = %8
  %20 = load %struct.alias**, %struct.alias*** @atab, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @ATABSIZE, align 4
  %23 = urem i32 %21, %22
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.alias*, %struct.alias** %20, i64 %24
  ret %struct.alias** %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
