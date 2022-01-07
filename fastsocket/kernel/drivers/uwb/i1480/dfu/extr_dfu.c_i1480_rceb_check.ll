; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_dfu.c_i1480_rceb_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_dfu.c_i1480_rceb_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480 = type { %struct.device* }
%struct.device = type { i32 }
%struct.uwb_rceb = type { i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"%s: unexpected context id 0x%02x (expected 0x%02x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: unexpected event type 0x%02x (expected 0x%02x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"%s: unexpected event 0x%04x (expected 0x%04x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i1480_rceb_check(%struct.i1480* %0, %struct.uwb_rceb* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.i1480*, align 8
  %8 = alloca %struct.uwb_rceb*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  store %struct.i1480* %0, %struct.i1480** %7, align 8
  store %struct.uwb_rceb* %1, %struct.uwb_rceb** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.i1480*, %struct.i1480** %7, align 8
  %16 = getelementptr inbounds %struct.i1480, %struct.i1480* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %14, align 8
  %18 = load %struct.uwb_rceb*, %struct.uwb_rceb** %8, align 8
  %19 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %6
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.device*, %struct.device** %14, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.uwb_rceb*, %struct.uwb_rceb** %8, align 8
  %30 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %26, %23
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %34, %6
  %38 = load %struct.uwb_rceb*, %struct.uwb_rceb** %8, align 8
  %39 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.device*, %struct.device** %14, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.uwb_rceb*, %struct.uwb_rceb** %8, align 8
  %50 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %43
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %54, %37
  %58 = load %struct.uwb_rceb*, %struct.uwb_rceb** %8, align 8
  %59 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = load i8*, i8** %9, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.device*, %struct.device** %14, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.uwb_rceb*, %struct.uwb_rceb** %8, align 8
  %71 = getelementptr inbounds %struct.uwb_rceb, %struct.uwb_rceb* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %69, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %67, %64
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %76, %57
  %80 = load i32, i32* %13, align 4
  ret i32 %80
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
