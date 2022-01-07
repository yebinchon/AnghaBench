; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_ch_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_ch_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smd_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smd_channel*, i8*, i32)* @ch_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch_read(%struct.smd_channel* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.smd_channel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.smd_channel* %0, %struct.smd_channel** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %36, %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = load %struct.smd_channel*, %struct.smd_channel** %4, align 8
  %18 = call i32 @ch_read_buffer(%struct.smd_channel* %17, i8** %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %47

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @memcpy(i8* %32, i8* %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %8, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %9, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.smd_channel*, %struct.smd_channel** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @ch_read_done(%struct.smd_channel* %44, i32 %45)
  br label %13

47:                                               ; preds = %21, %13
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %48, %49
  ret i32 %50
}

declare dso_local i32 @ch_read_buffer(%struct.smd_channel*, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ch_read_done(%struct.smd_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
