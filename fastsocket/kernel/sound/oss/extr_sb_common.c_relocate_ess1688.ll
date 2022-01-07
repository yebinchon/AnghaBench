; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_common.c_relocate_ess1688.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sb_common.c_relocate_ess1688.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Doing ESS1688 address selection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @relocate_ess1688 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @relocate_ess1688(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %11 [
    i32 544, label %7
    i32 560, label %8
    i32 576, label %9
    i32 592, label %10
  ]

7:                                                ; preds = %1
  store i8 4, i8* %3, align 1
  br label %12

8:                                                ; preds = %1
  store i8 5, i8* %3, align 1
  br label %12

9:                                                ; preds = %1
  store i8 6, i8* %3, align 1
  br label %12

10:                                               ; preds = %1
  store i8 7, i8* %3, align 1
  br label %12

11:                                               ; preds = %1
  br label %33

12:                                               ; preds = %10, %9, %8, %7
  %13 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @DDB(i32 %13)
  %15 = call i32 @inb(i32 553)
  %16 = call i32 @inb(i32 553)
  %17 = call i32 @inb(i32 553)
  %18 = call i32 @inb(i32 555)
  %19 = call i32 @inb(i32 553)
  %20 = call i32 @inb(i32 555)
  %21 = call i32 @inb(i32 553)
  %22 = call i32 @inb(i32 553)
  %23 = call i32 @inb(i32 555)
  %24 = call i32 @inb(i32 553)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @inb(i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = call i64 @sb_dsp_reset(%struct.TYPE_4__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %12
  br label %33

33:                                               ; preds = %11, %32, %12
  ret void
}

declare dso_local i32 @DDB(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i64 @sb_dsp_reset(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
