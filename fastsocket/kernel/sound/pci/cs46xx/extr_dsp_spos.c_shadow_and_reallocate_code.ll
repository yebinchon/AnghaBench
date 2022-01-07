; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos.c_shadow_and_reallocate_code.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos.c_shadow_and_reallocate_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WIDE_LADD_INSTR_MASK = common dso_local global i32 0, align 4
@WIDE_INSTR_MASK = common dso_local global i32 0, align 4
@wide_opcodes = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"handle_wideop[1]: %05x:%05x addr %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"handle_wideop[1]: ROM symbol not reallocated\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"handle_wideop:[2] %05x:%05x addr %04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"dsp_spos: %d instructions reallocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_cs46xx*, i32*, i32, i32)* @shadow_and_reallocate_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shadow_and_reallocate_code(%struct.snd_cs46xx* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_cs46xx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dsp_spos_instance*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %21 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %20, i32 0, i32 0
  %22 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %21, align 8
  store %struct.dsp_spos_instance* %22, %struct.dsp_spos_instance** %19, align 8
  %23 = load i32, i32* %8, align 4
  %24 = srem i32 %23, 2
  %25 = call i64 @snd_BUG_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %177

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %148, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %173

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %13, align 4
  %48 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %19, align 8
  %49 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %148

53:                                               ; preds = %35
  %54 = load i32, i32* %13, align 4
  %55 = ashr i32 %54, 6
  %56 = and i32 %55, 16383
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = ashr i32 %57, 10
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %147

61:                                               ; preds = %53
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @WIDE_LADD_INSTR_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %147

66:                                               ; preds = %61
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @WIDE_INSTR_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %147

71:                                               ; preds = %66
  %72 = load i32, i32* %14, align 4
  %73 = and i32 %72, 127
  store i32 %73, i32* %18, align 4
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %143, %71
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** @wide_opcodes, align 8
  %77 = call i32 @ARRAY_SIZE(i32* %76)
  %78 = icmp ult i32 %75, %77
  br i1 %78, label %79, label %146

79:                                               ; preds = %74
  %80 = load i32*, i32** @wide_opcodes, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %142

87:                                               ; preds = %79
  %88 = load i32, i32* %13, align 4
  %89 = and i32 %88, 4095
  %90 = shl i32 %89, 5
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %14, align 4
  %92 = ashr i32 %91, 15
  %93 = load i32, i32* %15, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %15, align 4
  %100 = and i32 %99, 32768
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %87
  %103 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %19, align 8
  %104 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sdiv i32 %106, 2
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %15, align 4
  br label %114

112:                                              ; preds = %87
  %113 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %102
  %115 = load i32, i32* %13, align 4
  %116 = and i32 %115, 1044480
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = and i32 %117, 32767
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = ashr i32 %119, 5
  %121 = and i32 %120, 4095
  %122 = load i32, i32* %13, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %15, align 4
  %125 = shl i32 %124, 15
  %126 = and i32 %125, 1015808
  %127 = load i32, i32* %14, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %13, align 4
  %130 = and i32 %129, 4095
  %131 = shl i32 %130, 5
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %14, align 4
  %133 = ashr i32 %132, 15
  %134 = load i32, i32* %15, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* %12, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %142

142:                                              ; preds = %114, %79
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %11, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %74

146:                                              ; preds = %74
  br label %147

147:                                              ; preds = %146, %66, %61, %53
  br label %148

148:                                              ; preds = %147, %35
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %19, align 8
  %151 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %19, align 8
  %155 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %153, i64 %159
  store i32 %149, i32* %160, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %19, align 8
  %163 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %19, align 8
  %167 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %165, i64 %171
  store i32 %161, i32* %172, align 4
  br label %31

173:                                              ; preds = %31
  %174 = load i32, i32* %12, align 4
  %175 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %173, %27
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_printdd(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
