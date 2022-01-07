; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_scatterlist.c_sg_miter_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_scatterlist.c_sg_miter_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_mapping_iter = type { i64, i64, i32, i32*, i32*, i32 }

@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@KM_BIO_SRC_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sg_miter_stop(%struct.sg_mapping_iter* %0) #0 {
  %2 = alloca %struct.sg_mapping_iter*, align 8
  store %struct.sg_mapping_iter* %0, %struct.sg_mapping_iter** %2, align 8
  %3 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %4 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %7 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %5, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %13 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %69

16:                                               ; preds = %1
  %17 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %18 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %21 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 8
  %26 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %27 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SG_MITER_TO_SG, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %16
  %33 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %34 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @flush_kernel_dcache_page(i32* %35)
  br label %37

37:                                               ; preds = %32, %16
  %38 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %39 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SG_MITER_ATOMIC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = call i32 (...) @irqs_disabled()
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %51 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @KM_BIO_SRC_IRQ, align 4
  %54 = call i32 @kunmap_atomic(i32* %52, i32 %53)
  br label %60

55:                                               ; preds = %37
  %56 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %57 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @kunmap(i32* %58)
  br label %60

60:                                               ; preds = %55, %44
  %61 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %62 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %61, i32 0, i32 4
  store i32* null, i32** %62, align 8
  %63 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %64 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %63, i32 0, i32 3
  store i32* null, i32** %64, align 8
  %65 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %66 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %2, align 8
  %68 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %60, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @flush_kernel_dcache_page(i32*) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @kunmap_atomic(i32*, i32) #1

declare dso_local i32 @kunmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
