; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_blacklistd.c_rules_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_blacklistd.c_rules_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }
%struct.TYPE_4__ = type { i64, i32* }
%struct.conf = type { i32 }

@rconf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@lconf = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rules_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rules_flush() #0 {
  %1 = alloca %struct.conf**, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.conf** null, %struct.conf*** %1, align 8
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %16, %0
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rconf, i32 0, i32 0), align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rconf, i32 0, i32 1), align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = call i32 @uniqueadd(%struct.conf*** %1, i64* %2, i64* %3, i32* %14)
  br label %16

16:                                               ; preds = %11
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %4, align 8
  br label %7

19:                                               ; preds = %7
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %29, %19
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lconf, i32 0, i32 0), align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lconf, i32 0, i32 1), align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = call i32 @uniqueadd(%struct.conf*** %1, i64* %2, i64* %3, i32* %27)
  br label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %5, align 8
  br label %20

32:                                               ; preds = %20
  store i64 0, i64* %6, align 8
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %2, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.conf**, %struct.conf*** %1, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.conf*, %struct.conf** %38, i64 %39
  %41 = load %struct.conf*, %struct.conf** %40, align 8
  %42 = call i32 @run_flush(%struct.conf* %41)
  br label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %6, align 8
  br label %33

46:                                               ; preds = %33
  %47 = load %struct.conf**, %struct.conf*** %1, align 8
  %48 = call i32 @free(%struct.conf** %47)
  ret void
}

declare dso_local i32 @uniqueadd(%struct.conf***, i64*, i64*, i32*) #1

declare dso_local i32 @run_flush(%struct.conf*) #1

declare dso_local i32 @free(%struct.conf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
