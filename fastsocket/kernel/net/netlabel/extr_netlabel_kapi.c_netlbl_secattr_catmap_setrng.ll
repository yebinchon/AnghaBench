; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_secattr_catmap_setrng.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_secattr_catmap_setrng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_secattr_catmap = type { i64, %struct.netlbl_lsm_secattr_catmap* }

@NETLBL_CATMAP_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_secattr_catmap_setrng(%struct.netlbl_lsm_secattr_catmap* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.netlbl_lsm_secattr_catmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.netlbl_lsm_secattr_catmap*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.netlbl_lsm_secattr_catmap* %0, %struct.netlbl_lsm_secattr_catmap** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %5, align 8
  store %struct.netlbl_lsm_secattr_catmap* %13, %struct.netlbl_lsm_secattr_catmap** %10, align 8
  br label %14

14:                                               ; preds = %29, %4
  %15 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %10, align 8
  %16 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %15, i32 0, i32 1
  %17 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %16, align 8
  %18 = icmp ne %struct.netlbl_lsm_secattr_catmap* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %10, align 8
  %22 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NETLBL_CATMAP_SIZE, align 8
  %25 = add nsw i64 %23, %24
  %26 = icmp sge i64 %20, %25
  br label %27

27:                                               ; preds = %19, %14
  %28 = phi i1 [ false, %14 ], [ %26, %19 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %10, align 8
  %31 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %30, i32 0, i32 1
  %32 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %31, align 8
  store %struct.netlbl_lsm_secattr_catmap* %32, %struct.netlbl_lsm_secattr_catmap** %10, align 8
  br label %14

33:                                               ; preds = %27
  %34 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %10, align 8
  %35 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NETLBL_CATMAP_SIZE, align 8
  %38 = add nsw i64 %36, %37
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %72, %33
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 0
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i1 [ false, %40 ], [ %46, %44 ]
  br i1 %48, label %49, label %75

49:                                               ; preds = %47
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %10, align 8
  %55 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %54, i32 0, i32 1
  %56 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %55, align 8
  %57 = icmp ne %struct.netlbl_lsm_secattr_catmap* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %10, align 8
  %60 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %59, i32 0, i32 1
  %61 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %60, align 8
  store %struct.netlbl_lsm_secattr_catmap* %61, %struct.netlbl_lsm_secattr_catmap** %10, align 8
  %62 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %10, align 8
  %63 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NETLBL_CATMAP_SIZE, align 8
  %66 = add nsw i64 %64, %65
  store i64 %66, i64* %11, align 8
  br label %67

67:                                               ; preds = %58, %53, %49
  %68 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %10, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i32, i32* @GFP_ATOMIC, align 4
  %71 = call i32 @netlbl_secattr_catmap_setbit(%struct.netlbl_lsm_secattr_catmap* %68, i64 %69, i32 %70)
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %67
  %73 = load i64, i64* %12, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %12, align 8
  br label %40

75:                                               ; preds = %47
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i32 @netlbl_secattr_catmap_setbit(%struct.netlbl_lsm_secattr_catmap*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
