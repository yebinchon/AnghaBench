; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_next_option.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ndisc.c_ndisc_next_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_opt_hdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nd_opt_hdr* (%struct.nd_opt_hdr*, %struct.nd_opt_hdr*)* @ndisc_next_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nd_opt_hdr* @ndisc_next_option(%struct.nd_opt_hdr* %0, %struct.nd_opt_hdr* %1) #0 {
  %3 = alloca %struct.nd_opt_hdr*, align 8
  %4 = alloca %struct.nd_opt_hdr*, align 8
  %5 = alloca %struct.nd_opt_hdr*, align 8
  %6 = alloca i32, align 4
  store %struct.nd_opt_hdr* %0, %struct.nd_opt_hdr** %4, align 8
  store %struct.nd_opt_hdr* %1, %struct.nd_opt_hdr** %5, align 8
  %7 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %8 = icmp ne %struct.nd_opt_hdr* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %5, align 8
  %11 = icmp ne %struct.nd_opt_hdr* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %14 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %5, align 8
  %15 = icmp uge %struct.nd_opt_hdr* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %9, %2
  store %struct.nd_opt_hdr* null, %struct.nd_opt_hdr** %3, align 8
  br label %58

17:                                               ; preds = %12
  %18 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %19 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %41, %17
  %22 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %23 = bitcast %struct.nd_opt_hdr* %22 to i8*
  %24 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %25 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %23, i64 %28
  %30 = bitcast i8* %29 to %struct.nd_opt_hdr*
  store %struct.nd_opt_hdr* %30, %struct.nd_opt_hdr** %4, align 8
  br label %31

31:                                               ; preds = %21
  %32 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %33 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %5, align 8
  %34 = icmp ult %struct.nd_opt_hdr* %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %37 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %38, %39
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi i1 [ false, %31 ], [ %40, %35 ]
  br i1 %42, label %21, label %43

43:                                               ; preds = %41
  %44 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %45 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %5, align 8
  %46 = icmp ule %struct.nd_opt_hdr* %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %49 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  br label %56

55:                                               ; preds = %47, %43
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi %struct.nd_opt_hdr* [ %54, %53 ], [ null, %55 ]
  store %struct.nd_opt_hdr* %57, %struct.nd_opt_hdr** %3, align 8
  br label %58

58:                                               ; preds = %56, %16
  %59 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %3, align 8
  ret %struct.nd_opt_hdr* %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
