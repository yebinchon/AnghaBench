; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_dump_vpd_ident.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_dump_vpd_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_vpd = type { i32, i8* }

@VPD_TMP_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"T10 VPD Binary Device Identifier: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"T10 VPD ASCII Device Identifier: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"T10 VPD UTF-8 Device Identifier: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"T10 VPD Device Identifier encoding unsupported: 0x%02x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_dump_vpd_ident(%struct.t10_vpd* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.t10_vpd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.t10_vpd* %0, %struct.t10_vpd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @VPD_TMP_BUF_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @VPD_TMP_BUF_SIZE, align 4
  %15 = call i32 @memset(i8* %13, i32 0, i32 %14)
  %16 = load %struct.t10_vpd*, %struct.t10_vpd** %4, align 8
  %17 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %40 [
    i32 1, label %19
    i32 2, label %26
    i32 3, label %33
  ]

19:                                               ; preds = %3
  %20 = trunc i64 %11 to i32
  %21 = load %struct.t10_vpd*, %struct.t10_vpd** %4, align 8
  %22 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = call i32 @snprintf(i8* %13, i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %47

26:                                               ; preds = %3
  %27 = trunc i64 %11 to i32
  %28 = load %struct.t10_vpd*, %struct.t10_vpd** %4, align 8
  %29 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = call i32 @snprintf(i8* %13, i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %47

33:                                               ; preds = %3
  %34 = trunc i64 %11 to i32
  %35 = load %struct.t10_vpd*, %struct.t10_vpd** %4, align 8
  %36 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = call i32 @snprintf(i8* %13, i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %47

40:                                               ; preds = %3
  %41 = load %struct.t10_vpd*, %struct.t10_vpd** %4, align 8
  %42 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %40, %33, %26, %19
  %48 = load i8*, i8** %5, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @strncpy(i8* %51, i8* %13, i32 %52)
  br label %56

54:                                               ; preds = %47
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %13)
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %58)
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
