; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_maven.c_maven_compute_deflicker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_maven.c_maven_compute_deflicker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maven_data = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MGATVO_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.maven_data*)* @maven_compute_deflicker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @maven_compute_deflicker(%struct.maven_data* %0) #0 {
  %2 = alloca %struct.maven_data*, align 8
  %3 = alloca i8, align 1
  store %struct.maven_data* %0, %struct.maven_data** %2, align 8
  %4 = load %struct.maven_data*, %struct.maven_data** %2, align 8
  %5 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MGATVO_B, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 64, i32 0
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %3, align 1
  %12 = load %struct.maven_data*, %struct.maven_data** %2, align 8
  %13 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %30 [
    i32 0, label %19
    i32 1, label %20
    i32 2, label %25
  ]

19:                                               ; preds = %1
  br label %30

20:                                               ; preds = %1
  %21 = load i8, i8* %3, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %22, 177
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %3, align 1
  br label %30

25:                                               ; preds = %1
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, 162
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %3, align 1
  br label %30

30:                                               ; preds = %1, %25, %20, %19
  %31 = load i8, i8* %3, align 1
  ret i8 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
