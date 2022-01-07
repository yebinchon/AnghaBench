; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_qmi.c_qmi_network_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_qmi.c_qmi_network_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_ctxt = type { i32, i32 }
%struct.qmi_msg = type { i32, i32, i8*, i64, i32, i32 }

@QMUX_OVERHEAD = common dso_local global i32 0, align 4
@QMI_WDS = common dso_local global i32 0, align 4
@QMUX_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qmi_ctxt*, i8*)* @qmi_network_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_network_up(%struct.qmi_ctxt* %0, i8* %1) #0 {
  %3 = alloca %struct.qmi_ctxt*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qmi_msg, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store %struct.qmi_ctxt* %0, %struct.qmi_ctxt** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* @QMUX_OVERHEAD, align 4
  %13 = add nsw i32 96, %12
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %9, align 8
  br label %18

18:                                               ; preds = %31, %2
  %19 = load i8*, i8** %9, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i8*, i8** %9, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %9, align 8
  store i8 0, i8* %28, align 1
  br label %34

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %9, align 8
  br label %18

34:                                               ; preds = %27, %18
  %35 = load i8*, i8** %9, align 8
  store i8* %35, i8** %10, align 8
  br label %36

36:                                               ; preds = %49, %34
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i8*, i8** %10, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  store i8 0, i8* %46, align 1
  br label %52

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %10, align 8
  br label %36

52:                                               ; preds = %45, %36
  %53 = load i8*, i8** %10, align 8
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %67, %52
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 32
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  store i8 0, i8* %64, align 1
  br label %70

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  br label %54

70:                                               ; preds = %63, %54
  %71 = load i32, i32* @QMI_WDS, align 4
  %72 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %7, i32 0, i32 5
  store i32 %71, i32* %72, align 4
  %73 = load %struct.qmi_ctxt*, %struct.qmi_ctxt** %3, align 8
  %74 = getelementptr inbounds %struct.qmi_ctxt, %struct.qmi_ctxt* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %7, i32 0, i32 4
  store i32 %75, i32* %76, align 8
  %77 = load %struct.qmi_ctxt*, %struct.qmi_ctxt** %3, align 8
  %78 = getelementptr inbounds %struct.qmi_ctxt, %struct.qmi_ctxt* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %7, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %7, i32 0, i32 1
  store i32 32, i32* %81, align 4
  %82 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %7, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @QMUX_HEADER, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %16, i64 %84
  %86 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %7, i32 0, i32 2
  store i8* %85, i8** %86, align 8
  %87 = load %struct.qmi_ctxt*, %struct.qmi_ctxt** %3, align 8
  %88 = getelementptr inbounds %struct.qmi_ctxt, %struct.qmi_ctxt* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 2
  store i32 %90, i32* %88, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 (%struct.qmi_msg*, i32, i32, ...) @qmi_add_tlv(%struct.qmi_msg* %7, i32 20, i32 %92, i8* %93)
  %95 = load i8*, i8** %8, align 8
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %70
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 (%struct.qmi_msg*, i32, i32, ...) @qmi_add_tlv(%struct.qmi_msg* %7, i32 22, i32 %100, i8* %101)
  br label %103

103:                                              ; preds = %98, %70
  %104 = load i8*, i8** %9, align 8
  %105 = load i8, i8* %104, align 1
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %103
  %108 = load i8*, i8** %8, align 8
  %109 = load i8, i8* %108, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  store i8 3, i8* %11, align 1
  %112 = call i32 (%struct.qmi_msg*, i32, i32, ...) @qmi_add_tlv(%struct.qmi_msg* %7, i32 22, i32 1, i8* %11)
  br label %113

113:                                              ; preds = %111, %107
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @strlen(i8* %114)
  %116 = load i8*, i8** %9, align 8
  %117 = call i32 (%struct.qmi_msg*, i32, i32, ...) @qmi_add_tlv(%struct.qmi_msg* %7, i32 23, i32 %115, i8* %116)
  %118 = load i8*, i8** %10, align 8
  %119 = load i8, i8* %118, align 1
  %120 = icmp ne i8 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %113
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 (%struct.qmi_msg*, i32, i32, ...) @qmi_add_tlv(%struct.qmi_msg* %7, i32 24, i32 %123, i8* %124)
  br label %126

126:                                              ; preds = %121, %113
  br label %127

127:                                              ; preds = %126, %103
  %128 = load %struct.qmi_ctxt*, %struct.qmi_ctxt** %3, align 8
  %129 = call i32 @qmi_send(%struct.qmi_ctxt* %128, %struct.qmi_msg* %7)
  %130 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %130)
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @qmi_add_tlv(%struct.qmi_msg*, i32, i32, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @qmi_send(%struct.qmi_ctxt*, %struct.qmi_msg*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
