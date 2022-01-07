; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_addr_aton.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_addr_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x25_address = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x25_addr_aton(i8* %0, %struct.x25_address* %1, %struct.x25_address* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.x25_address*, align 8
  %6 = alloca %struct.x25_address*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.x25_address* %1, %struct.x25_address** %5, align 8
  store %struct.x25_address* %2, %struct.x25_address** %6, align 8
  %12 = load %struct.x25_address*, %struct.x25_address** %5, align 8
  %13 = getelementptr inbounds %struct.x25_address, %struct.x25_address* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %9, align 8
  %15 = load %struct.x25_address*, %struct.x25_address** %6, align 8
  %16 = getelementptr inbounds %struct.x25_address, %struct.x25_address* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %22, 4
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 %24, 0
  %26 = or i32 %23, %25
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  store i8 %27, i8* %28, align 1
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %105, %3
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %32, %33
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %108

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = srem i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %9, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  %49 = sub nsw i32 %48, 48
  %50 = shl i32 %49, 0
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %53, %50
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %51, align 1
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  br label %71

58:                                               ; preds = %40
  %59 = load i8*, i8** %4, align 8
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %9, align 8
  %62 = load i8, i8* %60, align 1
  %63 = sext i8 %62 to i32
  %64 = sub nsw i32 %63, 48
  %65 = shl i32 %64, 4
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %68, %65
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %66, align 1
  br label %71

71:                                               ; preds = %58, %44
  br label %104

72:                                               ; preds = %36
  %73 = load i32, i32* %11, align 4
  %74 = srem i32 %73, 2
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %10, align 8
  %79 = load i8, i8* %77, align 1
  %80 = sext i8 %79 to i32
  %81 = sub nsw i32 %80, 48
  %82 = shl i32 %81, 0
  %83 = load i8*, i8** %4, align 8
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = or i32 %85, %82
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %83, align 1
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %4, align 8
  br label %103

90:                                               ; preds = %72
  %91 = load i8*, i8** %4, align 8
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %10, align 8
  %94 = load i8, i8* %92, align 1
  %95 = sext i8 %94 to i32
  %96 = sub nsw i32 %95, 48
  %97 = shl i32 %96, 4
  %98 = load i8*, i8** %4, align 8
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %100, %97
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %98, align 1
  br label %103

103:                                              ; preds = %90, %76
  br label %104

104:                                              ; preds = %103, %71
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %30

108:                                              ; preds = %30
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = add i32 %109, %110
  %112 = add i32 %111, 1
  %113 = udiv i32 %112, 2
  %114 = add i32 1, %113
  ret i32 %114
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
