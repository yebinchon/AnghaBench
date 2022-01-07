; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_date_unix2dos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_dir.c_ncp_date_unix2dos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@day_n = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncp_date_unix2dos(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @utc2local(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = srem i32 %13, 60
  %15 = sdiv i32 %14, 2
  %16 = load i32, i32* %4, align 4
  %17 = sdiv i32 %16, 60
  %18 = srem i32 %17, 60
  %19 = shl i32 %18, 5
  %20 = add nsw i32 %15, %19
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 %21, 3600
  %23 = srem i32 %22, 24
  %24 = shl i32 %23, 11
  %25 = add nsw i32 %20, %24
  %26 = call i32 @cpu_to_le16(i32 %25)
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sdiv i32 %28, 86400
  %30 = sub nsw i32 %29, 3652
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sdiv i32 %31, 365
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 3
  %35 = sdiv i32 %34, 4
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 365, %36
  %38 = add nsw i32 %35, %37
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %3
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 3
  %47 = sdiv i32 %46, 4
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 365, %48
  %50 = add nsw i32 %47, %49
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 59
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 3
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %92

61:                                               ; preds = %55, %44
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 3
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = icmp sle i32 %66, 59
  br i1 %67, label %68, label %70

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %7, align 4
  br label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %71, 1
  br label %73

73:                                               ; preds = %70, %68
  %74 = phi i32 [ %69, %68 ], [ %72, %70 ]
  store i32 %74, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %75

75:                                               ; preds = %88, %73
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 12
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load i32*, i32** @day_n, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %91

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %75

91:                                               ; preds = %86, %75
  br label %92

92:                                               ; preds = %91, %59
  %93 = load i32, i32* %9, align 4
  %94 = load i32*, i32** @day_n, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %93, %99
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %10, align 4
  %103 = shl i32 %102, 5
  %104 = add nsw i32 %101, %103
  %105 = load i32, i32* %8, align 4
  %106 = shl i32 %105, 9
  %107 = add nsw i32 %104, %106
  %108 = call i32 @cpu_to_le16(i32 %107)
  %109 = load i32*, i32** %6, align 8
  store i32 %108, i32* %109, align 4
  ret void
}

declare dso_local i32 @utc2local(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
