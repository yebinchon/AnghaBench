; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_buf_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_u_serial.c_gs_buf_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_buf = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_buf*, i8*, i32)* @gs_buf_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_buf_put(%struct.gs_buf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gs_buf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gs_buf* %0, %struct.gs_buf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.gs_buf*, %struct.gs_buf** %5, align 8
  %10 = call i32 @gs_buf_space_avail(%struct.gs_buf* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %87

20:                                               ; preds = %16
  %21 = load %struct.gs_buf*, %struct.gs_buf** %5, align 8
  %22 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.gs_buf*, %struct.gs_buf** %5, align 8
  %25 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %23, %26
  %28 = load %struct.gs_buf*, %struct.gs_buf** %5, align 8
  %29 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %27, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %20
  %36 = load %struct.gs_buf*, %struct.gs_buf** %5, align 8
  %37 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @memcpy(i32 %38, i8* %39, i32 %40)
  %42 = load %struct.gs_buf*, %struct.gs_buf** %5, align 8
  %43 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sub i32 %49, %50
  %52 = call i32 @memcpy(i32 %44, i8* %48, i32 %51)
  %53 = load %struct.gs_buf*, %struct.gs_buf** %5, align 8
  %54 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = sub i32 %57, %58
  %60 = load %struct.gs_buf*, %struct.gs_buf** %5, align 8
  %61 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %85

62:                                               ; preds = %20
  %63 = load %struct.gs_buf*, %struct.gs_buf** %5, align 8
  %64 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @memcpy(i32 %65, i8* %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %62
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.gs_buf*, %struct.gs_buf** %5, align 8
  %75 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %84

78:                                               ; preds = %62
  %79 = load %struct.gs_buf*, %struct.gs_buf** %5, align 8
  %80 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.gs_buf*, %struct.gs_buf** %5, align 8
  %83 = getelementptr inbounds %struct.gs_buf, %struct.gs_buf* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %72
  br label %85

85:                                               ; preds = %84, %35
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %19
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @gs_buf_space_avail(%struct.gs_buf*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
