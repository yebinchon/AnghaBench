; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_subr.c_rose_validate_nr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_subr.c_rose_validate_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rose_sock = type { i16, i16 }

@ROSE_MODULUS = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rose_validate_nr(%struct.sock* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.rose_sock*, align 8
  %7 = alloca i16, align 2
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.rose_sock* @rose_sk(%struct.sock* %8)
  store %struct.rose_sock* %9, %struct.rose_sock** %6, align 8
  %10 = load %struct.rose_sock*, %struct.rose_sock** %6, align 8
  %11 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %10, i32 0, i32 0
  %12 = load i16, i16* %11, align 2
  store i16 %12, i16* %7, align 2
  br label %13

13:                                               ; preds = %28, %2
  %14 = load i16, i16* %7, align 2
  %15 = zext i16 %14 to i32
  %16 = load %struct.rose_sock*, %struct.rose_sock** %6, align 8
  %17 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %16, i32 0, i32 1
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp ne i32 %15, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %13
  %22 = load i16, i16* %5, align 2
  %23 = zext i16 %22 to i32
  %24 = load i16, i16* %7, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %45

28:                                               ; preds = %21
  %29 = load i16, i16* %7, align 2
  %30 = zext i16 %29 to i32
  %31 = add nsw i32 %30, 1
  %32 = load i16, i16* @ROSE_MODULUS, align 2
  %33 = zext i16 %32 to i32
  %34 = srem i32 %31, %33
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %7, align 2
  br label %13

36:                                               ; preds = %13
  %37 = load i16, i16* %5, align 2
  %38 = zext i16 %37 to i32
  %39 = load %struct.rose_sock*, %struct.rose_sock** %6, align 8
  %40 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %39, i32 0, i32 1
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = icmp eq i32 %38, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %27
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
