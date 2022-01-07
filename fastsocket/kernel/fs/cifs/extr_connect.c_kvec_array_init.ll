; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_kvec_array_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_kvec_array_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvec = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvec*, %struct.kvec*, i32, i64)* @kvec_array_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvec_array_init(%struct.kvec* %0, %struct.kvec* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.kvec*, align 8
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.kvec* %0, %struct.kvec** %5, align 8
  store %struct.kvec* %1, %struct.kvec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %46, %4
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load %struct.kvec*, %struct.kvec** %6, align 8
  %16 = getelementptr inbounds %struct.kvec, %struct.kvec* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i1 [ true, %11 ], [ %19, %14 ]
  br i1 %21, label %22, label %47

22:                                               ; preds = %20
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.kvec*, %struct.kvec** %6, align 8
  %25 = getelementptr inbounds %struct.kvec, %struct.kvec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @min(i64 %23, i64 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %8, align 8
  %31 = sub i64 %30, %29
  store i64 %31, i64* %8, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %9, align 8
  %36 = load %struct.kvec*, %struct.kvec** %6, align 8
  %37 = getelementptr inbounds %struct.kvec, %struct.kvec* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %22
  %42 = load %struct.kvec*, %struct.kvec** %6, align 8
  %43 = getelementptr inbounds %struct.kvec, %struct.kvec* %42, i32 1
  store %struct.kvec* %43, %struct.kvec** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, -1
  store i32 %45, i32* %7, align 4
  store i64 0, i64* %9, align 8
  br label %46

46:                                               ; preds = %41, %22
  br label %11

47:                                               ; preds = %20
  %48 = load %struct.kvec*, %struct.kvec** %5, align 8
  %49 = load %struct.kvec*, %struct.kvec** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = mul i64 16, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(%struct.kvec* %48, %struct.kvec* %49, i32 %53)
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.kvec*, %struct.kvec** %5, align 8
  %57 = getelementptr inbounds %struct.kvec, %struct.kvec* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.kvec*, %struct.kvec** %5, align 8
  %62 = getelementptr inbounds %struct.kvec, %struct.kvec* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @memcpy(%struct.kvec*, %struct.kvec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
