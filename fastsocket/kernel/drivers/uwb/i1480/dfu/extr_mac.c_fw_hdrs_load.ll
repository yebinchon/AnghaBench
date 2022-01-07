; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_mac.c_fw_hdrs_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_mac.c_fw_hdrs_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480 = type { i32 }
%struct.fw_hdr = type { %struct.fw_hdr*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Cannot allocate fw header for chunk #%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i1480*, %struct.fw_hdr**, i8*, i64)* @fw_hdrs_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_hdrs_load(%struct.i1480* %0, %struct.fw_hdr** %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i1480*, align 8
  %7 = alloca %struct.fw_hdr**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.fw_hdr*, align 8
  %16 = alloca %struct.fw_hdr**, align 8
  store %struct.i1480* %0, %struct.i1480** %6, align 8
  store %struct.fw_hdr** %1, %struct.fw_hdr*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %12, align 8
  %19 = load %struct.fw_hdr**, %struct.fw_hdr*** %7, align 8
  store %struct.fw_hdr** %19, %struct.fw_hdr*** %16, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  %22 = load i64, i64* %9, align 8
  %23 = urem i64 %22, 4
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %89

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = urem i64 %28, 4
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %89

32:                                               ; preds = %26
  %33 = load %struct.fw_hdr**, %struct.fw_hdr*** %7, align 8
  store %struct.fw_hdr* null, %struct.fw_hdr** %33, align 8
  %34 = load i32*, i32** %12, align 8
  store i32* %34, i32** %13, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %14, align 8
  br label %39

39:                                               ; preds = %67, %32
  %40 = load i32*, i32** %13, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = icmp ult i32* %40, %41
  br i1 %42, label %43, label %80

43:                                               ; preds = %39
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.fw_hdr* @kmalloc(i32 16, i32 %46)
  store %struct.fw_hdr* %47, %struct.fw_hdr** %15, align 8
  %48 = load %struct.fw_hdr*, %struct.fw_hdr** %15, align 8
  %49 = icmp eq %struct.fw_hdr* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.i1480*, %struct.i1480** %6, align 8
  %52 = getelementptr inbounds %struct.i1480, %struct.i1480* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %85

56:                                               ; preds = %43
  %57 = load %struct.i1480*, %struct.i1480** %6, align 8
  %58 = load %struct.fw_hdr*, %struct.fw_hdr** %15, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = call i32 @fw_hdr_load(%struct.i1480* %57, %struct.fw_hdr* %58, i32 %59, i8* %60, i32* %61, i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %82

67:                                               ; preds = %56
  %68 = load %struct.fw_hdr*, %struct.fw_hdr** %15, align 8
  %69 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 2, %70
  %72 = load i32*, i32** %13, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 %71
  store i32* %73, i32** %13, align 8
  %74 = load %struct.fw_hdr*, %struct.fw_hdr** %15, align 8
  %75 = load %struct.fw_hdr**, %struct.fw_hdr*** %16, align 8
  store %struct.fw_hdr* %74, %struct.fw_hdr** %75, align 8
  %76 = load %struct.fw_hdr*, %struct.fw_hdr** %15, align 8
  %77 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %76, i32 0, i32 0
  store %struct.fw_hdr** %77, %struct.fw_hdr*** %16, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %39

80:                                               ; preds = %39
  %81 = load %struct.fw_hdr**, %struct.fw_hdr*** %16, align 8
  store %struct.fw_hdr* null, %struct.fw_hdr** %81, align 8
  store i32 0, i32* %5, align 4
  br label %91

82:                                               ; preds = %66
  %83 = load %struct.fw_hdr*, %struct.fw_hdr** %15, align 8
  %84 = call i32 @kfree(%struct.fw_hdr* %83)
  br label %85

85:                                               ; preds = %82, %50
  %86 = load %struct.fw_hdr**, %struct.fw_hdr*** %7, align 8
  %87 = load %struct.fw_hdr*, %struct.fw_hdr** %86, align 8
  %88 = call i32 @fw_hdrs_free(%struct.fw_hdr* %87)
  br label %89

89:                                               ; preds = %85, %31, %25
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %80
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.fw_hdr* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @fw_hdr_load(%struct.i1480*, %struct.fw_hdr*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.fw_hdr*) #1

declare dso_local i32 @fw_hdrs_free(%struct.fw_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
