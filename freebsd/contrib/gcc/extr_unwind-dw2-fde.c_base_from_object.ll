; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_base_from_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_base_from_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32, i32 }

@DW_EH_PE_omit = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.object*)* @base_from_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_from_object(i8 zeroext %0, %struct.object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.object*, align 8
  store i8 %0, i8* %4, align 1
  store %struct.object* %1, %struct.object** %5, align 8
  %6 = load i8, i8* %4, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* @DW_EH_PE_omit, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 112
  switch i32 %15, label %25 [
    i32 132, label %16
    i32 129, label %16
    i32 131, label %16
    i32 128, label %17
    i32 130, label %21
  ]

16:                                               ; preds = %12, %12, %12
  store i32 0, i32* %3, align 4
  br label %27

17:                                               ; preds = %12
  %18 = load %struct.object*, %struct.object** %5, align 8
  %19 = getelementptr inbounds %struct.object, %struct.object* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %12
  %22 = load %struct.object*, %struct.object** %5, align 8
  %23 = getelementptr inbounds %struct.object, %struct.object* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %12
  %26 = call i32 (...) @gcc_unreachable()
  br label %27

27:                                               ; preds = %11, %16, %17, %21, %25
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
