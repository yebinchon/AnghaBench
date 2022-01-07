; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_cfg_map_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_cfg_map_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_audit = type { i32 }

@EPFNOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_cfg_map_del(i8* %0, i32 %1, i8* %2, i8* %3, %struct.netlbl_audit* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.netlbl_audit*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.netlbl_audit* %4, %struct.netlbl_audit** %11, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = load i8*, i8** %10, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.netlbl_audit*, %struct.netlbl_audit** %11, align 8
  %20 = call i32 @netlbl_domhsh_remove(i8* %18, %struct.netlbl_audit* %19)
  store i32 %20, i32* %6, align 4
  br label %41

21:                                               ; preds = %14, %5
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %35 [
    i32 128, label %29
  ]

29:                                               ; preds = %27
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.netlbl_audit*, %struct.netlbl_audit** %11, align 8
  %34 = call i32 @netlbl_domhsh_remove_af4(i8* %30, i8* %31, i8* %32, %struct.netlbl_audit* %33)
  store i32 %34, i32* %6, align 4
  br label %41

35:                                               ; preds = %27
  %36 = load i32, i32* @EPFNOSUPPORT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %41

38:                                               ; preds = %24, %21
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %35, %29, %17
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @netlbl_domhsh_remove(i8*, %struct.netlbl_audit*) #1

declare dso_local i32 @netlbl_domhsh_remove_af4(i8*, i8*, i8*, %struct.netlbl_audit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
