; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo-new.c_setup_sgl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kfifo-new.c_setup_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kfifo = type { i32, i32, i64 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__kfifo*, %struct.scatterlist*, i32, i32, i32)* @setup_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_sgl(%struct.__kfifo* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.__kfifo*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.__kfifo* %0, %struct.__kfifo** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %16 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %11, align 4
  %19 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %20 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %23 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %39

29:                                               ; preds = %5
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %10, align 4
  %32 = mul i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = mul i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %9, align 4
  %38 = mul i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %29, %5
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub i32 %41, %42
  %44 = call i32 @min(i32 %40, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %46 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %47 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @setup_sgl_buf(%struct.scatterlist* %45, i64 %51, i32 %52, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %56 = load i32, i32* %14, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %55, i64 %57
  %59 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %60 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %14, align 4
  %64 = sub i32 %62, %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %13, align 4
  %67 = sub i32 %65, %66
  %68 = call i32 @setup_sgl_buf(%struct.scatterlist* %58, i64 %61, i32 %64, i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %39
  %74 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %75 = load i32, i32* %14, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %74, i64 %76
  %78 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %77, i64 -1
  %79 = call i32 @sg_mark_end(%struct.scatterlist* %78)
  br label %80

80:                                               ; preds = %73, %39
  %81 = load i32, i32* %14, align 4
  ret i32 %81
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @setup_sgl_buf(%struct.scatterlist*, i64, i32, i32) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
