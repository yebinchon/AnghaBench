; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_flattree.c_flat_realign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_flattree.c_flat_realign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf = type { i32, i32, i64 }

@.str = private unnamed_addr constant [48 x i8] c"Premature end of data parsing flat device tree\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inbuf*, i32)* @flat_realign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flat_realign(%struct.inbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.inbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.inbuf* %0, %struct.inbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.inbuf*, %struct.inbuf** %3, align 8
  %7 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.inbuf*, %struct.inbuf** %3, align 8
  %10 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.inbuf*, %struct.inbuf** %3, align 8
  %14 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ALIGN(i32 %16, i32 %17)
  %19 = add nsw i32 %15, %18
  %20 = load %struct.inbuf*, %struct.inbuf** %3, align 8
  %21 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.inbuf*, %struct.inbuf** %3, align 8
  %23 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load %struct.inbuf*, %struct.inbuf** %3, align 8
  %27 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 @die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %2
  ret void
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
