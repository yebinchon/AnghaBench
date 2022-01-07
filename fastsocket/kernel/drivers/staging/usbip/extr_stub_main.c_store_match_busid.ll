; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_main.c_store_match_busid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_main.c_store_match_busid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }

@BUSID_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"add \00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"add busid %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"del \00", align 1
@ENODEV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"del busid %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_driver*, i8*, i64)* @store_match_busid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_match_busid(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device_driver* %0, %struct.device_driver** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @BUSID_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %16, 5
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %65

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  %24 = load i32, i32* @BUSID_SIZE, align 4
  %25 = call i32 @strnlen(i8* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @BUSID_SIZE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %65

32:                                               ; preds = %21
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 4
  %35 = load i32, i32* @BUSID_SIZE, align 4
  %36 = call i32 @strncpy(i8* %15, i8* %34, i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %32
  %41 = call i64 @add_match_busid(i8* %15)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* @ENOMEM, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %65

46:                                               ; preds = %40
  %47 = call i32 @usbip_udbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %65

49:                                               ; preds = %32
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strncmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = call i64 @del_match_busid(i8* %15)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* @ENODEV, align 8
  %58 = sub i64 0, %57
  store i64 %58, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %65

59:                                               ; preds = %53
  %60 = call i32 @usbip_udbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %15)
  %61 = load i64, i64* %7, align 8
  store i64 %61, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %65

62:                                               ; preds = %49
  %63 = load i64, i64* @EINVAL, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %4, align 8
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %62, %59, %56, %46, %43, %29, %18
  %66 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strnlen(i8*, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @add_match_busid(i8*) #2

declare dso_local i32 @usbip_udbg(i8*, i8*) #2

declare dso_local i64 @del_match_busid(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
