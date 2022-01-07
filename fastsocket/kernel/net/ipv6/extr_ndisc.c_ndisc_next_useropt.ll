; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_next_useropt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_next_useropt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_opt_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nd_opt_hdr* (%struct.nd_opt_hdr*, %struct.nd_opt_hdr*)* @ndisc_next_useropt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nd_opt_hdr* @ndisc_next_useropt(%struct.nd_opt_hdr* %0, %struct.nd_opt_hdr* %1) #0 {
  %3 = alloca %struct.nd_opt_hdr*, align 8
  %4 = alloca %struct.nd_opt_hdr*, align 8
  %5 = alloca %struct.nd_opt_hdr*, align 8
  store %struct.nd_opt_hdr* %0, %struct.nd_opt_hdr** %4, align 8
  store %struct.nd_opt_hdr* %1, %struct.nd_opt_hdr** %5, align 8
  %6 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %7 = icmp ne %struct.nd_opt_hdr* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %5, align 8
  %10 = icmp ne %struct.nd_opt_hdr* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %13 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %5, align 8
  %14 = icmp uge %struct.nd_opt_hdr* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %8, %2
  store %struct.nd_opt_hdr* null, %struct.nd_opt_hdr** %3, align 8
  br label %51

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %36, %16
  %18 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %19 = bitcast %struct.nd_opt_hdr* %18 to i8*
  %20 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %21 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %19, i64 %24
  %26 = bitcast i8* %25 to %struct.nd_opt_hdr*
  store %struct.nd_opt_hdr* %26, %struct.nd_opt_hdr** %4, align 8
  br label %27

27:                                               ; preds = %17
  %28 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %29 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %5, align 8
  %30 = icmp ult %struct.nd_opt_hdr* %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %33 = call i64 @ndisc_is_useropt(%struct.nd_opt_hdr* %32)
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i1 [ false, %27 ], [ %35, %31 ]
  br i1 %37, label %17, label %38

38:                                               ; preds = %36
  %39 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %40 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %5, align 8
  %41 = icmp ule %struct.nd_opt_hdr* %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %44 = call i64 @ndisc_is_useropt(%struct.nd_opt_hdr* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  br label %49

48:                                               ; preds = %42, %38
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi %struct.nd_opt_hdr* [ %47, %46 ], [ null, %48 ]
  store %struct.nd_opt_hdr* %50, %struct.nd_opt_hdr** %3, align 8
  br label %51

51:                                               ; preds = %49, %15
  %52 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %3, align 8
  ret %struct.nd_opt_hdr* %52
}

declare dso_local i64 @ndisc_is_useropt(%struct.nd_opt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
