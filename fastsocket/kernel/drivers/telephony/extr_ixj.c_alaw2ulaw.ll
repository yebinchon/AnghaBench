; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_alaw2ulaw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_alaw2ulaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alaw2ulaw.table_alaw2ulaw = internal global [256 x i8] c")*'(-.+,!\22\1F %&#$9:78=>;<12/05634\0A\0B\08\09\0E\0F\0C\0D\02\03\00\01\06\07\04\05\1A\1B\18\19\1E\1F\1C\1D\12\13\10\11\16\17\14\15bc`afgde]]\\\\__^^tvpr|~xzjkhinolmHIFGLMJK@A??DEBCVWTUZ[XYOONNRSPQ\A9\AA\A7\A8\AD\AE\AB\AC\A1\A2\9F\A0\A5\A6\A3\A4\B9\BA\B7\B8\BD\BE\BB\BC\B1\B2\AF\B0\B5\B6\B3\B4\8A\8B\88\89\8E\8F\8C\8D\82\83\80\81\86\87\84\85\9A\9B\98\99\9E\9F\9C\9D\92\93\90\91\96\97\94\95\E2\E3\E0\E1\E6\E7\E4\E5\DD\DD\DC\DC\DF\DF\DE\DE\F4\F6\F0\F2\FC\FE\F8\FA\EA\EB\E8\E9\EE\EF\EC\ED\C8\C9\C6\C7\CC\CD\CA\CB\C0\C1\BF\BF\C4\C5\C2\C3\D6\D7\D4\D5\DA\DB\D8\D9\CF\CF\CE\CE\D2\D3\D0\D1", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @alaw2ulaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alaw2ulaw(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %5

5:                                                ; preds = %9, %2
  %6 = load i64, i64* %4, align 8
  %7 = add i64 %6, -1
  store i64 %7, i64* %4, align 8
  %8 = icmp ne i64 %6, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* @alaw2ulaw.table_alaw2ulaw, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = load i8*, i8** %3, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %3, align 8
  br label %5

18:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
