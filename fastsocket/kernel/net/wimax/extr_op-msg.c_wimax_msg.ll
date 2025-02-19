; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_op-msg.c_wimax_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_op-msg.c_wimax_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wimax_msg(%struct.wimax_dev* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.wimax_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.wimax_dev* %0, %struct.wimax_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.sk_buff* @wimax_msg_alloc(%struct.wimax_dev* %15, i8* %16, i8* %17, i64 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %12, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %22 = call i64 @IS_ERR(%struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %26 = call i32 @PTR_ERR(%struct.sk_buff* %25)
  store i32 %26, i32* %11, align 4
  br label %31

27:                                               ; preds = %5
  %28 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %30 = call i32 @wimax_msg_send(%struct.wimax_dev* %28, %struct.sk_buff* %29)
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %11, align 4
  ret i32 %32
}

declare dso_local %struct.sk_buff* @wimax_msg_alloc(%struct.wimax_dev*, i8*, i8*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @wimax_msg_send(%struct.wimax_dev*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
