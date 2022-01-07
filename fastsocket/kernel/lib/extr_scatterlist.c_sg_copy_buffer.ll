; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_scatterlist.c_sg_copy_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_scatterlist.c_sg_copy_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.sg_mapping_iter = type { i8*, i32 }

@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scatterlist*, i32, i8*, i64, i32)* @sg_copy_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sg_copy_buffer(%struct.scatterlist* %0, i32 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sg_mapping_iter, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @SG_MITER_ATOMIC, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %21 = load i32, i32* %14, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %14, align 4
  br label %27

23:                                               ; preds = %5
  %24 = load i32, i32* @SG_MITER_TO_SG, align 4
  %25 = load i32, i32* %14, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %14, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %12, %struct.scatterlist* %28, i32 %29, i32 %30)
  %32 = load i64, i64* %13, align 8
  %33 = call i32 @local_irq_save(i64 %32)
  br label %34

34:                                               ; preds = %72, %27
  %35 = call i64 @sg_miter_next(%struct.sg_mapping_iter* %12)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %9, align 8
  %41 = icmp ult i64 %39, %40
  br label %42

42:                                               ; preds = %37, %34
  %43 = phi i1 [ false, %34 ], [ %41, %37 ]
  br i1 %43, label %44, label %76

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %12, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = sub i64 %47, %49
  %51 = call i32 @min(i32 %46, i64 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %44
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr i8, i8* %55, i64 %57
  %59 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %12, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @memcpy(i8* %58, i8* %60, i32 %61)
  br label %72

63:                                               ; preds = %44
  %64 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %12, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr i8, i8* %66, i64 %68
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @memcpy(i8* %65, i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %54
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %34

76:                                               ; preds = %42
  %77 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %12)
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @local_irq_restore(i64 %78)
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  ret i64 %81
}

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
