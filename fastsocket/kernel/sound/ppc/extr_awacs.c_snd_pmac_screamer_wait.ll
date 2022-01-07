; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_awacs.c_snd_pmac_screamer_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_awacs.c_snd_pmac_screamer_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MASK_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"snd_pmac_screamer_wait timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*)* @snd_pmac_screamer_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pmac_screamer_wait(%struct.snd_pmac* %0) #0 {
  %2 = alloca %struct.snd_pmac*, align 8
  %3 = alloca i64, align 8
  store %struct.snd_pmac* %0, %struct.snd_pmac** %2, align 8
  store i64 2000, i64* %3, align 8
  br label %4

4:                                                ; preds = %21, %1
  %5 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @in_le32(i32* %8)
  %10 = load i32, i32* @MASK_VALID, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = call i32 @mdelay(i32 1)
  %16 = load i64, i64* %3, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call i32 @snd_printd(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %22

21:                                               ; preds = %14
  br label %4

22:                                               ; preds = %19, %4
  ret void
}

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @snd_printd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
