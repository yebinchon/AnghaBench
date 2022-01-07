; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_copyString.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_copyString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, %struct.TYPE_3__*)* @copyString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @copyString(i64* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %15, %2
  %9 = load i64*, i64** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %8

18:                                               ; preds = %8
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64* (i32)*, i64* (i32)** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call i64* %23(i32 %27)
  store i64* %28, i64** %7, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = icmp eq i64* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  store i64* null, i64** %3, align 8
  br label %41

32:                                               ; preds = %18
  %33 = load i64*, i64** %7, align 8
  %34 = load i64*, i64** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memcpy(i64* %33, i64* %34, i32 %38)
  %40 = load i64*, i64** %7, align 8
  store i64* %40, i64** %3, align 8
  br label %41

41:                                               ; preds = %32, %31
  %42 = load i64*, i64** %3, align 8
  ret i64* %42
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
