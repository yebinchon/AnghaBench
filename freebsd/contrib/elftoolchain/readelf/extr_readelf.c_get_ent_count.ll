; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_get_ent_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_get_ent_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"section %s has entry size 0\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"section %s has invalid section count\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.section*, i32*)* @get_ent_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ent_count(%struct.section* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.section*, align 8
  %5 = alloca i32*, align 8
  store %struct.section* %0, %struct.section** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.section*, %struct.section** %4, align 8
  %7 = getelementptr inbounds %struct.section, %struct.section* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.section*, %struct.section** %4, align 8
  %12 = getelementptr inbounds %struct.section, %struct.section* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 0, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.section*, %struct.section** %4, align 8
  %17 = getelementptr inbounds %struct.section, %struct.section* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.section*, %struct.section** %4, align 8
  %20 = getelementptr inbounds %struct.section, %struct.section* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %18, %21
  %23 = load i32, i32* @INT_MAX, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.section*, %struct.section** %4, align 8
  %27 = getelementptr inbounds %struct.section, %struct.section* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 0, i32* %3, align 4
  br label %40

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.section*, %struct.section** %4, align 8
  %33 = getelementptr inbounds %struct.section, %struct.section* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.section*, %struct.section** %4, align 8
  %36 = getelementptr inbounds %struct.section, %struct.section* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %34, %37
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  store i32 1, i32* %3, align 4
  br label %40

40:                                               ; preds = %31, %25, %10
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
