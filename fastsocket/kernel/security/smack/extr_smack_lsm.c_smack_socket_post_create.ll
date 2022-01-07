; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_socket_post_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_socket_post_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32* }

@PF_INET = common dso_local global i32 0, align 4
@SMACK_CIPSO_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, i32, i32, i32)* @smack_socket_post_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_socket_post_create(%struct.socket* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @PF_INET, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %5
  %16 = load %struct.socket*, %struct.socket** %7, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %5
  store i32 0, i32* %6, align 4
  br label %27

21:                                               ; preds = %15
  %22 = load %struct.socket*, %struct.socket** %7, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @SMACK_CIPSO_SOCKET, align 4
  %26 = call i32 @smack_netlabel(i32* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %21, %20
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @smack_netlabel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
