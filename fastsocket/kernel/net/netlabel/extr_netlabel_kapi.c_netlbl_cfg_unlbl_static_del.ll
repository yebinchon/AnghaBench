; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_cfg_unlbl_static_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_cfg_unlbl_static_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.netlbl_audit = type { i32 }

@EPFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_cfg_unlbl_static_del(%struct.net* %0, i8* %1, i8* %2, i8* %3, i32 %4, %struct.netlbl_audit* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlbl_audit*, align 8
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.netlbl_audit* %5, %struct.netlbl_audit** %13, align 8
  %15 = load i32, i32* %12, align 4
  switch i32 %15, label %18 [
    i32 129, label %16
    i32 128, label %17
  ]

16:                                               ; preds = %6
  store i32 4, i32* %14, align 4
  br label %21

17:                                               ; preds = %6
  store i32 4, i32* %14, align 4
  br label %21

18:                                               ; preds = %6
  %19 = load i32, i32* @EPFNOSUPPORT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %29

21:                                               ; preds = %17, %16
  %22 = load %struct.net*, %struct.net** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load %struct.netlbl_audit*, %struct.netlbl_audit** %13, align 8
  %28 = call i32 @netlbl_unlhsh_remove(%struct.net* %22, i8* %23, i8* %24, i8* %25, i32 %26, %struct.netlbl_audit* %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @netlbl_unlhsh_remove(%struct.net*, i8*, i8*, i8*, i32, %struct.netlbl_audit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
