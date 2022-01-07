; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_addr_ntoa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/x25/extr_af_x25.c_x25_addr_ntoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x25_address = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x25_addr_ntoa(i8* %0, %struct.x25_address* %1, %struct.x25_address* %2) #0 {
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
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = ashr i32 %14, 0
  %16 = and i32 %15, 15
  store i32 %16, i32* %7, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = ashr i32 %19, 4
  %21 = and i32 %20, 15
  store i32 %21, i32* %8, align 4
  %22 = load %struct.x25_address*, %struct.x25_address** %5, align 8
  %23 = getelementptr inbounds %struct.x25_address, %struct.x25_address* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  %25 = load %struct.x25_address*, %struct.x25_address** %6, align 8
  %26 = getelementptr inbounds %struct.x25_address, %struct.x25_address* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %95, %3
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %32, %33
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %98

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = urem i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = ashr i32 %47, 0
  %49 = and i32 %48, 15
  %50 = add nsw i32 %49, 48
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %9, align 8
  store i8 %51, i8* %52, align 1
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %4, align 8
  br label %66

56:                                               ; preds = %40
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = ashr i32 %59, 4
  %61 = and i32 %60, 15
  %62 = add nsw i32 %61, 48
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %9, align 8
  store i8 %63, i8* %64, align 1
  br label %66

66:                                               ; preds = %56, %44
  br label %94

67:                                               ; preds = %36
  %68 = load i32, i32* %11, align 4
  %69 = urem i32 %68, 2
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = ashr i32 %74, 0
  %76 = and i32 %75, 15
  %77 = add nsw i32 %76, 48
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %10, align 8
  store i8 %78, i8* %79, align 1
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %4, align 8
  br label %93

83:                                               ; preds = %67
  %84 = load i8*, i8** %4, align 8
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = ashr i32 %86, 4
  %88 = and i32 %87, 15
  %89 = add nsw i32 %88, 48
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %10, align 8
  store i8 %90, i8* %91, align 1
  br label %93

93:                                               ; preds = %83, %71
  br label %94

94:                                               ; preds = %93, %66
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %11, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %30

98:                                               ; preds = %30
  %99 = load i8*, i8** %10, align 8
  store i8 0, i8* %99, align 1
  %100 = load i8*, i8** %9, align 8
  store i8 0, i8* %100, align 1
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add i32 %101, %102
  %104 = add i32 %103, 1
  %105 = udiv i32 %104, 2
  %106 = add i32 1, %105
  ret i32 %106
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
