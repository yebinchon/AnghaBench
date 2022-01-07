; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_cm_get_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_cm_get_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxacru_data = type { i32 }

@CMD_PACKET_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid data length from cm %#x: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"wrong index %#x in response to cm %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxacru_data*, i32, i8**, i32)* @cxacru_cm_get_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxacru_cm_get_array(%struct.cxacru_data* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxacru_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cxacru_data* %0, %struct.cxacru_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @CMD_PACKET_SIZE, align 4
  %19 = sdiv i32 %18, 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %15, align 4
  %24 = sdiv i32 %22, %23
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 %26, 2
  %28 = add nsw i32 %25, %27
  %29 = mul nsw i32 %28, 4
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kmalloc(i32 %30, i32 %31)
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %134

38:                                               ; preds = %4
  %39 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @cxacru_cm(%struct.cxacru_data* %39, i32 %40, i32* null, i32 0, i32* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %130

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = sdiv i32 %48, 4
  store i32 %49, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %128, %47
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %129

54:                                               ; preds = %50
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @le32_to_cpu(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sdiv i32 %70, 2
  %72 = icmp sgt i32 %67, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %66, %54
  %74 = call i64 (...) @printk_ratelimit()
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %78 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @usb_err(i32 %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %73
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %10, align 4
  br label %130

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %116, %86
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %17, align 4
  %90 = icmp ne i32 %88, 0
  br i1 %90, label %91, label %128

91:                                               ; preds = %87
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @le32_to_cpu(i32 %97)
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %91
  %104 = call i64 (...) @printk_ratelimit()
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.cxacru_data*, %struct.cxacru_data** %6, align 8
  %108 = getelementptr inbounds %struct.cxacru_data, %struct.cxacru_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @usb_err(i32 %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %106, %103
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %10, align 4
  br label %130

116:                                              ; preds = %91
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @le32_to_cpu(i32 %122)
  %124 = load i8**, i8*** %8, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  store i8* %123, i8** %127, align 8
  br label %87

128:                                              ; preds = %87
  br label %50

129:                                              ; preds = %50
  store i32 0, i32* %10, align 4
  br label %130

130:                                              ; preds = %129, %113, %83, %46
  %131 = load i32*, i32** %12, align 8
  %132 = call i32 @kfree(i32* %131)
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %130, %35
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @cxacru_cm(%struct.cxacru_data*, i32, i32*, i32, i32*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @usb_err(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
