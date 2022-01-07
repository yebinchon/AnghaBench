; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_cypress_m8.c_cypress_buf_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_cypress_m8.c_cypress_buf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cypress_buf = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cypress_buf*, i8*, i32)* @cypress_buf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_buf_get(%struct.cypress_buf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cypress_buf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cypress_buf* %0, %struct.cypress_buf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.cypress_buf*, %struct.cypress_buf** %5, align 8
  %10 = icmp eq %struct.cypress_buf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %91

12:                                               ; preds = %3
  %13 = load %struct.cypress_buf*, %struct.cypress_buf** %5, align 8
  %14 = call i32 @cypress_buf_data_avail(%struct.cypress_buf* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %12
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %91

24:                                               ; preds = %20
  %25 = load %struct.cypress_buf*, %struct.cypress_buf** %5, align 8
  %26 = getelementptr inbounds %struct.cypress_buf, %struct.cypress_buf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cypress_buf*, %struct.cypress_buf** %5, align 8
  %29 = getelementptr inbounds %struct.cypress_buf, %struct.cypress_buf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %27, %30
  %32 = load %struct.cypress_buf*, %struct.cypress_buf** %5, align 8
  %33 = getelementptr inbounds %struct.cypress_buf, %struct.cypress_buf* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sub i32 %31, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %24
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.cypress_buf*, %struct.cypress_buf** %5, align 8
  %42 = getelementptr inbounds %struct.cypress_buf, %struct.cypress_buf* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @memcpy(i8* %40, i32 %43, i32 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load %struct.cypress_buf*, %struct.cypress_buf** %5, align 8
  %51 = getelementptr inbounds %struct.cypress_buf, %struct.cypress_buf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub i32 %53, %54
  %56 = call i32 @memcpy(i8* %49, i32 %52, i32 %55)
  %57 = load %struct.cypress_buf*, %struct.cypress_buf** %5, align 8
  %58 = getelementptr inbounds %struct.cypress_buf, %struct.cypress_buf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = sub i32 %61, %62
  %64 = load %struct.cypress_buf*, %struct.cypress_buf** %5, align 8
  %65 = getelementptr inbounds %struct.cypress_buf, %struct.cypress_buf* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %89

66:                                               ; preds = %24
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.cypress_buf*, %struct.cypress_buf** %5, align 8
  %69 = getelementptr inbounds %struct.cypress_buf, %struct.cypress_buf* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @memcpy(i8* %67, i32 %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.cypress_buf*, %struct.cypress_buf** %5, align 8
  %79 = getelementptr inbounds %struct.cypress_buf, %struct.cypress_buf* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %88

82:                                               ; preds = %66
  %83 = load %struct.cypress_buf*, %struct.cypress_buf** %5, align 8
  %84 = getelementptr inbounds %struct.cypress_buf, %struct.cypress_buf* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cypress_buf*, %struct.cypress_buf** %5, align 8
  %87 = getelementptr inbounds %struct.cypress_buf, %struct.cypress_buf* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %82, %76
  br label %89

89:                                               ; preds = %88, %39
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %23, %11
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @cypress_buf_data_avail(%struct.cypress_buf*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
