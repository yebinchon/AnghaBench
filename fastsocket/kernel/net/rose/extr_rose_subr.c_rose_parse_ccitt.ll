; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_subr.c_rose_parse_ccitt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_subr.c_rose_parse_ccitt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rose_facilities_struct = type { i8, i8, i32, i32 }

@FAC_CCITT_DEST_NSAP = common dso_local global i8 0, align 1
@ROSE_ADDR_LEN = common dso_local global i8 0, align 1
@FAC_CCITT_SRC_NSAP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rose_facilities_struct*, i32)* @rose_parse_ccitt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_parse_ccitt(i8* %0, %struct.rose_facilities_struct* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rose_facilities_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [11 x i8], align 1
  store i8* %0, i8** %4, align 8
  store %struct.rose_facilities_struct* %1, %struct.rose_facilities_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8 0, i8* %8, align 1
  br label %10

10:                                               ; preds = %135, %3
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 192
  switch i32 %14, label %126 [
    i32 0, label %15
    i32 64, label %24
    i32 128, label %33
    i32 192, label %42
  ]

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 2
  store i8* %17, i8** %4, align 8
  %18 = load i8, i8* %8, align 1
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %19, 2
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %8, align 1
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 2
  store i32 %23, i32* %6, align 4
  br label %126

24:                                               ; preds = %10
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  store i8* %26, i8** %4, align 8
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %28, 3
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %8, align 1
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 3
  store i32 %32, i32* %6, align 4
  br label %126

33:                                               ; preds = %10
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 4
  store i8* %35, i8** %4, align 8
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %37, 4
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %8, align 1
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 4
  store i32 %41, i32* %6, align 4
  br label %126

42:                                               ; preds = %10
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %7, align 1
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @FAC_CCITT_DEST_NSAP, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %42
  %53 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %54 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %53, i32 0, i32 0
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 7
  %57 = load i8, i8* @ROSE_ADDR_LEN, align 1
  %58 = call i32 @memcpy(i8* %54, i8* %56, i8 zeroext %57)
  %59 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 12
  %62 = load i8, i8* %7, align 1
  %63 = zext i8 %62 to i32
  %64 = sub nsw i32 %63, 10
  %65 = trunc i32 %64 to i8
  %66 = call i32 @memcpy(i8* %59, i8* %61, i8 zeroext %65)
  %67 = load i8, i8* %7, align 1
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 %68, 10
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %73 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %72, i32 0, i32 3
  %74 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %75 = call i32 @asc2ax(i32* %73, i8* %74)
  br label %76

76:                                               ; preds = %52, %42
  %77 = load i8*, i8** %4, align 8
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @FAC_CCITT_SRC_NSAP, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %76
  %84 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %85 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %84, i32 0, i32 1
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 7
  %88 = load i8, i8* @ROSE_ADDR_LEN, align 1
  %89 = call i32 @memcpy(i8* %85, i8* %87, i8 zeroext %88)
  %90 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 12
  %93 = load i8, i8* %7, align 1
  %94 = zext i8 %93 to i32
  %95 = sub nsw i32 %94, 10
  %96 = trunc i32 %95 to i8
  %97 = call i32 @memcpy(i8* %90, i8* %92, i8 zeroext %96)
  %98 = load i8, i8* %7, align 1
  %99 = zext i8 %98 to i32
  %100 = sub nsw i32 %99, 10
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 %101
  store i8 0, i8* %102, align 1
  %103 = load %struct.rose_facilities_struct*, %struct.rose_facilities_struct** %5, align 8
  %104 = getelementptr inbounds %struct.rose_facilities_struct, %struct.rose_facilities_struct* %103, i32 0, i32 2
  %105 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %106 = call i32 @asc2ax(i32* %104, i8* %105)
  br label %107

107:                                              ; preds = %83, %76
  %108 = load i8, i8* %7, align 1
  %109 = zext i8 %108 to i32
  %110 = add nsw i32 %109, 2
  %111 = load i8*, i8** %4, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %4, align 8
  %114 = load i8, i8* %7, align 1
  %115 = zext i8 %114 to i32
  %116 = add nsw i32 %115, 2
  %117 = load i8, i8* %8, align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %118, %116
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %8, align 1
  %121 = load i8, i8* %7, align 1
  %122 = zext i8 %121 to i32
  %123 = add nsw i32 %122, 2
  %124 = load i32, i32* %6, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %10, %107, %33, %24, %15
  br label %127

127:                                              ; preds = %126
  %128 = load i8*, i8** %4, align 8
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* %6, align 4
  %134 = icmp sgt i32 %133, 0
  br label %135

135:                                              ; preds = %132, %127
  %136 = phi i1 [ false, %127 ], [ %134, %132 ]
  br i1 %136, label %10, label %137

137:                                              ; preds = %135
  %138 = load i8, i8* %8, align 1
  %139 = zext i8 %138 to i32
  ret i32 %139
}

declare dso_local i32 @memcpy(i8*, i8*, i8 zeroext) #1

declare dso_local i32 @asc2ax(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
