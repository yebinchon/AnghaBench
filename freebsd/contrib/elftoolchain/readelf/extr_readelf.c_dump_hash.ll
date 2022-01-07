; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, %struct.TYPE_2__, %struct.section* }
%struct.TYPE_2__ = type { i64 }
%struct.section = type { i64, i32 }

@SHT_HASH = common dso_local global i64 0, align 8
@SHT_GNU_HASH = common dso_local global i64 0, align 8
@EM_ALPHA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_hash(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  %3 = alloca %struct.section*, align 8
  %4 = alloca i32, align 4
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %62, %1
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = load %struct.readelf*, %struct.readelf** %2, align 8
  %9 = getelementptr inbounds %struct.readelf, %struct.readelf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %65

12:                                               ; preds = %5
  %13 = load %struct.readelf*, %struct.readelf** %2, align 8
  %14 = getelementptr inbounds %struct.readelf, %struct.readelf* %13, i32 0, i32 2
  %15 = load %struct.section*, %struct.section** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.section, %struct.section* %15, i64 %17
  store %struct.section* %18, %struct.section** %3, align 8
  %19 = load %struct.section*, %struct.section** %3, align 8
  %20 = getelementptr inbounds %struct.section, %struct.section* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SHT_HASH, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %12
  %25 = load %struct.section*, %struct.section** %3, align 8
  %26 = getelementptr inbounds %struct.section, %struct.section* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SHT_GNU_HASH, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %24, %12
  %31 = load %struct.section*, %struct.section** %3, align 8
  %32 = getelementptr inbounds %struct.section, %struct.section* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SHT_GNU_HASH, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.readelf*, %struct.readelf** %2, align 8
  %38 = load %struct.section*, %struct.section** %3, align 8
  %39 = call i32 @dump_gnu_hash(%struct.readelf* %37, %struct.section* %38)
  br label %60

40:                                               ; preds = %30
  %41 = load %struct.readelf*, %struct.readelf** %2, align 8
  %42 = getelementptr inbounds %struct.readelf, %struct.readelf* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EM_ALPHA, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.section*, %struct.section** %3, align 8
  %49 = getelementptr inbounds %struct.section, %struct.section* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.readelf*, %struct.readelf** %2, align 8
  %54 = load %struct.section*, %struct.section** %3, align 8
  %55 = call i32 @dump_svr4_hash64(%struct.readelf* %53, %struct.section* %54)
  br label %59

56:                                               ; preds = %47, %40
  %57 = load %struct.section*, %struct.section** %3, align 8
  %58 = call i32 @dump_svr4_hash(%struct.section* %57)
  br label %59

59:                                               ; preds = %56, %52
  br label %60

60:                                               ; preds = %59, %36
  br label %61

61:                                               ; preds = %60, %24
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %5

65:                                               ; preds = %5
  ret void
}

declare dso_local i32 @dump_gnu_hash(%struct.readelf*, %struct.section*) #1

declare dso_local i32 @dump_svr4_hash64(%struct.readelf*, %struct.section*) #1

declare dso_local i32 @dump_svr4_hash(%struct.section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
