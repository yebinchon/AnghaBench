; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_compare_dents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_compare_dents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_dirent = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_dents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_dents(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gfs2_dirent*, align 8
  %6 = alloca %struct.gfs2_dirent*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.gfs2_dirent**
  %14 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %13, align 8
  store %struct.gfs2_dirent* %14, %struct.gfs2_dirent** %5, align 8
  %15 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @be32_to_cpu(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to %struct.gfs2_dirent**
  %21 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %20, align 8
  store %struct.gfs2_dirent* %21, %struct.gfs2_dirent** %6, align 8
  %22 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %23 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @be32_to_cpu(i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %63

30:                                               ; preds = %2
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %9, align 4
  br label %62

35:                                               ; preds = %30
  %36 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %37 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be16_to_cpu(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %41 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be16_to_cpu(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %61

48:                                               ; preds = %35
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 -1, i32* %9, align 4
  br label %60

53:                                               ; preds = %48
  %54 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %55 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %54, i64 1
  %56 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %57 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %56, i64 1
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @memcmp(%struct.gfs2_dirent* %55, %struct.gfs2_dirent* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %53, %52
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %61, %34
  br label %63

63:                                               ; preds = %62, %29
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @memcmp(%struct.gfs2_dirent*, %struct.gfs2_dirent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
