; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_get_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_get_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.snd_es1688 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_es1688_get_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1688_get_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_es1688*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = call %struct.snd_es1688* @snd_kcontrol_chip(%struct.snd_kcontrol* %15)
  store %struct.snd_es1688* %16, %struct.snd_es1688** %5, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* %7, align 4
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  store i32 %25, i32* %8, align 4
  %26 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %27 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 7
  store i32 %30, i32* %9, align 4
  %31 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %32 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 19
  %35 = and i32 %34, 7
  store i32 %35, i32* %10, align 4
  %36 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %37 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 24
  %40 = and i32 %39, 255
  store i32 %40, i32* %11, align 4
  %41 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %42 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 22
  %45 = and i32 %44, 1
  store i32 %45, i32* %12, align 4
  %46 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %47 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %46, i32 0, i32 0
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 160
  br i1 %51, label %52, label %56

52:                                               ; preds = %2
  %53 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call zeroext i8 @snd_es1688_mixer_read(%struct.snd_es1688* %53, i32 %54)
  store i8 %55, i8* %13, align 1
  br label %60

56:                                               ; preds = %2
  %57 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call zeroext i8 @snd_es1688_read(%struct.snd_es1688* %57, i32 %58)
  store i8 %59, i8* %13, align 1
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 160
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call zeroext i8 @snd_es1688_mixer_read(%struct.snd_es1688* %68, i32 %69)
  store i8 %70, i8* %14, align 1
  br label %75

71:                                               ; preds = %64
  %72 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call zeroext i8 @snd_es1688_read(%struct.snd_es1688* %72, i32 %73)
  store i8 %74, i8* %14, align 1
  br label %75

75:                                               ; preds = %71, %67
  br label %78

76:                                               ; preds = %60
  %77 = load i8, i8* %13, align 1
  store i8 %77, i8* %14, align 1
  br label %78

78:                                               ; preds = %76, %75
  %79 = load %struct.snd_es1688*, %struct.snd_es1688** %5, align 8
  %80 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %79, i32 0, i32 0
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load i8, i8* %13, align 1
  %84 = zext i8 %83 to i32
  %85 = load i32, i32* %9, align 4
  %86 = ashr i32 %84, %85
  %87 = load i32, i32* %11, align 4
  %88 = and i32 %86, %87
  %89 = trunc i32 %88 to i8
  %90 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %91 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 %89, i8* %95, align 1
  %96 = load i8, i8* %14, align 1
  %97 = zext i8 %96 to i32
  %98 = load i32, i32* %10, align 4
  %99 = ashr i32 %97, %98
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %99, %100
  %102 = trunc i32 %101 to i8
  %103 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %104 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  store i8 %102, i8* %108, align 1
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %146

111:                                              ; preds = %78
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %114 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = sub nsw i32 %112, %120
  %122 = trunc i32 %121 to i8
  %123 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %124 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  store i8 %122, i8* %128, align 1
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %131 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = sub nsw i32 %129, %137
  %139 = trunc i32 %138 to i8
  %140 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %141 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  store i8 %139, i8* %145, align 1
  br label %146

146:                                              ; preds = %111, %78
  ret i32 0
}

declare dso_local %struct.snd_es1688* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @snd_es1688_mixer_read(%struct.snd_es1688*, i32) #1

declare dso_local zeroext i8 @snd_es1688_read(%struct.snd_es1688*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
