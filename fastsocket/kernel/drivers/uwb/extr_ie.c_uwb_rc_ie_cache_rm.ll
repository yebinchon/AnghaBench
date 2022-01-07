; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_ie.c_uwb_rc_ie_cache_rm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_ie.c_uwb_rc_ie_cache_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }
%struct.uwb_ie_hdr = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, i32)* @uwb_rc_ie_cache_rm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_rc_ie_cache_rm(%struct.uwb_rc* %0, i32 %1) #0 {
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uwb_ie_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %10 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @le16_to_cpu(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %16 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %45, %2
  %22 = call %struct.uwb_ie_hdr* @uwb_ie_next(i8** %7, i64* %8)
  store %struct.uwb_ie_hdr* %22, %struct.uwb_ie_hdr** %5, align 8
  %23 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %5, align 8
  %24 = icmp ne %struct.uwb_ie_hdr* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %46

26:                                               ; preds = %21
  %27 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %5, align 8
  %28 = getelementptr inbounds %struct.uwb_ie_hdr, %struct.uwb_ie_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %5, align 8
  %34 = getelementptr inbounds %struct.uwb_ie_hdr, %struct.uwb_ie_hdr* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add i64 16, %35
  %37 = load i64, i64* %6, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %6, align 8
  %39 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %5, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @memmove(%struct.uwb_ie_hdr* %39, i8* %40, i64 %41)
  %43 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %5, align 8
  %44 = bitcast %struct.uwb_ie_hdr* %43 to i8*
  store i8* %44, i8** %7, align 8
  br label %45

45:                                               ; preds = %32, %26
  br label %21

46:                                               ; preds = %25
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @cpu_to_le16(i64 %47)
  %49 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %50 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.uwb_ie_hdr* @uwb_ie_next(i8**, i64*) #1

declare dso_local i32 @memmove(%struct.uwb_ie_hdr*, i8*, i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
