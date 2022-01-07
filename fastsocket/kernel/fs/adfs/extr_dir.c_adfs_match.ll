; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir.c_adfs_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir.c_adfs_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32, i8* }
%struct.object_info = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qstr*, %struct.object_info*)* @adfs_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_match(%struct.qstr* %0, %struct.object_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.object_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.qstr* %0, %struct.qstr** %4, align 8
  store %struct.object_info* %1, %struct.object_info** %5, align 8
  %9 = load %struct.qstr*, %struct.qstr** %4, align 8
  %10 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.object_info*, %struct.object_info** %5, align 8
  %13 = getelementptr inbounds %struct.object_info, %struct.object_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %72, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.qstr*, %struct.qstr** %4, align 8
  %21 = getelementptr inbounds %struct.qstr, %struct.qstr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %75

24:                                               ; preds = %18
  %25 = load %struct.qstr*, %struct.qstr** %4, align 8
  %26 = getelementptr inbounds %struct.qstr, %struct.qstr* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %7, align 1
  %32 = load %struct.object_info*, %struct.object_info** %5, align 8
  %33 = getelementptr inbounds %struct.object_info, %struct.object_info* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %8, align 1
  %39 = load i8, i8* %7, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sge i32 %40, 65
  br i1 %41, label %42, label %51

42:                                               ; preds = %24
  %43 = load i8, i8* %7, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sle i32 %44, 90
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i8, i8* %7, align 1
  %48 = sext i8 %47 to i32
  %49 = add nsw i32 %48, 32
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %7, align 1
  br label %51

51:                                               ; preds = %46, %42, %24
  %52 = load i8, i8* %8, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sge i32 %53, 65
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sle i32 %57, 90
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8, i8* %8, align 1
  %61 = sext i8 %60 to i32
  %62 = add nsw i32 %61, 32
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %8, align 1
  br label %64

64:                                               ; preds = %59, %55, %51
  %65 = load i8, i8* %7, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* %8, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %76

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %18

75:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %70, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
