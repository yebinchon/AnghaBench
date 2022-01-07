; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir_fplus.c_dir_memcpy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir_fplus.c_dir_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adfs_dir = type { %struct.TYPE_2__**, %struct.super_block* }
%struct.TYPE_2__ = type { i64 }
%struct.super_block = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adfs_dir*, i32, i8*, i32)* @dir_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dir_memcpy(%struct.adfs_dir* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.adfs_dir*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.adfs_dir* %0, %struct.adfs_dir** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.adfs_dir*, %struct.adfs_dir** %5, align 8
  %15 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %14, i32 0, i32 1
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.super_block*, %struct.super_block** %9, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = lshr i32 %17, %20
  store i32 %21, i32* %10, align 4
  %22 = load %struct.super_block*, %struct.super_block** %9, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.super_block*, %struct.super_block** %9, align 8
  %29 = getelementptr inbounds %struct.super_block, %struct.super_block* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %4
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.adfs_dir*, %struct.adfs_dir** %5, align 8
  %39 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @memcpy(i8* %37, i64 %49, i32 %50)
  br label %88

52:                                               ; preds = %4
  %53 = load i8*, i8** %7, align 8
  store i8* %53, i8** %13, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub i32 %54, %55
  store i32 %56, i32* %12, align 4
  %57 = load i8*, i8** %13, align 8
  %58 = load %struct.adfs_dir*, %struct.adfs_dir** %5, align 8
  %59 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %60, i64 %62
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @memcpy(i8* %57, i64 %69, i32 %70)
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load %struct.adfs_dir*, %struct.adfs_dir** %5, align 8
  %77 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = add i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %78, i64 %81
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @memcpy(i8* %75, i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %52, %36
  ret void
}

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
