; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"s626_ai_insn_read: entering\0A\00", align 1
@GSEL_BIPOLAR5V = common dso_local global i64 0, align 8
@GSEL_BIPOLAR10V = common dso_local global i64 0, align 8
@LP_GSEL = common dso_local global i32 0, align 4
@LP_ISEL = common dso_local global i32 0, align 4
@P_GPIO = common dso_local global i32 0, align 4
@GPIO1_HI = common dso_local global i32 0, align 4
@P_PSR = common dso_local global i32 0, align 4
@PSR_GPIO2 = common dso_local global i32 0, align 4
@P_FB_BUFFER1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"s626_ai_insn_read: samples %d, data %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @s626_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @CR_CHAN(i32 %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @CR_RANGE(i32 %20)
  store i64 %21, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %22 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* %10, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  %27 = shl i64 %26, 8
  %28 = load i64, i64* @GSEL_BIPOLAR5V, align 8
  %29 = or i64 %27, %28
  store i64 %29, i64* %11, align 8
  br label %35

30:                                               ; preds = %4
  %31 = load i64, i64* %9, align 8
  %32 = shl i64 %31, 8
  %33 = load i64, i64* @GSEL_BIPOLAR10V, align 8
  %34 = or i64 %32, %33
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %37 = load i32, i32* @LP_GSEL, align 4
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @DEBIwrite(%struct.comedi_device* %36, i32 %37, i64 %38)
  %40 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %41 = load i32, i32* @LP_ISEL, align 4
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @DEBIwrite(%struct.comedi_device* %40, i32 %41, i64 %42)
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %99, %35
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %47 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %102

50:                                               ; preds = %44
  %51 = call i32 @udelay(i32 10)
  %52 = load i32, i32* @P_GPIO, align 4
  %53 = call i32 @RR7146(i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* @P_GPIO, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @GPIO1_HI, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = call i32 @WR7146(i32 %54, i32 %58)
  %60 = load i32, i32* @P_GPIO, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @GPIO1_HI, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = call i32 @WR7146(i32 %60, i32 %64)
  %66 = load i32, i32* @P_GPIO, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @GPIO1_HI, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = call i32 @WR7146(i32 %66, i32 %70)
  %72 = load i32, i32* @P_GPIO, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @GPIO1_HI, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @WR7146(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %84, %50
  %78 = load i32, i32* @P_PSR, align 4
  %79 = call i32 @RR7146(i32 %78)
  %80 = load i32, i32* @PSR_GPIO2, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %77

85:                                               ; preds = %77
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load i32, i32* @P_FB_BUFFER1, align 4
  %90 = call i32 @RR7146(i32 %89)
  %91 = call i32 @s626_ai_reg_to_uint(i32 %90)
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 %91, i32* %96, align 4
  br label %97

97:                                               ; preds = %88, %85
  %98 = call i32 @udelay(i32 4)
  br label %99

99:                                               ; preds = %97
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %44

102:                                              ; preds = %44
  %103 = load i32, i32* @P_GPIO, align 4
  %104 = call i32 @RR7146(i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* @P_GPIO, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @GPIO1_HI, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = call i32 @WR7146(i32 %105, i32 %109)
  %111 = load i32, i32* @P_GPIO, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @GPIO1_HI, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = call i32 @WR7146(i32 %111, i32 %115)
  %117 = load i32, i32* @P_GPIO, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @GPIO1_HI, align 4
  %120 = xor i32 %119, -1
  %121 = and i32 %118, %120
  %122 = call i32 @WR7146(i32 %117, i32 %121)
  %123 = load i32, i32* @P_GPIO, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @GPIO1_HI, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @WR7146(i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %135, %102
  %129 = load i32, i32* @P_PSR, align 4
  %130 = call i32 @RR7146(i32 %129)
  %131 = load i32, i32* @PSR_GPIO2, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %128

136:                                              ; preds = %128
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load i32, i32* @P_FB_BUFFER1, align 4
  %141 = call i32 @RR7146(i32 %140)
  %142 = call i32 @s626_ai_reg_to_uint(i32 %141)
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 %142, i32* %147, align 4
  br label %148

148:                                              ; preds = %139, %136
  %149 = load i32, i32* %13, align 4
  %150 = load i32*, i32** %8, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %155)
  %157 = load i32, i32* %13, align 4
  ret i32 %157
}

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i64 @CR_RANGE(i32) #1

declare dso_local i32 @DEBUG(i8*, ...) #1

declare dso_local i32 @DEBIwrite(%struct.comedi_device*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @RR7146(i32) #1

declare dso_local i32 @WR7146(i32, i32) #1

declare dso_local i32 @s626_ai_reg_to_uint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
