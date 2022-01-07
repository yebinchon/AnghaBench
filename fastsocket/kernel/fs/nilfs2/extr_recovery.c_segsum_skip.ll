; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_segsum_skip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_segsum_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.buffer_head**, i32*, i32, i64)* @segsum_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @segsum_skip(%struct.super_block* %0, %struct.buffer_head** %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = sub i32 %18, %20
  %22 = load i32, i32* %9, align 4
  %23 = udiv i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = icmp ule i64 %24, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* %10, align 8
  %32 = mul i64 %30, %31
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = zext i32 %34 to i64
  %36 = add i64 %35, %32
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  br label %78

38:                                               ; preds = %5
  %39 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %39, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %43, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = udiv i32 %46, %47
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* %10, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @DIV_ROUND_UP(i64 %53, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sub i32 %59, 1
  %61 = load i32, i32* %13, align 4
  %62 = mul i32 %60, %61
  %63 = zext i32 %62 to i64
  %64 = sub i64 %58, %63
  %65 = mul i64 %57, %64
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %68, align 8
  %70 = call i32 @brelse(%struct.buffer_head* %69)
  %71 = load %struct.super_block*, %struct.super_block** %6, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i32, i32* %14, align 4
  %74 = zext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = call %struct.buffer_head* @sb_bread(%struct.super_block* %71, i64 %75)
  %77 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %76, %struct.buffer_head** %77, align 8
  br label %78

78:                                               ; preds = %38, %28
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
