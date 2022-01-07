; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_secattr_catmap_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_kapi.c_netlbl_secattr_catmap_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_lsm_secattr_catmap = type { i64, i64*, %struct.netlbl_lsm_secattr_catmap* }

@NETLBL_CATMAP_SIZE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NETLBL_CATMAP_MAPSIZE = common dso_local global i64 0, align 8
@NETLBL_CATMAP_BIT = common dso_local global i32 0, align 4
@NETLBL_CATMAP_MAPCNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_secattr_catmap_walk(%struct.netlbl_lsm_secattr_catmap* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netlbl_lsm_secattr_catmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netlbl_lsm_secattr_catmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.netlbl_lsm_secattr_catmap* %0, %struct.netlbl_lsm_secattr_catmap** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %4, align 8
  store %struct.netlbl_lsm_secattr_catmap* %10, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %13 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %11, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %34, %16
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %20 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NETLBL_CATMAP_SIZE, align 8
  %23 = add nsw i64 %21, %22
  %24 = icmp sge i64 %18, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %27 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %26, i32 0, i32 2
  %28 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %27, align 8
  store %struct.netlbl_lsm_secattr_catmap* %28, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %29 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %30 = icmp eq %struct.netlbl_lsm_secattr_catmap* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %114

34:                                               ; preds = %25
  br label %17

35:                                               ; preds = %17
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %38 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = load i64, i64* @NETLBL_CATMAP_MAPSIZE, align 8
  %42 = sdiv i64 %40, %41
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %45 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = load i64, i64* @NETLBL_CATMAP_MAPSIZE, align 8
  %49 = load i64, i64* %7, align 8
  %50 = mul nsw i64 %48, %49
  %51 = sub nsw i64 %47, %50
  store i64 %51, i64* %8, align 8
  br label %53

52:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %53

53:                                               ; preds = %52, %35
  %54 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %55 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = ashr i64 %59, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %106, %53
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %72, %66
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @NETLBL_CATMAP_BIT, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 1
  store i32 %74, i32* %9, align 4
  %75 = load i64, i64* %8, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %67

77:                                               ; preds = %67
  %78 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %79 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NETLBL_CATMAP_MAPSIZE, align 8
  %82 = load i64, i64* %7, align 8
  %83 = mul nsw i64 %81, %82
  %84 = add nsw i64 %80, %83
  %85 = load i64, i64* %8, align 8
  %86 = add nsw i64 %84, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %3, align 4
  br label %114

88:                                               ; preds = %63
  %89 = load i64, i64* %7, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %7, align 8
  %91 = load i64, i64* @NETLBL_CATMAP_MAPCNT, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %88
  %94 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %95 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %94, i32 0, i32 2
  %96 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %95, align 8
  %97 = icmp ne %struct.netlbl_lsm_secattr_catmap* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %100 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %99, i32 0, i32 2
  %101 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %100, align 8
  store %struct.netlbl_lsm_secattr_catmap* %101, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  store i64 0, i64* %7, align 8
  br label %105

102:                                              ; preds = %93
  %103 = load i32, i32* @ENOENT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %114

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %88
  %107 = load %struct.netlbl_lsm_secattr_catmap*, %struct.netlbl_lsm_secattr_catmap** %6, align 8
  %108 = getelementptr inbounds %struct.netlbl_lsm_secattr_catmap, %struct.netlbl_lsm_secattr_catmap* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %63

114:                                              ; preds = %102, %77, %31
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
