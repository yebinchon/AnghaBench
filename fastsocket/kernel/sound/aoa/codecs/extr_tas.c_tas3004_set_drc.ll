; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_tas.c_tas3004_set_drc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_tas.c_tas3004_set_drc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tas = type { i32, i64 }

@TAS_REG_DRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tas*)* @tas3004_set_drc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tas3004_set_drc(%struct.tas* %0) #0 {
  %2 = alloca %struct.tas*, align 8
  %3 = alloca [6 x i8], align 1
  store %struct.tas* %0, %struct.tas** %2, align 8
  %4 = load %struct.tas*, %struct.tas** %2, align 8
  %5 = getelementptr inbounds %struct.tas, %struct.tas* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  store i8 80, i8* %9, align 1
  br label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  store i8 81, i8* %11, align 1
  br label %12

12:                                               ; preds = %10, %8
  %13 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 1
  store i8 2, i8* %13, align 1
  %14 = load %struct.tas*, %struct.tas** %2, align 8
  %15 = getelementptr inbounds %struct.tas, %struct.tas* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 239
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 2
  store i8 -17, i8* %19, align 1
  br label %34

20:                                               ; preds = %12
  %21 = load %struct.tas*, %struct.tas** %2, align 8
  %22 = getelementptr inbounds %struct.tas, %struct.tas* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 2
  store i8 0, i8* %26, align 1
  br label %33

27:                                               ; preds = %20
  %28 = load %struct.tas*, %struct.tas** %2, align 8
  %29 = getelementptr inbounds %struct.tas, %struct.tas* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 2
  store i8 %31, i8* %32, align 1
  br label %33

33:                                               ; preds = %27, %25
  br label %34

34:                                               ; preds = %33, %18
  %35 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 3
  store i8 -80, i8* %35, align 1
  %36 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 4
  store i8 96, i8* %36, align 1
  %37 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 5
  store i8 -96, i8* %37, align 1
  %38 = load %struct.tas*, %struct.tas** %2, align 8
  %39 = load i32, i32* @TAS_REG_DRC, align 4
  %40 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  %41 = call i32 @tas_write_reg(%struct.tas* %38, i32 %39, i32 6, i8* %40)
  ret void
}

declare dso_local i32 @tas_write_reg(%struct.tas*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
