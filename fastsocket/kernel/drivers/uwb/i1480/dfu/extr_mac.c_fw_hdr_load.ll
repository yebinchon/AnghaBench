; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_mac.c_fw_hdr_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/dfu/extr_mac.c_fw_hdr_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480 = type { i32 }
%struct.fw_hdr = type { i64, i32*, i8*, i32* }

@.str = private unnamed_addr constant [64 x i8] c"fw hdr #%u/%zu: EOF reached in header at offset %zu, limit %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"fw hdr #%u/%zu: EOF reached in data; chunk too long (%zu bytes), only %zu left\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i1480*, %struct.fw_hdr*, i32, i8*, i32*, i32*)* @fw_hdr_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_hdr_load(%struct.i1480* %0, %struct.fw_hdr* %1, i32 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.i1480*, align 8
  %9 = alloca %struct.fw_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.i1480* %0, %struct.i1480** %8, align 8
  store %struct.fw_hdr* %1, %struct.fw_hdr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = load i8*, i8** %11, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  store i64 %21, i64* %14, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = load i32*, i32** %12, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = ptrtoint i8* %23 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  store i64 %28, i64* %15, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32*, i32** %13, align 8
  %32 = icmp ugt i32* %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %6
  %34 = load %struct.i1480*, %struct.i1480** %8, align 8
  %35 = getelementptr inbounds %struct.i1480, %struct.i1480* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i64, i64* %14, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8*, i8** %11, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** %13, align 8
  %48 = bitcast i32* %47 to i8*
  %49 = load i8*, i8** %11, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %38, i32 %46, i64 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %95

56:                                               ; preds = %6
  %57 = load %struct.fw_hdr*, %struct.fw_hdr** %9, align 8
  %58 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %57, i32 0, i32 3
  store i32* null, i32** %58, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %12, align 8
  %61 = load i32, i32* %59, align 4
  %62 = call i8* @le32_to_cpu(i32 %61)
  %63 = load %struct.fw_hdr*, %struct.fw_hdr** %9, align 8
  %64 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %12, align 8
  %67 = load i32, i32* %65, align 4
  %68 = call i8* @le32_to_cpu(i32 %67)
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.fw_hdr*, %struct.fw_hdr** %9, align 8
  %71 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load %struct.fw_hdr*, %struct.fw_hdr** %9, align 8
  %74 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %73, i32 0, i32 1
  store i32* %72, i32** %74, align 8
  %75 = load %struct.fw_hdr*, %struct.fw_hdr** %9, align 8
  %76 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %15, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %56
  %81 = load %struct.i1480*, %struct.i1480** %8, align 8
  %82 = getelementptr inbounds %struct.i1480, %struct.i1480* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i64, i64* %14, align 8
  %86 = load %struct.fw_hdr*, %struct.fw_hdr** %9, align 8
  %87 = getelementptr inbounds %struct.fw_hdr, %struct.fw_hdr* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %84, i64 %85, i32 %89, i64 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %7, align 4
  br label %95

94:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %94, %80, %33
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @dev_err(i32, i8*, i32, i64, i32, i64) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
