; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_api.c_ima_collect_measurement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_api.c_ima_collect_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_iint_cache = type { i32, i32, i32 }
%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@IMA_MEASURED = common dso_local global i32 0, align 4
@IMA_DIGEST_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_collect_measurement(%struct.ima_iint_cache* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.ima_iint_cache*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ima_iint_cache* %0, %struct.ima_iint_cache** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load i32, i32* @EEXIST, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %3, align 8
  %10 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IMA_MEASURED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %3, align 8
  %24 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IMA_DIGEST_SIZE, align 4
  %27 = call i32 @memset(i32 %25, i32 0, i32 %26)
  %28 = load %struct.file*, %struct.file** %4, align 8
  %29 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %3, align 8
  %30 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ima_calc_hash(%struct.file* %28, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ima_iint_cache*, %struct.ima_iint_cache** %3, align 8
  %38 = getelementptr inbounds %struct.ima_iint_cache, %struct.ima_iint_cache* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %15
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ima_calc_hash(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
