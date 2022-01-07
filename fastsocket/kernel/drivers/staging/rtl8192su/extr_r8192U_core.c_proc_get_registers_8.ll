; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_proc_get_registers_8.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_proc_get_registers_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"\0A####################page %x##################\0A \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\0AD:  %2x > \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%8.8x \00", align 1
@bMaskDWord = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @proc_get_registers_8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_get_registers_8(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = bitcast i8* %19 to %struct.net_device*
  store %struct.net_device* %20, %struct.net_device** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 255, i32* %18, align 4
  store i32 2048, i32* %17, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %14, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %14, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32, i32* %17, align 4
  %29 = ashr i32 %28, 8
  %30 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %24, i32 %27, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %35

35:                                               ; preds = %86, %6
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %87

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %14, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* %16, align 4
  %48 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %43, i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %81, %39
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp sle i32 %57, %58
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ false, %53 ], [ %59, %56 ]
  br i1 %61, label %62, label %86

62:                                               ; preds = %60
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %14, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load %struct.net_device*, %struct.net_device** %13, align 8
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %16, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @bMaskDWord, align 4
  %75 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %70, i32 %73, i32 %74)
  %76 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %66, i32 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %62
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, 4
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %53

86:                                               ; preds = %60
  br label %35

87:                                               ; preds = %35
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %14, align 4
  %94 = sub nsw i32 %92, %93
  %95 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %91, i32 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %14, align 4
  %100 = load i32*, i32** %11, align 8
  store i32 1, i32* %100, align 4
  %101 = load i32, i32* %14, align 4
  ret i32 %101
}

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
