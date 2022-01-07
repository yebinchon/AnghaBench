; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_awacs.c_snd_pmac_awacs_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_awacs.c_snd_pmac_awacs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PMAC_SCREAMER = common dso_local global i64 0, align 8
@MASK_NEWECMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"snd_pmac_awacs_write timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*, i32)* @snd_pmac_awacs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pmac_awacs_write(%struct.snd_pmac* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.snd_pmac* %0, %struct.snd_pmac** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 5000000, i64* %5, align 8
  %6 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PMAC_SCREAMER, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %13 = call i32 @snd_pmac_screamer_wait(%struct.snd_pmac* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %21 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 22
  %24 = or i32 %19, %23
  %25 = call i32 @out_le32(i32* %18, i32 %24)
  br label %26

26:                                               ; preds = %41, %14
  %27 = load %struct.snd_pmac*, %struct.snd_pmac** %3, align 8
  %28 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @in_le32(i32* %30)
  %32 = load i32, i32* @MASK_NEWECMD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 @snd_printd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %42

41:                                               ; preds = %35
  br label %26

42:                                               ; preds = %39, %26
  ret void
}

declare dso_local i32 @snd_pmac_screamer_wait(%struct.snd_pmac*) #1

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @snd_printd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
