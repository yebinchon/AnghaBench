; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_writev.c_mtd_fake_writev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_writev.c_mtd_fake_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 (%struct.mtd_info*, i64, i64, i64*, i32)* }
%struct.kvec = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.kvec*, i64, i64, i64*)* @mtd_fake_writev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtd_fake_writev(%struct.mtd_info* %0, %struct.kvec* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store %struct.kvec* %1, %struct.kvec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %66, %5
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %15
  %20 = load %struct.kvec*, %struct.kvec** %7, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %20, i64 %21
  %23 = getelementptr inbounds %struct.kvec, %struct.kvec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %66

27:                                               ; preds = %19
  %28 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 0
  %30 = load i32 (%struct.mtd_info*, i64, i64, i64*, i32)*, i32 (%struct.mtd_info*, i64, i64, i64*, i32)** %29, align 8
  %31 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.kvec*, %struct.kvec** %7, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds %struct.kvec, %struct.kvec* %33, i64 %34
  %36 = getelementptr inbounds %struct.kvec, %struct.kvec* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.kvec*, %struct.kvec** %7, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds %struct.kvec, %struct.kvec* %38, i64 %39
  %41 = getelementptr inbounds %struct.kvec, %struct.kvec* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %30(%struct.mtd_info* %31, i64 %32, i64 %37, i64* %13, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %12, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %12, align 8
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %27
  %50 = load i64, i64* %13, align 8
  %51 = load %struct.kvec*, %struct.kvec** %7, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds %struct.kvec, %struct.kvec* %51, i64 %52
  %54 = getelementptr inbounds %struct.kvec, %struct.kvec* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49, %27
  br label %69

58:                                               ; preds = %49
  %59 = load %struct.kvec*, %struct.kvec** %7, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds %struct.kvec, %struct.kvec* %59, i64 %60
  %62 = getelementptr inbounds %struct.kvec, %struct.kvec* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %58, %26
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %11, align 8
  br label %15

69:                                               ; preds = %57, %15
  %70 = load i64*, i64** %10, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i64, i64* %12, align 8
  %74 = load i64*, i64** %10, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %14, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
