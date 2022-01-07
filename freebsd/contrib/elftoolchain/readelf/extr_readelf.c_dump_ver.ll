; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_ver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*)* @dump_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ver(%struct.readelf* %0) #0 {
  %2 = alloca %struct.readelf*, align 8
  store %struct.readelf* %0, %struct.readelf** %2, align 8
  %3 = load %struct.readelf*, %struct.readelf** %2, align 8
  %4 = getelementptr inbounds %struct.readelf, %struct.readelf* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.readelf*, %struct.readelf** %2, align 8
  %9 = getelementptr inbounds %struct.readelf, %struct.readelf* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load %struct.readelf*, %struct.readelf** %2, align 8
  %14 = getelementptr inbounds %struct.readelf, %struct.readelf* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.readelf*, %struct.readelf** %2, align 8
  %19 = call i32 @dump_versym(%struct.readelf* %18)
  br label %20

20:                                               ; preds = %17, %12, %7, %1
  %21 = load %struct.readelf*, %struct.readelf** %2, align 8
  %22 = getelementptr inbounds %struct.readelf, %struct.readelf* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.readelf*, %struct.readelf** %2, align 8
  %27 = call i32 @dump_verdef(%struct.readelf* %26, i32 1)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.readelf*, %struct.readelf** %2, align 8
  %30 = getelementptr inbounds %struct.readelf, %struct.readelf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.readelf*, %struct.readelf** %2, align 8
  %35 = call i32 @dump_verneed(%struct.readelf* %34, i32 1)
  br label %36

36:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @dump_versym(%struct.readelf*) #1

declare dso_local i32 @dump_verdef(%struct.readelf*, i32) #1

declare dso_local i32 @dump_verneed(%struct.readelf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
