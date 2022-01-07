; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_radiotap.c_ieee80211_radiotap_iterator_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_radiotap.c_ieee80211_radiotap_iterator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_radiotap_iterator = type { i32, i32, i32, i32*, i32*, %struct.ieee80211_radiotap_header*, i32*, %struct.ieee80211_radiotap_vendor_namespaces*, i32*, i64, i64 }
%struct.ieee80211_radiotap_header = type { i32, i32, i64 }
%struct.ieee80211_radiotap_vendor_namespaces = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@radiotap_ns = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_radiotap_iterator_init(%struct.ieee80211_radiotap_iterator* %0, %struct.ieee80211_radiotap_header* %1, i32 %2, %struct.ieee80211_radiotap_vendor_namespaces* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_radiotap_iterator*, align 8
  %7 = alloca %struct.ieee80211_radiotap_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_radiotap_vendor_namespaces*, align 8
  store %struct.ieee80211_radiotap_iterator* %0, %struct.ieee80211_radiotap_iterator** %6, align 8
  store %struct.ieee80211_radiotap_header* %1, %struct.ieee80211_radiotap_header** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_radiotap_vendor_namespaces* %3, %struct.ieee80211_radiotap_vendor_namespaces** %9, align 8
  %10 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %11 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %115

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %19, i32 0, i32 1
  %21 = call i32 @get_unaligned_le16(i32* %20)
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %115

26:                                               ; preds = %17
  %27 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %28 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %28, i32 0, i32 5
  store %struct.ieee80211_radiotap_header* %27, %struct.ieee80211_radiotap_header** %29, align 8
  %30 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %30, i32 0, i32 1
  %32 = call i32 @get_unaligned_le16(i32* %31)
  %33 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %35, i32 0, i32 10
  store i64 0, i64* %36, align 8
  %37 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %37, i32 0, i32 0
  %39 = call i32 @get_unaligned_le32(i32* %38)
  %40 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %43 = bitcast %struct.ieee80211_radiotap_header* %42 to i32*
  %44 = getelementptr inbounds i32, i32* %43, i64 16
  %45 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  %47 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %47, i32 0, i32 9
  store i64 0, i64* %48, align 8
  %49 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %49, i32 0, i32 0
  %51 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %51, i32 0, i32 8
  store i32* %50, i32** %52, align 8
  %53 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %53, i32 0, i32 8
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %54, align 8
  %57 = load %struct.ieee80211_radiotap_vendor_namespaces*, %struct.ieee80211_radiotap_vendor_namespaces** %9, align 8
  %58 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %58, i32 0, i32 7
  store %struct.ieee80211_radiotap_vendor_namespaces* %57, %struct.ieee80211_radiotap_vendor_namespaces** %59, align 8
  %60 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %61 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %60, i32 0, i32 6
  store i32* @radiotap_ns, i32** %61, align 8
  %62 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %63 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IEEE80211_RADIOTAP_EXT, align 4
  %68 = shl i32 1, %67
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %109

71:                                               ; preds = %26
  br label %72

72:                                               ; preds = %103, %71
  %73 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %74 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @get_unaligned_le32(i32* %75)
  %77 = load i32, i32* @IEEE80211_RADIOTAP_EXT, align 4
  %78 = shl i32 1, %77
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %72
  %82 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %83 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32* %85, i32** %83, align 8
  %86 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %87 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = ptrtoint i32* %88 to i64
  %90 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %91 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %90, i32 0, i32 5
  %92 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %91, align 8
  %93 = ptrtoint %struct.ieee80211_radiotap_header* %92 to i64
  %94 = sub i64 %89, %93
  %95 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %96 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = icmp ugt i64 %94, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %81
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %115

103:                                              ; preds = %81
  br label %72

104:                                              ; preds = %72
  %105 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %106 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  store i32* %108, i32** %106, align 8
  br label %109

109:                                              ; preds = %104, %26
  %110 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %111 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %114 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %113, i32 0, i32 4
  store i32* %112, i32** %114, align 8
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %109, %100, %23, %14
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
