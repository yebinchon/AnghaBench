; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd.c_snd_msnd_init_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd.c_snd_msnd_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JQS_wStart = common dso_local global i32 0, align 4
@JQS_wSize = common dso_local global i32 0, align 4
@JQS_wHead = common dso_local global i32 0, align 4
@JQS_wTail = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_msnd_init_queue(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @PCTODSP_BASED(i32 %7)
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @JQS_wStart, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr i8, i8* %9, i64 %11
  %13 = call i32 @writew(i64 %8, i8* %12)
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @PCTODSP_OFFSET(i32 %14)
  %16 = sub nsw i64 %15, 1
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @JQS_wSize, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr i8, i8* %17, i64 %19
  %21 = call i32 @writew(i64 %16, i8* %20)
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @JQS_wHead, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %22, i64 %24
  %26 = call i32 @writew(i64 0, i8* %25)
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @JQS_wTail, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %27, i64 %29
  %31 = call i32 @writew(i64 0, i8* %30)
  ret void
}

declare dso_local i32 @writew(i64, i8*) #1

declare dso_local i64 @PCTODSP_BASED(i32) #1

declare dso_local i64 @PCTODSP_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
