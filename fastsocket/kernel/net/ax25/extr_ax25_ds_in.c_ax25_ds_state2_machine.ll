; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_ds_in.c_ax25_ds_state2_machine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_ds_in.c_ax25_ds_state2_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@AX25_POLLON = common dso_local global i32 0, align 4
@AX25_COMMAND = common dso_local global i32 0, align 4
@AX25_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sk_buff*, i32, i32, i32)* @ax25_ds_state2_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax25_ds_state2_machine(i32* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %48 [
    i32 130, label %12
    i32 129, label %12
    i32 136, label %19
    i32 135, label %28
    i32 128, label %28
    i32 134, label %37
    i32 133, label %37
    i32 132, label %37
    i32 131, label %37
  ]

12:                                               ; preds = %5, %5
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @AX25_POLLON, align 4
  %15 = load i32, i32* @AX25_COMMAND, align 4
  %16 = call i32 @ax25_send_control(i32* %13, i32 136, i32 %14, i32 %15)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @ax25_dama_off(i32* %17)
  br label %49

19:                                               ; preds = %5
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @AX25_RESPONSE, align 4
  %23 = call i32 @ax25_send_control(i32* %20, i32 128, i32 %21, i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @ax25_dama_off(i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @ax25_disconnect(i32* %26, i32 0)
  br label %49

28:                                               ; preds = %5, %5
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @ax25_dama_off(i32* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @ax25_disconnect(i32* %34, i32 0)
  br label %36

36:                                               ; preds = %31, %28
  br label %49

37:                                               ; preds = %5, %5, %5, %5
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @AX25_POLLON, align 4
  %43 = load i32, i32* @AX25_COMMAND, align 4
  %44 = call i32 @ax25_send_control(i32* %41, i32 136, i32 %42, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @ax25_dama_off(i32* %45)
  br label %47

47:                                               ; preds = %40, %37
  br label %49

48:                                               ; preds = %5
  br label %49

49:                                               ; preds = %48, %47, %36, %19, %12
  ret i32 0
}

declare dso_local i32 @ax25_send_control(i32*, i32, i32, i32) #1

declare dso_local i32 @ax25_dama_off(i32*) #1

declare dso_local i32 @ax25_disconnect(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
