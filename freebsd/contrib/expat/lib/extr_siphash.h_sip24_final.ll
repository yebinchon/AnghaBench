; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_siphash.h_sip24_final.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_siphash.h_sip24_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siphash = type { i8, i32, i32, i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siphash*)* @sip24_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sip24_final(%struct.siphash* %0) #0 {
  %2 = alloca %struct.siphash*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.siphash* %0, %struct.siphash** %2, align 8
  %5 = load %struct.siphash*, %struct.siphash** %2, align 8
  %6 = getelementptr inbounds %struct.siphash, %struct.siphash* %5, i32 0, i32 6
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.siphash*, %struct.siphash** %2, align 8
  %9 = getelementptr inbounds %struct.siphash, %struct.siphash* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = ptrtoint i32* %7 to i64
  %12 = ptrtoint i32* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %3, align 1
  %16 = load %struct.siphash*, %struct.siphash** %2, align 8
  %17 = getelementptr inbounds %struct.siphash, %struct.siphash* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 8
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* %3, align 1
  %21 = sext i8 %20 to i32
  %22 = add nsw i32 %19, %21
  %23 = shl i32 %22, 56
  store i32 %23, i32* %4, align 4
  %24 = load i8, i8* %3, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %90 [
    i32 7, label %26
    i32 6, label %35
    i32 5, label %44
    i32 4, label %53
    i32 3, label %62
    i32 2, label %71
    i32 1, label %80
    i32 0, label %89
  ]

26:                                               ; preds = %1
  %27 = load %struct.siphash*, %struct.siphash** %2, align 8
  %28 = getelementptr inbounds %struct.siphash, %struct.siphash* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 6
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 48
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %1, %26
  %36 = load %struct.siphash*, %struct.siphash** %2, align 8
  %37 = getelementptr inbounds %struct.siphash, %struct.siphash* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 5
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 40
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %1, %35
  %45 = load %struct.siphash*, %struct.siphash** %2, align 8
  %46 = getelementptr inbounds %struct.siphash, %struct.siphash* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 32
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %1, %44
  %54 = load %struct.siphash*, %struct.siphash** %2, align 8
  %55 = getelementptr inbounds %struct.siphash, %struct.siphash* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 24
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %1, %53
  %63 = load %struct.siphash*, %struct.siphash** %2, align 8
  %64 = getelementptr inbounds %struct.siphash, %struct.siphash* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 16
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %1, %62
  %72 = load %struct.siphash*, %struct.siphash** %2, align 8
  %73 = getelementptr inbounds %struct.siphash, %struct.siphash* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 8
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %1, %71
  %81 = load %struct.siphash*, %struct.siphash** %2, align 8
  %82 = getelementptr inbounds %struct.siphash, %struct.siphash* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 0
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %1, %80
  br label %90

90:                                               ; preds = %1, %89
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.siphash*, %struct.siphash** %2, align 8
  %93 = getelementptr inbounds %struct.siphash, %struct.siphash* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.siphash*, %struct.siphash** %2, align 8
  %97 = call i32 @sip_round(%struct.siphash* %96, i32 2)
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.siphash*, %struct.siphash** %2, align 8
  %100 = getelementptr inbounds %struct.siphash, %struct.siphash* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = xor i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.siphash*, %struct.siphash** %2, align 8
  %104 = getelementptr inbounds %struct.siphash, %struct.siphash* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %105, 255
  store i32 %106, i32* %104, align 4
  %107 = load %struct.siphash*, %struct.siphash** %2, align 8
  %108 = call i32 @sip_round(%struct.siphash* %107, i32 4)
  %109 = load %struct.siphash*, %struct.siphash** %2, align 8
  %110 = getelementptr inbounds %struct.siphash, %struct.siphash* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.siphash*, %struct.siphash** %2, align 8
  %113 = getelementptr inbounds %struct.siphash, %struct.siphash* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = xor i32 %111, %114
  %116 = load %struct.siphash*, %struct.siphash** %2, align 8
  %117 = getelementptr inbounds %struct.siphash, %struct.siphash* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = xor i32 %115, %118
  %120 = load %struct.siphash*, %struct.siphash** %2, align 8
  %121 = getelementptr inbounds %struct.siphash, %struct.siphash* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = xor i32 %119, %122
  ret i32 %123
}

declare dso_local i32 @sip_round(%struct.siphash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
