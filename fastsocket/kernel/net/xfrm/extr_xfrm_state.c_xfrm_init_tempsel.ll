; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_init_tempsel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_init_tempsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.flowi = type { i32 }
%struct.xfrm_tmpl = type { i32 }
%struct.xfrm_state_afinfo = type { i32 (%struct.xfrm_state.0*, %struct.flowi.1*, %struct.xfrm_tmpl*, i32*, i32*)* }
%struct.xfrm_state.0 = type opaque
%struct.flowi.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.flowi*, %struct.xfrm_tmpl*, i32*, i32*, i16)* @xfrm_init_tempsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_init_tempsel(%struct.xfrm_state* %0, %struct.flowi* %1, %struct.xfrm_tmpl* %2, i32* %3, i32* %4, i16 zeroext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfrm_state*, align 8
  %9 = alloca %struct.flowi*, align 8
  %10 = alloca %struct.xfrm_tmpl*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i16, align 2
  %14 = alloca %struct.xfrm_state_afinfo*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %8, align 8
  store %struct.flowi* %1, %struct.flowi** %9, align 8
  store %struct.xfrm_tmpl* %2, %struct.xfrm_tmpl** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i16 %5, i16* %13, align 2
  %15 = load i16, i16* %13, align 2
  %16 = call %struct.xfrm_state_afinfo* @xfrm_state_get_afinfo(i16 zeroext %15)
  store %struct.xfrm_state_afinfo* %16, %struct.xfrm_state_afinfo** %14, align 8
  %17 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %14, align 8
  %18 = icmp ne %struct.xfrm_state_afinfo* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %34

20:                                               ; preds = %6
  %21 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %14, align 8
  %22 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %21, i32 0, i32 0
  %23 = load i32 (%struct.xfrm_state.0*, %struct.flowi.1*, %struct.xfrm_tmpl*, i32*, i32*)*, i32 (%struct.xfrm_state.0*, %struct.flowi.1*, %struct.xfrm_tmpl*, i32*, i32*)** %22, align 8
  %24 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %25 = bitcast %struct.xfrm_state* %24 to %struct.xfrm_state.0*
  %26 = load %struct.flowi*, %struct.flowi** %9, align 8
  %27 = bitcast %struct.flowi* %26 to %struct.flowi.1*
  %28 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 %23(%struct.xfrm_state.0* %25, %struct.flowi.1* %27, %struct.xfrm_tmpl* %28, i32* %29, i32* %30)
  %32 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %14, align 8
  %33 = call i32 @xfrm_state_put_afinfo(%struct.xfrm_state_afinfo* %32)
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %20, %19
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local %struct.xfrm_state_afinfo* @xfrm_state_get_afinfo(i16 zeroext) #1

declare dso_local i32 @xfrm_state_put_afinfo(%struct.xfrm_state_afinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
