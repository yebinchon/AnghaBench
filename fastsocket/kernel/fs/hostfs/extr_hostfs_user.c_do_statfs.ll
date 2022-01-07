; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_user.c_do_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_user.c_do_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs64 = type { i64, i64, i64, i64, i64, i64, i64, i64*, i32 }

@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_statfs(i8* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, i8* %7, i32 %8, i64* %9, i64* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca %struct.statfs64, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i64* %1, i64** %14, align 8
  store i64* %2, i64** %15, align 8
  store i64* %3, i64** %16, align 8
  store i64* %4, i64** %17, align 8
  store i64* %5, i64** %18, align 8
  store i64* %6, i64** %19, align 8
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store i64* %9, i64** %22, align 8
  store i64* %10, i64** %23, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @statfs64(i8* %26, %struct.statfs64* %24)
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %25, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %11
  %31 = load i32, i32* @errno, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %12, align 4
  br label %98

33:                                               ; preds = %11
  %34 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %24, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %14, align 8
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %24, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %15, align 8
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %24, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %16, align 8
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %24, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %17, align 8
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %24, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %18, align 8
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %24, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %19, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i8*, i8** %20, align 8
  %53 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %24, i32 0, i32 8
  %54 = load i32, i32* %21, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ugt i64 4, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %33
  %58 = load i32, i32* %21, align 4
  %59 = sext i32 %58 to i64
  br label %61

60:                                               ; preds = %33
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i64 [ %59, %57 ], [ 4, %60 ]
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(i8* %52, i32* %53, i32 %63)
  %65 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %24, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %22, align 8
  store i64 %66, i64* %67, align 8
  %68 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %24, i32 0, i32 7
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %23, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  store i64 %71, i64* %73, align 8
  %74 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %24, i32 0, i32 7
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %23, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  store i64 %77, i64* %79, align 8
  %80 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %24, i32 0, i32 7
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %23, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 2
  store i64 %83, i64* %85, align 8
  %86 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %24, i32 0, i32 7
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %23, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 3
  store i64 %89, i64* %91, align 8
  %92 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %24, i32 0, i32 7
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %23, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 4
  store i64 %95, i64* %97, align 8
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %61, %30
  %99 = load i32, i32* %12, align 4
  ret i32 %99
}

declare dso_local i32 @statfs64(i8*, %struct.statfs64*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
