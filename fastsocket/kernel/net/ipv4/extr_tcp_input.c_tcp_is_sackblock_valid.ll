; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_is_sackblock_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_is_sackblock_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_sock*, i32, i64, i64)* @tcp_is_sackblock_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_is_sackblock_valid(%struct.tcp_sock* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @after(i64 %10, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @before(i64 %17, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %4
  store i32 0, i32* %5, align 4
  br label %82

22:                                               ; preds = %16
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %25 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @before(i64 %23, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %82

30:                                               ; preds = %22
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @after(i64 %31, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %82

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %43 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41, %38
  store i32 0, i32* %5, align 4
  br label %82

47:                                               ; preds = %41
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %50 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @after(i64 %48, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %82

55:                                               ; preds = %47
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %58 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @before(i64 %56, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  store i32 1, i32* %5, align 4
  br label %82

63:                                               ; preds = %55
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %66 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @after(i64 %64, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %82

71:                                               ; preds = %63
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %75 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = call i32 @before(i64 %72, i64 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %71, %70, %62, %54, %46, %37, %29, %21
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @after(i64, i64) #1

declare dso_local i32 @before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
