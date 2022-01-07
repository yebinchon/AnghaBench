; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_asn1.c_asn1_length_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_asn1.c_asn1_length_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.asn1_ctx*, i32*, i32*)* @asn1_length_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @asn1_length_decode(%struct.asn1_ctx* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.asn1_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.asn1_ctx* %0, %struct.asn1_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.asn1_ctx*, %struct.asn1_ctx** %5, align 8
  %11 = call i32 @asn1_octet_decode(%struct.asn1_ctx* %10, i8* %8)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i8 0, i8* %4, align 1
  br label %70

14:                                               ; preds = %3
  %15 = load i8, i8* %8, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 128
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  store i32 0, i32* %19, align 4
  br label %57

20:                                               ; preds = %14
  %21 = load i32*, i32** %6, align 8
  store i32 1, i32* %21, align 4
  %22 = load i8, i8* %8, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp slt i32 %23, 128
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i8, i8* %8, align 1
  %27 = zext i8 %26 to i32
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %56

29:                                               ; preds = %20
  %30 = load i8, i8* %8, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 127
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %9, align 1
  %34 = load i32*, i32** %7, align 8
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %44, %29
  %36 = load i8, i8* %9, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load %struct.asn1_ctx*, %struct.asn1_ctx** %5, align 8
  %41 = call i32 @asn1_octet_decode(%struct.asn1_ctx* %40, i8* %8)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i8 0, i8* %4, align 1
  br label %70

44:                                               ; preds = %39
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  store i32 %47, i32* %45, align 4
  %48 = load i8, i8* %8, align 1
  %49 = zext i8 %48 to i32
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load i8, i8* %9, align 1
  %54 = add i8 %53, -1
  store i8 %54, i8* %9, align 1
  br label %35

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55, %25
  br label %57

57:                                               ; preds = %56, %18
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.asn1_ctx*, %struct.asn1_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.asn1_ctx*, %struct.asn1_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.asn1_ctx, %struct.asn1_ctx* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub i32 %62, %65
  %67 = icmp ugt i32 %59, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  store i8 0, i8* %4, align 1
  br label %70

69:                                               ; preds = %57
  store i8 1, i8* %4, align 1
  br label %70

70:                                               ; preds = %69, %68, %43, %13
  %71 = load i8, i8* %4, align 1
  ret i8 %71
}

declare dso_local i32 @asn1_octet_decode(%struct.asn1_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
