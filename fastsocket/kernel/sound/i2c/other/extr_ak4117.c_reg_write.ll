; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4117.c_reg_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4117.c_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4117 = type { i8*, i32, i32 (i32, i8, i8)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ak4117*, i8, i8)* @reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_write(%struct.ak4117* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.ak4117*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.ak4117* %0, %struct.ak4117** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load %struct.ak4117*, %struct.ak4117** %4, align 8
  %8 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %7, i32 0, i32 2
  %9 = load i32 (i32, i8, i8)*, i32 (i32, i8, i8)** %8, align 8
  %10 = load %struct.ak4117*, %struct.ak4117** %4, align 8
  %11 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i8, i8* %5, align 1
  %14 = load i8, i8* %6, align 1
  %15 = call i32 %9(i32 %12, i8 zeroext %13, i8 zeroext %14)
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i64
  %18 = icmp ult i64 %17, 8
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i8, i8* %6, align 1
  %21 = load %struct.ak4117*, %struct.ak4117** %4, align 8
  %22 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %5, align 1
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 %20, i8* %26, align 1
  br label %27

27:                                               ; preds = %19, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
