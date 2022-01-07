; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_rpn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_rpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.rfcomm_hdr = type { i8*, i32, i8* }
%struct.rfcomm_mcc = type { i8*, i32 }
%struct.rfcomm_rpn = type { i32, i8*, i8*, i8*, i32, i8*, i8* }

@.str = private unnamed_addr constant [111 x i8] c"%p cr %d dlci %d bit_r 0x%x data_b 0x%x stop_b 0x%x parity 0x%x flwc_s 0x%x xon_c 0x%x xoff_c 0x%x p_mask 0x%x\00", align 1
@RFCOMM_UIH = common dso_local global i32 0, align 4
@RFCOMM_RPN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rfcomm_send_rpn(%struct.rfcomm_session* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i32 %10) #0 {
  %12 = alloca %struct.rfcomm_session*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.rfcomm_hdr*, align 8
  %24 = alloca %struct.rfcomm_mcc*, align 8
  %25 = alloca %struct.rfcomm_rpn*, align 8
  %26 = alloca [16 x i8*], align 16
  %27 = alloca i8**, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %12, align 8
  store i32 %1, i32* %13, align 4
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  store i32 %10, i32* %22, align 4
  %28 = getelementptr inbounds [16 x i8*], [16 x i8*]* %26, i64 0, i64 0
  store i8** %28, i8*** %27, align 8
  %29 = load %struct.rfcomm_session*, %struct.rfcomm_session** %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i8*, i8** %14, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = load i8*, i8** %18, align 8
  %36 = load i8*, i8** %19, align 8
  %37 = load i8*, i8** %20, align 8
  %38 = load i8*, i8** %21, align 8
  %39 = load i32, i32* %22, align 4
  %40 = call i32 @BT_DBG(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %29, i32 %30, i8* %31, i8* %32, i8* %33, i8* %34, i8* %35, i8* %36, i8* %37, i8* %38, i32 %39)
  %41 = load i8**, i8*** %27, align 8
  %42 = bitcast i8** %41 to i8*
  %43 = bitcast i8* %42 to %struct.rfcomm_hdr*
  store %struct.rfcomm_hdr* %43, %struct.rfcomm_hdr** %23, align 8
  %44 = load i8**, i8*** %27, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 24
  store i8** %45, i8*** %27, align 8
  %46 = load %struct.rfcomm_session*, %struct.rfcomm_session** %12, align 8
  %47 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @__addr(i32 %48, i8* null)
  %50 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %23, align 8
  %51 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @RFCOMM_UIH, align 4
  %53 = call i32 @__ctrl(i32 %52, i32 0)
  %54 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %23, align 8
  %55 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = call i8* @__len8(i32 72)
  %57 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %23, align 8
  %58 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load i8**, i8*** %27, align 8
  %60 = bitcast i8** %59 to i8*
  %61 = bitcast i8* %60 to %struct.rfcomm_mcc*
  store %struct.rfcomm_mcc* %61, %struct.rfcomm_mcc** %24, align 8
  %62 = load i8**, i8*** %27, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 16
  store i8** %63, i8*** %27, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @RFCOMM_RPN, align 4
  %66 = call i32 @__mcc_type(i32 %64, i32 %65)
  %67 = load %struct.rfcomm_mcc*, %struct.rfcomm_mcc** %24, align 8
  %68 = getelementptr inbounds %struct.rfcomm_mcc, %struct.rfcomm_mcc* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = call i8* @__len8(i32 56)
  %70 = load %struct.rfcomm_mcc*, %struct.rfcomm_mcc** %24, align 8
  %71 = getelementptr inbounds %struct.rfcomm_mcc, %struct.rfcomm_mcc* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load i8**, i8*** %27, align 8
  %73 = bitcast i8** %72 to i8*
  %74 = bitcast i8* %73 to %struct.rfcomm_rpn*
  store %struct.rfcomm_rpn* %74, %struct.rfcomm_rpn** %25, align 8
  %75 = load i8**, i8*** %27, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 56
  store i8** %76, i8*** %27, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = call i8* @__addr(i32 1, i8* %77)
  %79 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %25, align 8
  %80 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %25, align 8
  %83 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = load i8*, i8** %18, align 8
  %87 = call i32 @__rpn_line_settings(i8* %84, i8* %85, i8* %86)
  %88 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %25, align 8
  %89 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load i8*, i8** %19, align 8
  %91 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %25, align 8
  %92 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %20, align 8
  %94 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %25, align 8
  %95 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** %21, align 8
  %97 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %25, align 8
  %98 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* %22, align 4
  %100 = call i32 @cpu_to_le16(i32 %99)
  %101 = load %struct.rfcomm_rpn*, %struct.rfcomm_rpn** %25, align 8
  %102 = getelementptr inbounds %struct.rfcomm_rpn, %struct.rfcomm_rpn* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = getelementptr inbounds [16 x i8*], [16 x i8*]* %26, i64 0, i64 0
  %104 = call i8* @__fcs(i8** %103)
  %105 = load i8**, i8*** %27, align 8
  store i8* %104, i8** %105, align 8
  %106 = load i8**, i8*** %27, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i32 1
  store i8** %107, i8*** %27, align 8
  %108 = load %struct.rfcomm_session*, %struct.rfcomm_session** %12, align 8
  %109 = getelementptr inbounds [16 x i8*], [16 x i8*]* %26, i64 0, i64 0
  %110 = load i8**, i8*** %27, align 8
  %111 = getelementptr inbounds [16 x i8*], [16 x i8*]* %26, i64 0, i64 0
  %112 = ptrtoint i8** %110 to i64
  %113 = ptrtoint i8** %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @rfcomm_send_frame(%struct.rfcomm_session* %108, i8** %109, i32 %116)
  ret i32 %117
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i8* @__addr(i32, i8*) #1

declare dso_local i32 @__ctrl(i32, i32) #1

declare dso_local i8* @__len8(i32) #1

declare dso_local i32 @__mcc_type(i32, i32) #1

declare dso_local i32 @__rpn_line_settings(i8*, i8*, i8*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @__fcs(i8**) #1

declare dso_local i32 @rfcomm_send_frame(%struct.rfcomm_session*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
