; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_dma_set_vme_dest_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_tsi148.c_tsi148_dma_set_vme_dest_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSI148_LCSR_DDAT_2eSSTM_160 = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_2eSSTM_267 = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_2eSSTM_320 = common dso_local global i32 0, align 4
@VME_SCT = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_TM_SCT = common dso_local global i32 0, align 4
@VME_BLT = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_TM_BLT = common dso_local global i32 0, align 4
@VME_MBLT = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_TM_MBLT = common dso_local global i32 0, align 4
@VME_2eVME = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_TM_2eVME = common dso_local global i32 0, align 4
@VME_2eSST = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_TM_2eSST = common dso_local global i32 0, align 4
@VME_2eSSTB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Currently not setting Broadcast Select Registers\0A\00", align 1
@TSI148_LCSR_DDAT_TM_2eSSTB = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_DBW_16 = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_DBW_32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid data width\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_AMODE_A16 = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_AMODE_A24 = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_AMODE_A32 = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_AMODE_A64 = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_AMODE_CRCSR = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_AMODE_USER1 = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_AMODE_USER2 = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_AMODE_USER3 = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_AMODE_USER4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid address space\0A\00", align 1
@VME_SUPER = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_SUP = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@TSI148_LCSR_DDAT_PGM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @tsi148_dma_set_vme_dest_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_dma_set_vme_dest_attributes(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = and i32 %10, 143
  switch i32 %11, label %27 [
    i32 141, label %12
    i32 140, label %17
    i32 139, label %22
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* @TSI148_LCSR_DDAT_2eSSTM_160, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, i32* %14, align 4
  br label %27

17:                                               ; preds = %4
  %18 = load i32, i32* @TSI148_LCSR_DDAT_2eSSTM_267, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  br label %27

22:                                               ; preds = %4
  %23 = load i32, i32* @TSI148_LCSR_DDAT_2eSSTM_320, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %4, %22, %17, %12
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @VME_SCT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* @TSI148_LCSR_DDAT_TM_SCT, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @VME_BLT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @TSI148_LCSR_DDAT_TM_BLT, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @VME_MBLT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* @TSI148_LCSR_DDAT_TM_MBLT, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @VME_2eVME, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* @TSI148_LCSR_DDAT_TM_2eVME, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @VME_2eSST, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* @TSI148_LCSR_DDAT_TM_2eSST, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %73
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @VME_2eSSTB, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @TSI148_LCSR_DDAT_TM_2eSSTB, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %77
  %89 = load i32, i32* %9, align 4
  switch i32 %89, label %100 [
    i32 133, label %90
    i32 132, label %95
  ]

90:                                               ; preds = %88
  %91 = load i32, i32* @TSI148_LCSR_DDAT_DBW_16, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %104

95:                                               ; preds = %88
  %96 = load i32, i32* @TSI148_LCSR_DDAT_DBW_32, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  br label %104

100:                                              ; preds = %88
  %101 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %176

104:                                              ; preds = %95, %90
  %105 = load i32, i32* %7, align 4
  switch i32 %105, label %151 [
    i32 138, label %106
    i32 137, label %111
    i32 136, label %116
    i32 135, label %121
    i32 134, label %126
    i32 131, label %131
    i32 130, label %136
    i32 129, label %141
    i32 128, label %146
  ]

106:                                              ; preds = %104
  %107 = load i32, i32* @TSI148_LCSR_DDAT_AMODE_A16, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %155

111:                                              ; preds = %104
  %112 = load i32, i32* @TSI148_LCSR_DDAT_AMODE_A24, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 4
  br label %155

116:                                              ; preds = %104
  %117 = load i32, i32* @TSI148_LCSR_DDAT_AMODE_A32, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %117
  store i32 %120, i32* %118, align 4
  br label %155

121:                                              ; preds = %104
  %122 = load i32, i32* @TSI148_LCSR_DDAT_AMODE_A64, align 4
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %122
  store i32 %125, i32* %123, align 4
  br label %155

126:                                              ; preds = %104
  %127 = load i32, i32* @TSI148_LCSR_DDAT_AMODE_CRCSR, align 4
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %127
  store i32 %130, i32* %128, align 4
  br label %155

131:                                              ; preds = %104
  %132 = load i32, i32* @TSI148_LCSR_DDAT_AMODE_USER1, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %132
  store i32 %135, i32* %133, align 4
  br label %155

136:                                              ; preds = %104
  %137 = load i32, i32* @TSI148_LCSR_DDAT_AMODE_USER2, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %137
  store i32 %140, i32* %138, align 4
  br label %155

141:                                              ; preds = %104
  %142 = load i32, i32* @TSI148_LCSR_DDAT_AMODE_USER3, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %142
  store i32 %145, i32* %143, align 4
  br label %155

146:                                              ; preds = %104
  %147 = load i32, i32* @TSI148_LCSR_DDAT_AMODE_USER4, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %147
  store i32 %150, i32* %148, align 4
  br label %155

151:                                              ; preds = %104
  %152 = call i32 @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %5, align 4
  br label %176

155:                                              ; preds = %146, %141, %136, %131, %126, %121, %116, %111, %106
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @VME_SUPER, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load i32, i32* @TSI148_LCSR_DDAT_SUP, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %161
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %160, %155
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @VME_PROG, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load i32, i32* @TSI148_LCSR_DDAT_PGM, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %171
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %170, %165
  store i32 0, i32* %5, align 4
  br label %176

176:                                              ; preds = %175, %151, %100
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
