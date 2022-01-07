; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_in.c_rose_state2_machine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_in.c_rose_state2_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32* }
%struct.rose_sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @rose_state2_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_state2_machine(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rose_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.rose_sock* @rose_sk(%struct.sock* %8)
  store %struct.rose_sock* %9, %struct.rose_sock** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %41 [
    i32 128, label %11
    i32 129, label %32
  ]

11:                                               ; preds = %3
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call i32 @rose_write_internal(%struct.sock* %12, i32 129)
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rose_disconnect(%struct.sock* %14, i32 0, i32 %19, i32 %24)
  %26 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %27 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  br label %42

32:                                               ; preds = %3
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = call i32 @rose_disconnect(%struct.sock* %33, i32 0, i32 -1, i32 -1)
  %35 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %36 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  br label %42

41:                                               ; preds = %3
  br label %42

42:                                               ; preds = %41, %32, %11
  ret i32 0
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @rose_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @rose_disconnect(%struct.sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
