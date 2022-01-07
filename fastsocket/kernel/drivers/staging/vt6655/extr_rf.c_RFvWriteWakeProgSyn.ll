; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_rf.c_RFvWriteWakeProgSyn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_rf.c_RFvWriteWakeProgSyn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAC_REG_MISCFFNDEX = common dso_local global i64 0, align 8
@CB_MAX_CHANNEL_24G = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CB_AL2230_INIT_SEQ = common dso_local global i32 0, align 4
@MISCFIFO_SYNDATASIZE = common dso_local global i32 0, align 4
@MISCFIFO_SYNDATA_IDX = common dso_local global i32 0, align 4
@dwAL2230InitTable = common dso_local global i32* null, align 8
@dwAL2230ChannelTable0 = common dso_local global i32* null, align 8
@dwAL2230ChannelTable1 = common dso_local global i32* null, align 8
@CB_AL7230_INIT_SEQ = common dso_local global i32 0, align 4
@dwAL7230InitTable = common dso_local global i32* null, align 8
@dwAL7230InitTableAMode = common dso_local global i32* null, align 8
@dwAL7230ChannelTable0 = common dso_local global i32* null, align 8
@dwAL7230ChannelTable1 = common dso_local global i32* null, align 8
@dwAL7230ChannelTable2 = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@MISCFIFO_SYNINFO_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RFvWriteWakeProgSyn(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @MAC_REG_MISCFFNDEX, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @VNSvOutPortW(i64 %13, i32 0)
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %170 [
    i32 131, label %16
    i32 129, label %16
    i32 130, label %76
    i32 128, label %168
  ]

16:                                               ; preds = %3, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @CB_MAX_CHANNEL_24G, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %4, align 4
  br label %181

22:                                               ; preds = %16
  %23 = load i32, i32* @CB_AL2230_INIT_SEQ, align 4
  %24 = add nsw i32 %23, 2
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MISCFIFO_SYNDATASIZE, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %26, %27
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %4, align 4
  br label %181

32:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @CB_AL2230_INIT_SEQ, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* @MISCFIFO_SYNDATA_IDX, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32*, i32** @dwAL2230InitTable, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @MACvSetMISCFifo(i64 %38, i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %33

51:                                               ; preds = %33
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* @MISCFIFO_SYNDATA_IDX, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32*, i32** @dwAL2230ChannelTable0, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @MACvSetMISCFifo(i64 %52, i32 %55, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* @MISCFIFO_SYNDATA_IDX, align 4
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32*, i32** @dwAL2230ChannelTable1, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @MACvSetMISCFifo(i64 %65, i32 %68, i32 %74)
  br label %172

76:                                               ; preds = %3
  %77 = load i32, i32* @CB_AL7230_INIT_SEQ, align 4
  %78 = add nsw i32 %77, 3
  store i32 %78, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @MISCFIFO_SYNDATASIZE, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 %80, %81
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %4, align 4
  br label %181

86:                                               ; preds = %76
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @CB_MAX_CHANNEL_24G, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %86
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %106, %90
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @CB_AL7230_INIT_SEQ, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %91
  %96 = load i64, i64* %5, align 8
  %97 = load i32, i32* @MISCFIFO_SYNDATA_IDX, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32*, i32** @dwAL7230InitTable, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @MACvSetMISCFifo(i64 %96, i32 %99, i32 %104)
  br label %106

106:                                              ; preds = %95
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %91

109:                                              ; preds = %91
  br label %130

110:                                              ; preds = %86
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %126, %110
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @CB_AL7230_INIT_SEQ, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %111
  %116 = load i64, i64* %5, align 8
  %117 = load i32, i32* @MISCFIFO_SYNDATA_IDX, align 4
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32*, i32** @dwAL7230InitTableAMode, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @MACvSetMISCFifo(i64 %116, i32 %119, i32 %124)
  br label %126

126:                                              ; preds = %115
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %111

129:                                              ; preds = %111
  br label %130

130:                                              ; preds = %129, %109
  %131 = load i64, i64* %5, align 8
  %132 = load i32, i32* @MISCFIFO_SYNDATA_IDX, align 4
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32*, i32** @dwAL7230ChannelTable0, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @MACvSetMISCFifo(i64 %131, i32 %134, i32 %140)
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  %144 = load i64, i64* %5, align 8
  %145 = load i32, i32* @MISCFIFO_SYNDATA_IDX, align 4
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32*, i32** @dwAL7230ChannelTable1, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @MACvSetMISCFifo(i64 %144, i32 %147, i32 %153)
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  %157 = load i64, i64* %5, align 8
  %158 = load i32, i32* @MISCFIFO_SYNDATA_IDX, align 4
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %158, %159
  %161 = load i32*, i32** @dwAL7230ChannelTable2, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @MACvSetMISCFifo(i64 %157, i32 %160, i32 %166)
  br label %172

168:                                              ; preds = %3
  %169 = load i32, i32* @TRUE, align 4
  store i32 %169, i32* %4, align 4
  br label %181

170:                                              ; preds = %3
  %171 = load i32, i32* @FALSE, align 4
  store i32 %171, i32* %4, align 4
  br label %181

172:                                              ; preds = %130, %51
  %173 = load i64, i64* %5, align 8
  %174 = load i32, i32* @MISCFIFO_SYNINFO_IDX, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i64 @MAKEWORD(i32 %175, i32 %176)
  %178 = trunc i64 %177 to i32
  %179 = call i32 @MACvSetMISCFifo(i64 %173, i32 %174, i32 %178)
  %180 = load i32, i32* @TRUE, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %172, %170, %168, %84, %30, %20
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @VNSvOutPortW(i64, i32) #1

declare dso_local i32 @MACvSetMISCFifo(i64, i32, i32) #1

declare dso_local i64 @MAKEWORD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
