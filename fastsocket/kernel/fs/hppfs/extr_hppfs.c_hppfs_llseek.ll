; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hppfs/extr_hppfs.c_hppfs_llseek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hppfs/extr_hppfs.c_hppfs_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_8__, %struct.hppfs_private* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }
%struct.hppfs_private = type { %struct.file* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i32)* @hppfs_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hppfs_llseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hppfs_private*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i64 (%struct.file*, i64, i32)*, align 8
  %11 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 1
  %14 = load %struct.hppfs_private*, %struct.hppfs_private** %13, align 8
  store %struct.hppfs_private* %14, %struct.hppfs_private** %8, align 8
  %15 = load %struct.hppfs_private*, %struct.hppfs_private** %8, align 8
  %16 = getelementptr inbounds %struct.hppfs_private, %struct.hppfs_private* %15, i32 0, i32 0
  %17 = load %struct.file*, %struct.file** %16, align 8
  store %struct.file* %17, %struct.file** %9, align 8
  %18 = load %struct.file*, %struct.file** %9, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i64 (%struct.file*, i64, i32)**
  %28 = load i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i64, i32)** %27, align 8
  store i64 (%struct.file*, i64, i32)* %28, i64 (%struct.file*, i64, i32)** %10, align 8
  %29 = load i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i64, i32)** %10, align 8
  %30 = icmp ne i64 (%struct.file*, i64, i32)* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %3
  %32 = load i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i64, i32)** %10, align 8
  %33 = load %struct.file*, %struct.file** %9, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 %32(%struct.file* %33, i64 %34, i32 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i64, i64* %11, align 8
  store i64 %40, i64* %4, align 8
  br label %47

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @default_llseek(%struct.file* %43, i64 %44, i32 %45)
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i64, i64* %4, align 8
  ret i64 %48
}

declare dso_local i64 @default_llseek(%struct.file*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
