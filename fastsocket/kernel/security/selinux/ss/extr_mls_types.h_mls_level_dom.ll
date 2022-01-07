; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_mls_types.h_mls_level_dom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_mls_types.h_mls_level_dom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mls_level = type { i64, i32 }

@selinux_mls_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mls_level*, %struct.mls_level*)* @mls_level_dom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mls_level_dom(%struct.mls_level* %0, %struct.mls_level* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mls_level*, align 8
  %5 = alloca %struct.mls_level*, align 8
  store %struct.mls_level* %0, %struct.mls_level** %4, align 8
  store %struct.mls_level* %1, %struct.mls_level** %5, align 8
  %6 = load i32, i32* @selinux_mls_enabled, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %27

9:                                                ; preds = %2
  %10 = load %struct.mls_level*, %struct.mls_level** %4, align 8
  %11 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.mls_level*, %struct.mls_level** %5, align 8
  %14 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %9
  %18 = load %struct.mls_level*, %struct.mls_level** %4, align 8
  %19 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %18, i32 0, i32 1
  %20 = load %struct.mls_level*, %struct.mls_level** %5, align 8
  %21 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %20, i32 0, i32 1
  %22 = call i64 @ebitmap_contains(i32* %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %17, %9
  %25 = phi i1 [ false, %9 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %8
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @ebitmap_contains(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
