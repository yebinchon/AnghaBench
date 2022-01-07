; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s526.c_s526_gpct_winsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s526.c_s526_gpct_winsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32*, i32 }
%union.cmReg = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"s526: GPCT_INSN_WRITE on channel %d\0A\00", align 1
@REG_C0M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"s526: Counter Mode Register: %x\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"S526: INSN_WRITE: PM\0A\00", align 1
@REG_C0H = common dso_local global i32 0, align 4
@REG_C0L = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"S526: INSN_WRITE: SPG\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"S526: INSN_WRITE: PTG\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"s526: INSN_WRITE: PTG: Problem with Pulse params -> %d %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"s526: INSN_WRITE: Functionality %d not implemented yet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @s526_gpct_winsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s526_gpct_winsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca %union.cmReg, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @CR_CHAN(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @REG_C0M, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @ADDR_CHAN_REG(i32 %19, i32 %20)
  %22 = call i32 @inw(i32 %21)
  %23 = bitcast %union.cmReg* %12 to i32*
  store i32 %22, i32* %23, align 4
  %24 = bitcast %union.cmReg* %12 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %156 [
    i32 130, label %35
    i32 128, label %54
    i32 129, label %73
  ]

35:                                               ; preds = %4
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = lshr i32 %38, 16
  %40 = and i32 65535, %39
  %41 = trunc i32 %40 to i16
  %42 = load i32, i32* @REG_C0H, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @ADDR_CHAN_REG(i32 %42, i32 %43)
  %45 = call i32 @outw(i16 signext %41, i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 65535, %47
  %49 = trunc i32 %48 to i16
  %50 = load i32, i32* @REG_C0L, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ADDR_CHAN_REG(i32 %50, i32 %51)
  %53 = call i32 @outw(i16 signext %49, i32 %52)
  br label %168

54:                                               ; preds = %4
  %55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = lshr i32 %57, 16
  %59 = and i32 65535, %58
  %60 = trunc i32 %59 to i16
  %61 = load i32, i32* @REG_C0H, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @ADDR_CHAN_REG(i32 %61, i32 %62)
  %64 = call i32 @outw(i16 signext %60, i32 %63)
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = and i32 65535, %66
  %68 = trunc i32 %67 to i16
  %69 = load i32, i32* @REG_C0L, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @ADDR_CHAN_REG(i32 %69, i32 %70)
  %72 = call i32 @outw(i16 signext %68, i32 %71)
  br label %168

73:                                               ; preds = %4
  %74 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %76 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %81 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %79, %84
  br i1 %85, label %86, label %122

86:                                               ; preds = %73
  %87 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %88 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %122

93:                                               ; preds = %86
  %94 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %95 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %98, i32* %107, align 4
  %108 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %109 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 %112, i32* %121, align 4
  br label %136

122:                                              ; preds = %86, %73
  %123 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %124 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %129 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %127, i32 %132)
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %172

136:                                              ; preds = %93
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %137, align 4
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 65535
  %141 = trunc i32 %140 to i16
  store i16 %141, i16* %11, align 2
  %142 = load i16, i16* %11, align 2
  %143 = load i32, i32* @REG_C0H, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @ADDR_CHAN_REG(i32 %143, i32 %144)
  %146 = call i32 @outw(i16 signext %142, i32 %145)
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 65535
  %150 = trunc i32 %149 to i16
  store i16 %150, i16* %11, align 2
  %151 = load i16, i16* %11, align 2
  %152 = load i32, i32* @REG_C0L, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @ADDR_CHAN_REG(i32 %152, i32 %153)
  %155 = call i32 @outw(i16 signext %151, i32 %154)
  br label %168

156:                                              ; preds = %4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %5, align 4
  br label %172

168:                                              ; preds = %136, %54, %35
  %169 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %170 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %168, %156, %122
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @ADDR_CHAN_REG(i32, i32) #1

declare dso_local i32 @outw(i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
