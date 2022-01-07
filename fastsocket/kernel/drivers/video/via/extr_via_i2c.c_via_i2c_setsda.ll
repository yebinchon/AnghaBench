; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_via_i2c.c_via_i2c_setsda.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_via_i2c.c_via_i2c_setsda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_i2c_stuff = type { i32 }

@VIASR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"via_i2c: specify wrong i2c port.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @via_i2c_setsda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_i2c_setsda(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.via_i2c_stuff*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.via_i2c_stuff*
  store %struct.via_i2c_stuff* %8, %struct.via_i2c_stuff** %6, align 8
  %9 = load i32, i32* @VIASR, align 4
  %10 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %6, align 8
  %11 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @viafb_read_reg(i32 %9, i32 %12)
  %14 = and i32 %13, 240
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, 16
  store i32 %19, i32* %5, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, -17
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %6, align 8
  %25 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %33 [
    i32 128, label %27
    i32 129, label %30
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %35

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, 64
  store i32 %32, i32* %5, align 4
  br label %35

33:                                               ; preds = %23
  %34 = call i32 @DEBUG_MSG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30, %27
  %36 = load %struct.via_i2c_stuff*, %struct.via_i2c_stuff** %6, align 8
  %37 = getelementptr inbounds %struct.via_i2c_stuff, %struct.via_i2c_stuff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @VIASR, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @viafb_write_reg(i32 %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @viafb_read_reg(i32, i32) #1

declare dso_local i32 @DEBUG_MSG(i8*) #1

declare dso_local i32 @viafb_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
