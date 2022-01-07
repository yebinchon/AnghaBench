; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ak4531_codec.c_snd_ak4531_put_input_sw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ak4531_codec.c_snd_ak4531_put_input_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ak4531 = type { i32*, i32, i32 (%struct.snd_ak4531*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ak4531_put_input_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ak4531_put_input_sw(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_ak4531*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = call %struct.snd_ak4531* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_ak4531* %14, %struct.snd_ak4531** %5, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %6, align 4
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  store i32 %23, i32* %7, align 4
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 15
  store i32 %28, i32* %8, align 4
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 24
  %33 = and i32 %32, 15
  store i32 %33, i32* %9, align 4
  %34 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %35 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %38 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 1, %44
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 1, %46
  %48 = or i32 %45, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %43, %49
  store i32 %50, i32* %11, align 4
  %51 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %52 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 1, %60
  %62 = or i32 %59, %61
  %63 = xor i32 %62, -1
  %64 = and i32 %57, %63
  store i32 %64, i32* %12, align 4
  %65 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %66 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 1
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  %77 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %78 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 1
  %85 = load i32, i32* %8, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %12, align 4
  %89 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %90 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 1
  %97 = load i32, i32* %9, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %11, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %11, align 4
  %101 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %102 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 1
  %109 = load i32, i32* %9, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* %12, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %115 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %113, %120
  br i1 %121, label %132, label %122

122:                                              ; preds = %2
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %125 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %123, %130
  br label %132

132:                                              ; preds = %122, %2
  %133 = phi i1 [ true, %2 ], [ %131, %122 ]
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %10, align 4
  %135 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %136 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %135, i32 0, i32 2
  %137 = load i32 (%struct.snd_ak4531*, i32, i32)*, i32 (%struct.snd_ak4531*, i32, i32)** %136, align 8
  %138 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %142 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %140, i32* %146, align 4
  %147 = call i32 %137(%struct.snd_ak4531* %138, i32 %139, i32 %140)
  %148 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %149 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %148, i32 0, i32 2
  %150 = load i32 (%struct.snd_ak4531*, i32, i32)*, i32 (%struct.snd_ak4531*, i32, i32)** %149, align 8
  %151 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %155 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %153, i32* %159, align 4
  %160 = call i32 %150(%struct.snd_ak4531* %151, i32 %152, i32 %153)
  %161 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %162 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %161, i32 0, i32 1
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load i32, i32* %10, align 4
  ret i32 %164
}

declare dso_local %struct.snd_ak4531* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
