; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb_mixer.c_snd_sbmixer_get_double.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb_mixer.c_snd_sbmixer_get_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.snd_sb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_sbmixer_get_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sbmixer_get_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_sb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = call %struct.snd_sb* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.snd_sb* %15, %struct.snd_sb** %5, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %7, align 4
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  store i32 %24, i32* %8, align 4
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 7
  store i32 %29, i32* %9, align 4
  %30 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %31 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 19
  %34 = and i32 %33, 7
  store i32 %34, i32* %10, align 4
  %35 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %36 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 24
  %39 = and i32 %38, 255
  store i32 %39, i32* %11, align 4
  %40 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %41 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %40, i32 0, i32 0
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @snd_sbmixer_read(%struct.snd_sb* %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %46, %47
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %48, %49
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %12, align 1
  %52 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @snd_sbmixer_read(%struct.snd_sb* %52, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = ashr i32 %54, %55
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %56, %57
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %13, align 1
  %60 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %61 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %60, i32 0, i32 0
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i8, i8* %12, align 1
  %65 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %66 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 %64, i8* %70, align 1
  %71 = load i8, i8* %13, align 1
  %72 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %73 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8 %71, i8* %77, align 1
  ret i32 0
}

declare dso_local %struct.snd_sb* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_sbmixer_read(%struct.snd_sb*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
