; ModuleID = '/home/carl/AnghaBench/freebsd/bin/stty/extr_key.c_f_dec.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/stty/extr_key.c_f_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8** }

@VERASE = common dso_local global i64 0, align 8
@VKILL = common dso_local global i64 0, align 8
@VINTR = common dso_local global i64 0, align 8
@ECHOPRT = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@ECHOKE = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f_dec(%struct.info* %0) #0 {
  %2 = alloca %struct.info*, align 8
  store %struct.info* %0, %struct.info** %2, align 8
  %3 = load %struct.info*, %struct.info** %2, align 8
  %4 = getelementptr inbounds %struct.info, %struct.info* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %6 = load i8**, i8*** %5, align 8
  %7 = load i64, i64* @VERASE, align 8
  %8 = getelementptr inbounds i8*, i8** %6, i64 %7
  store i8* inttoptr (i64 127 to i8*), i8** %8, align 8
  %9 = call i8* @CTRL(i8 signext 117)
  %10 = load %struct.info*, %struct.info** %2, align 8
  %11 = getelementptr inbounds %struct.info, %struct.info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i8**, i8*** %12, align 8
  %14 = load i64, i64* @VKILL, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  store i8* %9, i8** %15, align 8
  %16 = call i8* @CTRL(i8 signext 99)
  %17 = load %struct.info*, %struct.info** %2, align 8
  %18 = getelementptr inbounds %struct.info, %struct.info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i8**, i8*** %19, align 8
  %21 = load i64, i64* @VINTR, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  store i8* %16, i8** %22, align 8
  %23 = load i32, i32* @ECHOPRT, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.info*, %struct.info** %2, align 8
  %26 = getelementptr inbounds %struct.info, %struct.info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %24
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @ECHOE, align 4
  %31 = load i32, i32* @ECHOKE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ECHOCTL, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.info*, %struct.info** %2, align 8
  %36 = getelementptr inbounds %struct.info, %struct.info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @IXANY, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.info*, %struct.info** %2, align 8
  %43 = getelementptr inbounds %struct.info, %struct.info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %41
  store i32 %46, i32* %44, align 4
  %47 = load %struct.info*, %struct.info** %2, align 8
  %48 = getelementptr inbounds %struct.info, %struct.info* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  ret void
}

declare dso_local i8* @CTRL(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
