; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir.c_adfs_compare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir.c_adfs_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*, %struct.qstr*)* @adfs_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_compare(%struct.dentry* %0, %struct.qstr* %1, %struct.qstr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  %11 = load %struct.qstr*, %struct.qstr** %6, align 8
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.qstr*, %struct.qstr** %7, align 8
  %15 = getelementptr inbounds %struct.qstr, %struct.qstr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %78

19:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %74, %19
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.qstr*, %struct.qstr** %7, align 8
  %23 = getelementptr inbounds %struct.qstr, %struct.qstr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %20
  %27 = load %struct.qstr*, %struct.qstr** %6, align 8
  %28 = getelementptr inbounds %struct.qstr, %struct.qstr* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %9, align 1
  %34 = load %struct.qstr*, %struct.qstr** %7, align 8
  %35 = getelementptr inbounds %struct.qstr, %struct.qstr* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %10, align 1
  %41 = load i8, i8* %9, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sge i32 %42, 65
  br i1 %43, label %44, label %53

44:                                               ; preds = %26
  %45 = load i8, i8* %9, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sle i32 %46, 90
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i8, i8* %9, align 1
  %50 = sext i8 %49 to i32
  %51 = add nsw i32 %50, 32
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %9, align 1
  br label %53

53:                                               ; preds = %48, %44, %26
  %54 = load i8, i8* %10, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sge i32 %55, 65
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i8, i8* %10, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sle i32 %59, 90
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i8, i8* %10, align 1
  %63 = sext i8 %62 to i32
  %64 = add nsw i32 %63, 32
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %10, align 1
  br label %66

66:                                               ; preds = %61, %57, %53
  %67 = load i8, i8* %9, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* %10, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 1, i32* %4, align 4
  br label %78

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %20

77:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %72, %18
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
