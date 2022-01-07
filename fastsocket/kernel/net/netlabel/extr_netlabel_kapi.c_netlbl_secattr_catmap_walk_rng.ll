; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_secattr_catmap_walk_rng.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_secattr_catmap_walk_rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_secattr_catmap = type { i64, i32*, %struct.netlbl_lsm_secattr_catmap* }

@NETLBL_CATMAP_SIZE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NETLBL_CATMAP_MAPSIZE = common dso_local global i64 0, align 8
@NETLBL_CATMAP_BIT = common dso_local global i64 0, align 8
@NETLBL_CATMAP_MAPCNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_secattr_catmap_walk_rng(%struct.netlbl_lsm_secattr_catmap* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netlbl_lsm_secattr_catmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netlbl_lsm_secattr_catmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.netlbl_lsm_secattr_catmap* %0, %struct.netlbl_lsm_secattr_catmap** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %4, align 8
  store %struct.netlbl_lsm_secattr_catmap* %11, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %14 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %53

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %21 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NETLBL_CATMAP_SIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = icmp sge i64 %19, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %28 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %27, i32 0, i32 2
  %29 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %28, align 8
  store %struct.netlbl_lsm_secattr_catmap* %29, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %30 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %31 = icmp eq %struct.netlbl_lsm_secattr_catmap* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %122

35:                                               ; preds = %26
  br label %18

36:                                               ; preds = %18
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %39 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = load i64, i64* @NETLBL_CATMAP_MAPSIZE, align 8
  %43 = sdiv i64 %41, %42
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %46 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = load i64, i64* @NETLBL_CATMAP_MAPSIZE, align 8
  %50 = load i64, i64* %7, align 8
  %51 = mul nsw i64 %49, %50
  %52 = sub nsw i64 %48, %51
  store i64 %52, i64* %8, align 8
  br label %54

53:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i64, i64* @NETLBL_CATMAP_BIT, align 8
  %56 = load i64, i64* %8, align 8
  %57 = shl i64 %55, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %119, %54
  %60 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %61 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %76, %59
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %69, %66
  %75 = phi i1 [ false, %66 ], [ %73, %69 ]
  br i1 %75, label %76, label %81

76:                                               ; preds = %74
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = load i64, i64* %8, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %66

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %86 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NETLBL_CATMAP_MAPSIZE, align 8
  %89 = load i64, i64* %7, align 8
  %90 = mul nsw i64 %88, %89
  %91 = add nsw i64 %87, %90
  %92 = load i64, i64* %8, align 8
  %93 = add nsw i64 %91, %92
  %94 = sub nsw i64 %93, 1
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %3, align 4
  br label %122

96:                                               ; preds = %81
  %97 = load i64, i64* %7, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* @NETLBL_CATMAP_MAPCNT, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %96
  %102 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %103 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %102, i32 0, i32 2
  %104 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %103, align 8
  %105 = icmp eq %struct.netlbl_lsm_secattr_catmap* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %108 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @NETLBL_CATMAP_SIZE, align 8
  %111 = add nsw i64 %109, %110
  %112 = sub nsw i64 %111, 1
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %3, align 4
  br label %122

114:                                              ; preds = %101
  %115 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %116 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %115, i32 0, i32 2
  %117 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %116, align 8
  store %struct.netlbl_lsm_secattr_catmap* %117, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  store i64 0, i64* %7, align 8
  br label %118

118:                                              ; preds = %114, %96
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* @NETLBL_CATMAP_BIT, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %59

122:                                              ; preds = %106, %84, %32
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
