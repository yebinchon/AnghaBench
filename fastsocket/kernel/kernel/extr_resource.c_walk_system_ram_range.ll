; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c_walk_system_ram_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_resource.c_walk_system_ram_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"System RAM\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @walk_system_ram_range(i64 %0, i64 %1, i8* %2, i32 (i64, i64, i8*)* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i64, i64, i8*)*, align 8
  %9 = alloca %struct.resource, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 (i64, i64, i8*)* %3, i32 (i64, i64, i8*)** %8, align 8
  store i32 -1, i32* %13, align 4
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = sub nsw i32 %24, 1
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = load i32, i32* @IORESOURCE_BUSY, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %74, %4
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = call i64 @find_next_system_ram(%struct.resource* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %41 = icmp sge i64 %40, 0
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i1 [ false, %33 ], [ %41, %39 ]
  br i1 %43, label %44, label %81

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = add nsw i32 %46, %47
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* @PAGE_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %10, align 8
  %53 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* @PAGE_SHIFT, align 4
  %57 = ashr i32 %55, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %44
  %63 = load i32 (i64, i64, i8*)*, i32 (i64, i64, i8*)** %8, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %10, align 8
  %67 = sub i64 %65, %66
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 %63(i64 %64, i64 %67, i8* %68)
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %62, %44
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %81

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %12, align 4
  %80 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  br label %33

81:                                               ; preds = %73, %42
  %82 = load i32, i32* %13, align 4
  ret i32 %82
}

declare dso_local i64 @find_next_system_ram(%struct.resource*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
