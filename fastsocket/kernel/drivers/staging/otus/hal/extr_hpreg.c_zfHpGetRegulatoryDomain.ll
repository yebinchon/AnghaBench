; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpreg.c_zfHpGetRegulatoryDomain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpreg.c_zfHpGetRegulatoryDomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfHpGetRegulatoryDomain(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @zmw_get_wlan_dev(i32* %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %15 [
    i32 128, label %10
    i32 211, label %11
    i32 210, label %11
    i32 201, label %11
    i32 199, label %11
    i32 206, label %11
    i32 208, label %11
    i32 204, label %11
    i32 203, label %11
    i32 212, label %11
    i32 209, label %11
    i32 205, label %11
    i32 202, label %11
    i32 200, label %11
    i32 198, label %11
    i32 207, label %12
    i32 229, label %13
    i32 225, label %13
    i32 227, label %13
    i32 224, label %13
    i32 221, label %13
    i32 222, label %13
    i32 219, label %13
    i32 217, label %13
    i32 213, label %13
    i32 230, label %13
    i32 228, label %13
    i32 226, label %13
    i32 223, label %13
    i32 220, label %13
    i32 218, label %13
    i32 216, label %13
    i32 215, label %13
    i32 214, label %13
    i32 177, label %14
    i32 174, label %14
    i32 171, label %14
    i32 178, label %14
    i32 176, label %14
    i32 175, label %14
    i32 173, label %14
    i32 165, label %14
    i32 166, label %14
    i32 164, label %14
    i32 158, label %14
    i32 159, label %14
    i32 157, label %14
    i32 154, label %14
    i32 155, label %14
    i32 153, label %14
    i32 148, label %14
    i32 149, label %14
    i32 147, label %14
    i32 142, label %14
    i32 144, label %14
    i32 141, label %14
    i32 138, label %14
    i32 139, label %14
    i32 137, label %14
    i32 150, label %14
    i32 151, label %14
    i32 143, label %14
    i32 145, label %14
    i32 135, label %14
    i32 133, label %14
    i32 131, label %14
    i32 132, label %14
    i32 195, label %14
    i32 193, label %14
    i32 191, label %14
    i32 192, label %14
    i32 188, label %14
    i32 189, label %14
    i32 187, label %14
    i32 185, label %14
    i32 186, label %14
    i32 182, label %14
    i32 183, label %14
    i32 181, label %14
    i32 179, label %14
    i32 180, label %14
    i32 168, label %14
    i32 167, label %14
    i32 169, label %14
    i32 161, label %14
    i32 160, label %14
    i32 162, label %14
    i32 134, label %14
    i32 194, label %14
    i32 197, label %14
    i32 172, label %14
    i32 170, label %14
    i32 163, label %14
    i32 156, label %14
    i32 152, label %14
    i32 146, label %14
    i32 140, label %14
    i32 136, label %14
    i32 196, label %14
    i32 190, label %14
    i32 184, label %14
    i32 130, label %14
    i32 129, label %14
  ]

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

11:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 16, i32* %2, align 4
  br label %17

12:                                               ; preds = %1
  store i32 32, i32* %2, align 4
  br label %17

13:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 48, i32* %2, align 4
  br label %17

14:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 64, i32* %2, align 4
  br label %17

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15
  store i32 255, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %14, %13, %12, %11, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
