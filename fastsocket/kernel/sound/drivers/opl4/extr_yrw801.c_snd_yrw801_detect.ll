; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_yrw801.c_snd_yrw801_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/opl4/extr_yrw801.c_snd_yrw801_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl4 = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"CopyrightYAMAHA\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"YRW801 ROM version %02x.%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_yrw801_detect(%struct.snd_opl4* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_opl4*, align 8
  %4 = alloca [15 x i8], align 1
  store %struct.snd_opl4* %0, %struct.snd_opl4** %3, align 8
  %5 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %6 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %7 = call i32 @snd_opl4_read_memory(%struct.snd_opl4* %5, i8* %6, i32 4608, i32 15)
  %8 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %9 = call i64 @memcmp(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 15)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.snd_opl4*, %struct.snd_opl4** %3, align 8
  %16 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %17 = call i32 @snd_opl4_read_memory(%struct.snd_opl4* %15, i8* %16, i32 2097150, i32 2)
  %18 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %31

25:                                               ; preds = %14
  %26 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @snd_printdd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8 signext %27, i8 signext %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %25, %22, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @snd_opl4_read_memory(%struct.snd_opl4*, i8*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @snd_printdd(i8*, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
