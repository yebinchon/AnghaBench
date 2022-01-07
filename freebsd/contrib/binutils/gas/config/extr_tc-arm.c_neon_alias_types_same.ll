; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_alias_types_same.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_alias_types_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neon_typed_alias = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@NTA_HASTYPE = common dso_local global i32 0, align 4
@NTA_HASINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neon_typed_alias*, %struct.neon_typed_alias*)* @neon_alias_types_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neon_alias_types_same(%struct.neon_typed_alias* %0, %struct.neon_typed_alias* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.neon_typed_alias*, align 8
  %5 = alloca %struct.neon_typed_alias*, align 8
  store %struct.neon_typed_alias* %0, %struct.neon_typed_alias** %4, align 8
  store %struct.neon_typed_alias* %1, %struct.neon_typed_alias** %5, align 8
  %6 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %4, align 8
  %7 = icmp ne %struct.neon_typed_alias* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %5, align 8
  %10 = icmp ne %struct.neon_typed_alias* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %73

12:                                               ; preds = %8, %2
  %13 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %4, align 8
  %14 = icmp ne %struct.neon_typed_alias* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %5, align 8
  %17 = icmp ne %struct.neon_typed_alias* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %12
  store i32 0, i32* %3, align 4
  br label %73

19:                                               ; preds = %15
  %20 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %4, align 8
  %21 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %5, align 8
  %24 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %73

28:                                               ; preds = %19
  %29 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %4, align 8
  %30 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @NTA_HASTYPE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %28
  %36 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %4, align 8
  %37 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %5, align 8
  %41 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %35
  %46 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %4, align 8
  %47 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %5, align 8
  %51 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45, %35
  store i32 0, i32* %3, align 4
  br label %73

56:                                               ; preds = %45, %28
  %57 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %4, align 8
  %58 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NTA_HASINDEX, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %4, align 8
  %65 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.neon_typed_alias*, %struct.neon_typed_alias** %5, align 8
  %68 = getelementptr inbounds %struct.neon_typed_alias, %struct.neon_typed_alias* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %73

72:                                               ; preds = %63, %56
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %71, %55, %27, %18, %11
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
