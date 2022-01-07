; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_xencomm.c_xencomm_create_mini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_xencomm.c_xencomm_create_mini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencomm_mini = type { i32 }
%struct.xencomm_desc = type { i32 }

@XENCOMM_MINI_ADDRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.xencomm_mini*, %struct.xencomm_desc**)* @xencomm_create_mini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xencomm_create_mini(i8* %0, i64 %1, %struct.xencomm_mini* %2, %struct.xencomm_desc** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xencomm_mini*, align 8
  %8 = alloca %struct.xencomm_desc**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xencomm_desc*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.xencomm_mini* %2, %struct.xencomm_mini** %7, align 8
  store %struct.xencomm_desc** %3, %struct.xencomm_desc*** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.xencomm_mini*, %struct.xencomm_mini** %7, align 8
  %12 = ptrtoint %struct.xencomm_mini* %11 to i64
  %13 = urem i64 %12, 4
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.xencomm_mini*, %struct.xencomm_mini** %7, align 8
  %18 = bitcast %struct.xencomm_mini* %17 to i8*
  %19 = bitcast i8* %18 to %struct.xencomm_desc*
  store %struct.xencomm_desc* %19, %struct.xencomm_desc** %10, align 8
  %20 = load i32, i32* @XENCOMM_MINI_ADDRS, align 4
  %21 = load %struct.xencomm_desc*, %struct.xencomm_desc** %10, align 8
  %22 = getelementptr inbounds %struct.xencomm_desc, %struct.xencomm_desc* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.xencomm_desc*, %struct.xencomm_desc** %10, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @xencomm_init(%struct.xencomm_desc* %23, i8* %24, i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load %struct.xencomm_desc*, %struct.xencomm_desc** %10, align 8
  %31 = load %struct.xencomm_desc**, %struct.xencomm_desc*** %8, align 8
  store %struct.xencomm_desc* %30, %struct.xencomm_desc** %31, align 8
  br label %32

32:                                               ; preds = %29, %4
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @xencomm_init(%struct.xencomm_desc*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
