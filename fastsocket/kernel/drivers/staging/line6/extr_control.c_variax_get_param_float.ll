; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_control.c_variax_get_param_float.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_control.c_variax_get_param_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_line6_variax = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@variax_get_param_float.BIAS = internal constant i32 127, align 4
@variax_get_param_float.OFFSET = internal constant i32 15, align 4
@variax_get_param_float.PRECISION = internal constant i32 1000, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s%d.%03d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i32)* @variax_get_param_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @variax_get_param_float(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca %struct.usb_line6_variax*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.usb_interface* @to_usb_interface(%struct.device* %17)
  store %struct.usb_interface* %18, %struct.usb_interface** %11, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %20 = call %struct.usb_line6_variax* @usb_get_intfdata(%struct.usb_interface* %19)
  store %struct.usb_line6_variax* %20, %struct.usb_line6_variax** %12, align 8
  %21 = load %struct.usb_line6_variax*, %struct.usb_line6_variax** %12, align 8
  %22 = getelementptr inbounds %struct.usb_line6_variax, %struct.usb_line6_variax* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8* %27, i8** %13, align 8
  %28 = load %struct.usb_line6_variax*, %struct.usb_line6_variax** %12, align 8
  %29 = getelementptr inbounds %struct.usb_line6_variax, %struct.usb_line6_variax* %28, i32 0, i32 0
  %30 = call i32 @line6_wait_dump(i32* %29, i32 0)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %4, align 4
  br label %124

35:                                               ; preds = %3
  %36 = load i8*, i8** %13, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load i8*, i8** %13, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i8*, i8** %13, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %103

54:                                               ; preds = %47, %41, %35
  %55 = load i8*, i8** %13, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 127
  %60 = shl i32 %59, 1
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = ashr i32 %64, 7
  %66 = or i32 %60, %65
  %67 = sub nsw i32 %66, 127
  store i32 %67, i32* %15, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl i32 %71, 8
  %73 = load i8*, i8** %13, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %72, %76
  %78 = or i32 %77, 32768
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %15, align 4
  %80 = sub nsw i32 %79, 15
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %54
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %15, align 4
  %86 = shl i32 %84, %85
  store i32 %86, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %96

87:                                               ; preds = %54
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %15, align 4
  %90 = sub nsw i32 0, %89
  %91 = lshr i32 %88, %90
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 32, %93
  %95 = shl i32 %92, %94
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %87, %83
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = udiv i64 %98, 429496
  %100 = add i64 %99, 5
  %101 = udiv i64 %100, 10
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %96, %53
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8*, i8** %13, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, 128
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i64 @sprintf(i8* %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %115, i32 %116, i32 %117)
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %103, %33
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_line6_variax* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @line6_wait_dump(i32*, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
