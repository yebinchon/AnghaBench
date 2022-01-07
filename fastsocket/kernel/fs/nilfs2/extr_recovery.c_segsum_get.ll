; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_segsum_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_segsum_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.super_block*, %struct.buffer_head**, i32*, i32)* @segsum_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @segsum_get(%struct.super_block* %0, %struct.buffer_head** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sub i32 %25, %27
  %29 = icmp ugt i32 %21, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %4
  %31 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %35, align 8
  %37 = call i32 @brelse(%struct.buffer_head* %36)
  %38 = load %struct.super_block*, %struct.super_block** %6, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add nsw i64 %39, 1
  %41 = call %struct.buffer_head* @sb_bread(%struct.super_block* %38, i64 %40)
  %42 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %41, %struct.buffer_head** %42, align 8
  %43 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %43, align 8
  %45 = icmp ne %struct.buffer_head* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %30
  store i8* null, i8** %5, align 8
  br label %67

51:                                               ; preds = %30
  %52 = load i32*, i32** %8, align 8
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %4
  %54 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %54, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr i8, i8* %57, i64 %60
  store i8* %61, i8** %10, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, %62
  store i32 %65, i32* %63, align 4
  %66 = load i8*, i8** %10, align 8
  store i8* %66, i8** %5, align 8
  br label %67

67:                                               ; preds = %53, %50
  %68 = load i8*, i8** %5, align 8
  ret i8* %68
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
