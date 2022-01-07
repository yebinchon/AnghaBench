; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_date_unix2dos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_date_unix2dos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }

@day_n = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb_sb_info*, i32, i32*, i32*)* @date_unix2dos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @date_unix2dos(%struct.smb_sb_info* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.smb_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.smb_sb_info*, %struct.smb_sb_info** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @utc2local(%struct.smb_sb_info* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 315532800
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 315532800, i32* %6, align 4
  br label %19

19:                                               ; preds = %18, %4
  %20 = load i32, i32* %6, align 4
  %21 = srem i32 %20, 60
  %22 = sdiv i32 %21, 2
  %23 = load i32, i32* %6, align 4
  %24 = sdiv i32 %23, 60
  %25 = srem i32 %24, 60
  %26 = shl i32 %25, 5
  %27 = add nsw i32 %22, %26
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 %28, 3600
  %30 = srem i32 %29, 24
  %31 = shl i32 %30, 11
  %32 = add nsw i32 %27, %31
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sdiv i32 %34, 86400
  %36 = sub nsw i32 %35, 3652
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sdiv i32 %37, 365
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 3
  %41 = sdiv i32 %40, 4
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 365, %42
  %44 = add nsw i32 %41, %43
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %19
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %19
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 3
  %53 = sdiv i32 %52, 4
  %54 = load i32, i32* %10, align 4
  %55 = mul nsw i32 365, %54
  %56 = add nsw i32 %53, %55
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 59
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 3
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %11, align 4
  store i32 2, i32* %12, align 4
  br label %98

67:                                               ; preds = %61, %50
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, 3
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = icmp sle i32 %72, 59
  br i1 %73, label %74, label %76

74:                                               ; preds = %71, %67
  %75 = load i32, i32* %9, align 4
  br label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %77, 1
  br label %79

79:                                               ; preds = %76, %74
  %80 = phi i32 [ %75, %74 ], [ %78, %76 ]
  store i32 %80, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %81

81:                                               ; preds = %94, %79
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 12
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i32*, i32** @day_n, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %97

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %81

97:                                               ; preds = %92, %81
  br label %98

98:                                               ; preds = %97, %65
  %99 = load i32, i32* %11, align 4
  %100 = load i32*, i32** @day_n, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %99, %105
  %107 = add nsw i32 %106, 1
  %108 = load i32, i32* %12, align 4
  %109 = shl i32 %108, 5
  %110 = add nsw i32 %107, %109
  %111 = load i32, i32* %10, align 4
  %112 = shl i32 %111, 9
  %113 = add nsw i32 %110, %112
  %114 = load i32*, i32** %7, align 8
  store i32 %113, i32* %114, align 4
  ret void
}

declare dso_local i32 @utc2local(%struct.smb_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
