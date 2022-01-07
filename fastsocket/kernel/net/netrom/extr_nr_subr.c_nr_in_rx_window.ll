; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_subr.c_nr_in_rx_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_subr.c_nr_in_rx_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.nr_sock = type { i16, i16, i16 }

@NR_MODULUS = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nr_in_rx_window(%struct.sock* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.nr_sock*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i16 %1, i16* %5, align 2
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.nr_sock* @nr_sk(%struct.sock* %9)
  store %struct.nr_sock* %10, %struct.nr_sock** %6, align 8
  %11 = load %struct.nr_sock*, %struct.nr_sock** %6, align 8
  %12 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 2
  store i16 %13, i16* %7, align 2
  %14 = load %struct.nr_sock*, %struct.nr_sock** %6, align 8
  %15 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %14, i32 0, i32 1
  %16 = load i16, i16* %15, align 2
  %17 = zext i16 %16 to i32
  %18 = load %struct.nr_sock*, %struct.nr_sock** %6, align 8
  %19 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %18, i32 0, i32 2
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = add nsw i32 %17, %21
  %23 = load i16, i16* @NR_MODULUS, align 2
  %24 = zext i16 %23 to i32
  %25 = srem i32 %22, %24
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %8, align 2
  br label %27

27:                                               ; preds = %40, %2
  %28 = load i16, i16* %7, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* %8, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load i16, i16* %5, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* %7, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %49

40:                                               ; preds = %33
  %41 = load i16, i16* %7, align 2
  %42 = zext i16 %41 to i32
  %43 = add nsw i32 %42, 1
  %44 = load i16, i16* @NR_MODULUS, align 2
  %45 = zext i16 %44 to i32
  %46 = srem i32 %43, %45
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %7, align 2
  br label %27

48:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
