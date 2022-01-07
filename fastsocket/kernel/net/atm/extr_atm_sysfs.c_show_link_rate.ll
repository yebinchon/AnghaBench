; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_atm_sysfs.c_show_link_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_atm_sysfs.c_show_link_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.atm_dev = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_link_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_link_rate(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.atm_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.atm_dev* @to_atm_dev(%struct.device* %11)
  store %struct.atm_dev* %12, %struct.atm_dev** %8, align 8
  %13 = load %struct.atm_dev*, %struct.atm_dev** %8, align 8
  %14 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %19 [
    i32 128, label %16
    i32 129, label %17
    i32 130, label %18
  ]

16:                                               ; preds = %3
  store i32 155520000, i32* %9, align 4
  br label %25

17:                                               ; preds = %3
  store i32 622080000, i32* %9, align 4
  br label %25

18:                                               ; preds = %3
  store i32 25600000, i32* %9, align 4
  br label %25

19:                                               ; preds = %3
  %20 = load %struct.atm_dev*, %struct.atm_dev** %8, align 8
  %21 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 8
  %24 = mul nsw i32 %23, 53
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %19, %18, %17, %16
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i8*, i8** %7, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  ret i32 %37
}

declare dso_local %struct.atm_dev* @to_atm_dev(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
