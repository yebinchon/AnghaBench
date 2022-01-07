; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ak4531_codec.c_snd_ak4531_put_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ak4531_codec.c_snd_ak4531_put_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_ak4531 = type { i32*, i32, i32 (%struct.snd_ak4531*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ak4531_put_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ak4531_put_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = call %struct.snd_ak4531* @snd_kcontrol_chip(%struct.snd_kcontrol* %15)
  store %struct.snd_ak4531* %16, %struct.snd_ak4531** %5, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* %6, align 4
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  store i32 %25, i32* %7, align 4
  %26 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %27 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 7
  store i32 %30, i32* %8, align 4
  %31 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %32 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 19
  %35 = and i32 %34, 7
  store i32 %35, i32* %9, align 4
  %36 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %37 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 24
  %40 = and i32 %39, 255
  store i32 %40, i32* %10, align 4
  %41 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %42 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 22
  %45 = and i32 %44, 1
  store i32 %45, i32* %11, align 4
  %46 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %13, align 4
  %55 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %2
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %14, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %66, %2
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %13, align 4
  %76 = shl i32 %75, %74
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %14, align 4
  %79 = shl i32 %78, %77
  store i32 %79, i32* %14, align 4
  %80 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %81 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %80, i32 0, i32 1
  %82 = call i32 @mutex_lock(i32* %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %130

86:                                               ; preds = %73
  %87 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %88 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %8, align 4
  %96 = shl i32 %94, %95
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = shl i32 %97, %98
  %100 = or i32 %96, %99
  %101 = xor i32 %100, -1
  %102 = and i32 %93, %101
  %103 = load i32, i32* %13, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %14, align 4
  %106 = or i32 %104, %105
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %109 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %107, %114
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %12, align 4
  %117 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %118 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %117, i32 0, i32 2
  %119 = load i32 (%struct.snd_ak4531*, i32, i32)*, i32 (%struct.snd_ak4531*, i32, i32)** %118, align 8
  %120 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %124 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  %129 = call i32 %119(%struct.snd_ak4531* %120, i32 %121, i32 %122)
  br label %207

130:                                              ; preds = %73
  %131 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %132 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %8, align 4
  %140 = shl i32 %138, %139
  %141 = xor i32 %140, -1
  %142 = and i32 %137, %141
  %143 = load i32, i32* %13, align 4
  %144 = or i32 %142, %143
  store i32 %144, i32* %13, align 4
  %145 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %146 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %9, align 4
  %154 = shl i32 %152, %153
  %155 = xor i32 %154, -1
  %156 = and i32 %151, %155
  %157 = load i32, i32* %14, align 4
  %158 = or i32 %156, %157
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %161 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %159, %166
  br i1 %167, label %178, label %168

168:                                              ; preds = %130
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %171 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %169, %176
  br label %178

178:                                              ; preds = %168, %130
  %179 = phi i1 [ true, %130 ], [ %177, %168 ]
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %12, align 4
  %181 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %182 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %181, i32 0, i32 2
  %183 = load i32 (%struct.snd_ak4531*, i32, i32)*, i32 (%struct.snd_ak4531*, i32, i32)** %182, align 8
  %184 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %188 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %186, i32* %192, align 4
  %193 = call i32 %183(%struct.snd_ak4531* %184, i32 %185, i32 %186)
  %194 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %195 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %194, i32 0, i32 2
  %196 = load i32 (%struct.snd_ak4531*, i32, i32)*, i32 (%struct.snd_ak4531*, i32, i32)** %195, align 8
  %197 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %14, align 4
  %200 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %201 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 %199, i32* %205, align 4
  %206 = call i32 %196(%struct.snd_ak4531* %197, i32 %198, i32 %199)
  br label %207

207:                                              ; preds = %178, %86
  %208 = load %struct.snd_ak4531*, %struct.snd_ak4531** %5, align 8
  %209 = getelementptr inbounds %struct.snd_ak4531, %struct.snd_ak4531* %208, i32 0, i32 1
  %210 = call i32 @mutex_unlock(i32* %209)
  %211 = load i32, i32* %12, align 4
  ret i32 %211
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
