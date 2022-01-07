; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rsv = type { i8*, i32 }
%struct.uwb_rc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uwb_rsv* @uwb_rsv_create(%struct.uwb_rc* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.uwb_rsv*, align 8
  %5 = alloca %struct.uwb_rc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.uwb_rsv*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.uwb_rc*, %struct.uwb_rc** %5, align 8
  %10 = call %struct.uwb_rsv* @uwb_rsv_alloc(%struct.uwb_rc* %9)
  store %struct.uwb_rsv* %10, %struct.uwb_rsv** %8, align 8
  %11 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %12 = icmp ne %struct.uwb_rsv* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.uwb_rsv* null, %struct.uwb_rsv** %4, align 8
  br label %22

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %17 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %20 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  store %struct.uwb_rsv* %21, %struct.uwb_rsv** %4, align 8
  br label %22

22:                                               ; preds = %14, %13
  %23 = load %struct.uwb_rsv*, %struct.uwb_rsv** %4, align 8
  ret %struct.uwb_rsv* %23
}

declare dso_local %struct.uwb_rsv* @uwb_rsv_alloc(%struct.uwb_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
