; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_put_switch_w.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_burgundy.c_snd_pmac_burgundy_put_switch_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_pmac = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_pmac_burgundy_put_switch_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pmac_burgundy_put_switch_w(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_pmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol* %12)
  store %struct.snd_pmac* %13, %struct.snd_pmac** %5, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = call i32 @BASE2ADDR(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  %24 = shl i32 1, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = shl i32 1, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %32 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 24
  %35 = and i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @snd_pmac_burgundy_rcw(%struct.snd_pmac* %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* %8, align 4
  br label %46

45:                                               ; preds = %2
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = or i32 %40, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %39, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %52 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %46
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %59, %46
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %68 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %75, %66, %63
  %80 = load %struct.snd_pmac*, %struct.snd_pmac** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @snd_pmac_burgundy_wcw(%struct.snd_pmac* %80, i32 %81, i32 %82)
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %84, %85
  %87 = zext i1 %86 to i32
  ret i32 %87
}

declare dso_local %struct.snd_pmac* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @BASE2ADDR(i32) #1

declare dso_local i32 @snd_pmac_burgundy_rcw(%struct.snd_pmac*, i32) #1

declare dso_local i32 @snd_pmac_burgundy_wcw(%struct.snd_pmac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
