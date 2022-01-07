; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_csp.c_snd_sb_csp_use.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_csp.c_snd_sb_csp_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb_csp = type { i32, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sb_csp*)* @snd_sb_csp_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb_csp_use(%struct.snd_sb_csp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sb_csp*, align 8
  store %struct.snd_sb_csp* %0, %struct.snd_sb_csp** %3, align 8
  %4 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %5 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %8 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %13 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %19 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %23 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %17, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
