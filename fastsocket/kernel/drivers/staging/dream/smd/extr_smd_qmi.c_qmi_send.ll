; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_qmi.c_qmi_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_qmi.c_qmi_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_ctxt = type { i32 }
%struct.qmi_msg = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"send\00", align 1
@QMI_CTL = common dso_local global i32 0, align 4
@QMUX_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qmi_ctxt*, %struct.qmi_msg*)* @qmi_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_send(%struct.qmi_ctxt* %0, %struct.qmi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qmi_ctxt*, align 8
  %5 = alloca %struct.qmi_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qmi_ctxt* %0, %struct.qmi_ctxt** %4, align 8
  store %struct.qmi_msg* %1, %struct.qmi_msg** %5, align 8
  %10 = load %struct.qmi_msg*, %struct.qmi_msg** %5, align 8
  %11 = call i32 @qmi_dump_msg(%struct.qmi_msg* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.qmi_msg*, %struct.qmi_msg** %5, align 8
  %13 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @QMI_CTL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @QMUX_HEADER, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @QMUX_HEADER, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.qmi_msg*, %struct.qmi_msg** %5, align 8
  %25 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add i32 %23, %26
  %28 = sub i32 %27, 1
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ugt i32 %29, 65535
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %129

32:                                               ; preds = %22
  %33 = load %struct.qmi_msg*, %struct.qmi_msg** %5, align 8
  %34 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  store i8 1, i8* %40, align 1
  %42 = load i32, i32* %8, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  store i8 %43, i8* %44, align 1
  %46 = load i32, i32* %8, align 4
  %47 = lshr i32 %46, 8
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  store i8 %48, i8* %49, align 1
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  store i8 0, i8* %51, align 1
  %53 = load %struct.qmi_msg*, %struct.qmi_msg** %5, align 8
  %54 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  store i8 %56, i8* %57, align 1
  %59 = load %struct.qmi_msg*, %struct.qmi_msg** %5, align 8
  %60 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  store i8 %62, i8* %63, align 1
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  store i8 0, i8* %65, align 1
  %67 = load %struct.qmi_msg*, %struct.qmi_msg** %5, align 8
  %68 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %6, align 8
  store i8 %70, i8* %71, align 1
  %73 = load %struct.qmi_msg*, %struct.qmi_msg** %5, align 8
  %74 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @QMI_CTL, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %32
  %79 = load %struct.qmi_msg*, %struct.qmi_msg** %5, align 8
  %80 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 8
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  store i8 %83, i8* %84, align 1
  br label %86

86:                                               ; preds = %78, %32
  %87 = load %struct.qmi_msg*, %struct.qmi_msg** %5, align 8
  %88 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %6, align 8
  store i8 %90, i8* %91, align 1
  %93 = load %struct.qmi_msg*, %struct.qmi_msg** %5, align 8
  %94 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 8
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %6, align 8
  store i8 %97, i8* %98, align 1
  %100 = load %struct.qmi_msg*, %struct.qmi_msg** %5, align 8
  %101 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 8
  store i8 %103, i8* %104, align 1
  %106 = load %struct.qmi_msg*, %struct.qmi_msg** %5, align 8
  %107 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = lshr i32 %108, 8
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %6, align 8
  store i8 %110, i8* %111, align 1
  %113 = load %struct.qmi_ctxt*, %struct.qmi_ctxt** %4, align 8
  %114 = getelementptr inbounds %struct.qmi_ctxt, %struct.qmi_ctxt* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.qmi_msg*, %struct.qmi_msg** %5, align 8
  %117 = getelementptr inbounds %struct.qmi_msg, %struct.qmi_msg* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = sub i32 %118, %119
  %121 = load i32, i32* %8, align 4
  %122 = add i32 %121, 1
  %123 = call i32 @smd_write(i32 %115, i32 %120, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %86
  store i32 -1, i32* %3, align 4
  br label %129

128:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %127, %31
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @qmi_dump_msg(%struct.qmi_msg*, i8*) #1

declare dso_local i32 @smd_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
