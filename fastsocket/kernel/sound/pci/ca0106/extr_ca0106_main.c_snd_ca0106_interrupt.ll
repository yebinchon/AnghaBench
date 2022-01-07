; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ca0106 = type { i64, %struct.TYPE_5__, %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)*, i64 }
%struct.snd_ca0106_channel = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }

@IPR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@EXTENDED_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_ca0106_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ca0106_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_ca0106*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_ca0106_channel*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.snd_ca0106*
  store %struct.snd_ca0106* %13, %struct.snd_ca0106** %7, align 8
  %14 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %15 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IPR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @inl(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %160

24:                                               ; preds = %2
  %25 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %26 = load i32, i32* @EXTENDED_INT, align 4
  %27 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %25, i32 %26, i32 0)
  store i32 %27, i32* %10, align 4
  store i32 17, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %58, %24
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  %32 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %33 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %32, i32 0, i32 3
  %34 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %34, i64 %36
  store %struct.snd_ca0106_channel* %37, %struct.snd_ca0106_channel** %11, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %31
  %43 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %11, align 8
  %44 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %11, align 8
  %49 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @snd_pcm_period_elapsed(i32 %52)
  br label %54

54:                                               ; preds = %47, %42
  br label %55

55:                                               ; preds = %54, %31
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %28

61:                                               ; preds = %28
  store i32 1114112, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %92, %61
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %65, label %95

65:                                               ; preds = %62
  %66 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %67 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %66, i32 0, i32 2
  %68 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %68, i64 %70
  store %struct.snd_ca0106_channel* %71, %struct.snd_ca0106_channel** %11, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %65
  %77 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %11, align 8
  %78 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %11, align 8
  %83 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @snd_pcm_period_elapsed(i32 %86)
  br label %88

88:                                               ; preds = %81, %76
  br label %89

89:                                               ; preds = %88, %65
  %90 = load i32, i32* %9, align 4
  %91 = shl i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %62

95:                                               ; preds = %62
  %96 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %97 = load i32, i32* @EXTENDED_INT, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %96, i32 %97, i32 0, i32 %98)
  %100 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %101 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %151

105:                                              ; preds = %95
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %108 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %112 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %110, %114
  %116 = and i32 %106, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %151

118:                                              ; preds = %105
  %119 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %120 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 5
  %122 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %121, align 8
  %123 = icmp ne i32 (%struct.TYPE_5__*, i32)* %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %126 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 5
  %128 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %127, align 8
  %129 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %130 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %129, i32 0, i32 1
  %131 = load i32, i32* %6, align 4
  %132 = call i32 %128(%struct.TYPE_5__* %130, i32 %131)
  br label %150

133:                                              ; preds = %118
  %134 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %135 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 4
  %137 = load i32 (%struct.TYPE_5__*, i32)*, i32 (%struct.TYPE_5__*, i32)** %136, align 8
  %138 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %139 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %138, i32 0, i32 1
  %140 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %141 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %145 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %143, %147
  %149 = call i32 %137(%struct.TYPE_5__* %139, i32 %148)
  br label %150

150:                                              ; preds = %133, %124
  br label %151

151:                                              ; preds = %150, %105, %95
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.snd_ca0106*, %struct.snd_ca0106** %7, align 8
  %154 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @IPR, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @outl(i32 %152, i64 %157)
  %159 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %151, %22
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @snd_ca0106_ptr_read(%struct.snd_ca0106*, i32, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local i32 @snd_ca0106_ptr_write(%struct.snd_ca0106*, i32, i32, i32) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
