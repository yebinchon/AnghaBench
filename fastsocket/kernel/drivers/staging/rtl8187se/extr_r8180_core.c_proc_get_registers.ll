; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_proc_get_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_proc_get_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"\0AD:  %2x > \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%2x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @proc_get_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_get_registers(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
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
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = bitcast i8* %18 to %struct.net_device*
  store %struct.net_device* %19, %struct.net_device** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 255, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %20

20:                                               ; preds = %68, %6
  %21 = load i32, i32* %16, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %69

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %14, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load i32, i32* %16, align 4
  %33 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %28, i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %63, %24
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %39, 16
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp sle i32 %42, %43
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ false, %38 ], [ %44, %41 ]
  br i1 %46, label %47, label %68

47:                                               ; preds = %45
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %14, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load %struct.net_device*, %struct.net_device** %13, align 8
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @read_nic_byte(%struct.net_device* %55, i32 %56)
  %58 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %51, i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %47
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %16, align 4
  br label %38

68:                                               ; preds = %45
  br label %20

69:                                               ; preds = %20
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %14, align 4
  %76 = sub nsw i32 %74, %75
  %77 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %73, i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %14, align 4
  %82 = load i32*, i32** %11, align 8
  store i32 1, i32* %82, align 4
  %83 = load i32, i32* %14, align 4
  ret i32 %83
}

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
