; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_mpoa_device_type_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_mpoa_device_type_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"non-MPOA device\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"MPS\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MPC\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"both MPS and MPC\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"unspecified (non-MPOA) device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8)* @mpoa_device_type_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mpoa_device_type_string(i8 signext %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %10 [
    i32 128, label %6
    i32 130, label %7
    i32 131, label %8
    i32 129, label %9
  ]

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %11

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %11

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %11

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %11

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %11

11:                                               ; preds = %10, %9, %8, %7, %6
  %12 = load i8*, i8** %2, align 8
  ret i8* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
