; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_check_direct_IO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_check_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.kiocb = type { i32 }
%struct.iovec = type { i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btrfs_root*, i32, %struct.kiocb*, %struct.iovec*, i32, i64)* @check_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_direct_IO(%struct.btrfs_root* %0, i32 %1, %struct.kiocb* %2, %struct.iovec* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kiocb*, align 8
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.kiocb* %2, %struct.kiocb** %9, align 8
  store %struct.iovec* %3, %struct.iovec** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %21 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %17, align 4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %18, align 8
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %17, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  br label %106

32:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %102, %32
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %12, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %105

38:                                               ; preds = %33
  %39 = load %struct.iovec*, %struct.iovec** %10, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %39, i64 %41
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %16, align 8
  %45 = load %struct.iovec*, %struct.iovec** %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %45, i64 %47
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %15, align 8
  %52 = load i32, i32* %19, align 4
  %53 = zext i32 %52 to i64
  %54 = add i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %19, align 4
  %56 = load i64, i64* %16, align 8
  %57 = load i32, i32* %17, align 4
  %58 = zext i32 %57 to i64
  %59 = and i64 %56, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %38
  %62 = load i64, i64* %15, align 8
  %63 = load i32, i32* %17, align 4
  %64 = zext i32 %63 to i64
  %65 = and i64 %62, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %38
  br label %106

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @WRITE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %102

74:                                               ; preds = %68
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %98, %74
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %12, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %77
  %83 = load %struct.iovec*, %struct.iovec** %10, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.iovec, %struct.iovec* %83, i64 %85
  %87 = getelementptr inbounds %struct.iovec, %struct.iovec* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.iovec*, %struct.iovec** %10, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.iovec, %struct.iovec* %89, i64 %91
  %93 = getelementptr inbounds %struct.iovec, %struct.iovec* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %88, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  br label %106

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %77

101:                                              ; preds = %77
  br label %102

102:                                              ; preds = %101, %73
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %33

105:                                              ; preds = %33
  store i64 0, i64* %18, align 8
  br label %106

106:                                              ; preds = %105, %96, %67, %31
  %107 = load i64, i64* %18, align 8
  ret i64 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
