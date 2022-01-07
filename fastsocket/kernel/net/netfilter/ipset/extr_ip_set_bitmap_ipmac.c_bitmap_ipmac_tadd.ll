; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_tadd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_tadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.bitmap_ipmac* }
%struct.bitmap_ipmac = type { i32 }
%struct.ipmac = type { i32, i32 }
%struct.ipmac_telem = type { i32, i32, i32 }

@IPSET_FLAG_EXIST = common dso_local global i32 0, align 4
@IPSET_ERR_EXIST = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, i8*, i32, i32)* @bitmap_ipmac_tadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ipmac_tadd(%struct.ip_set* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_set*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bitmap_ipmac*, align 8
  %11 = alloca %struct.ipmac*, align 8
  %12 = alloca %struct.ipmac_telem*, align 8
  %13 = alloca i32, align 4
  store %struct.ip_set* %0, %struct.ip_set** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ip_set*, %struct.ip_set** %6, align 8
  %15 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %14, i32 0, i32 0
  %16 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %15, align 8
  store %struct.bitmap_ipmac* %16, %struct.bitmap_ipmac** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.ipmac*
  store %struct.ipmac* %18, %struct.ipmac** %11, align 8
  %19 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %10, align 8
  %20 = load %struct.ipmac*, %struct.ipmac** %11, align 8
  %21 = getelementptr inbounds %struct.ipmac, %struct.ipmac* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ipmac_telem* @bitmap_ipmac_elem(%struct.bitmap_ipmac* %19, i32 %22)
  store %struct.ipmac_telem* %23, %struct.ipmac_telem** %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @IPSET_FLAG_EXIST, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %13, align 4
  %27 = load %struct.ipmac_telem*, %struct.ipmac_telem** %12, align 8
  %28 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %113 [
    i32 128, label %30
    i32 129, label %66
    i32 130, label %80
  ]

30:                                               ; preds = %4
  %31 = load %struct.ipmac*, %struct.ipmac** %11, align 8
  %32 = getelementptr inbounds %struct.ipmac, %struct.ipmac* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @IPSET_ERR_EXIST, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %114

41:                                               ; preds = %35, %30
  %42 = load %struct.ipmac_telem*, %struct.ipmac_telem** %12, align 8
  %43 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ipmac*, %struct.ipmac** %11, align 8
  %46 = getelementptr inbounds %struct.ipmac, %struct.ipmac* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @memcpy(i32 %44, i32 %47, i32 %48)
  %50 = load %struct.ipmac_telem*, %struct.ipmac_telem** %12, align 8
  %51 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %50, i32 0, i32 0
  store i32 129, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %10, align 8
  %54 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %41
  %58 = load %struct.ipmac_telem*, %struct.ipmac_telem** %12, align 8
  %59 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %57, %41
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @ip_set_timeout_set(i32 %62)
  %64 = load %struct.ipmac_telem*, %struct.ipmac_telem** %12, align 8
  %65 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %113

66:                                               ; preds = %4
  %67 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %10, align 8
  %68 = load %struct.ipmac*, %struct.ipmac** %11, align 8
  %69 = getelementptr inbounds %struct.ipmac, %struct.ipmac* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bitmap_expired(%struct.bitmap_ipmac* %67, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @IPSET_ERR_EXIST, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %114

79:                                               ; preds = %73, %66
  br label %80

80:                                               ; preds = %4, %79
  %81 = load %struct.ipmac*, %struct.ipmac** %11, align 8
  %82 = getelementptr inbounds %struct.ipmac, %struct.ipmac* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load %struct.ipmac_telem*, %struct.ipmac_telem** %12, align 8
  %87 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ipmac*, %struct.ipmac** %11, align 8
  %90 = getelementptr inbounds %struct.ipmac, %struct.ipmac* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ETH_ALEN, align 4
  %93 = call i32 @memcpy(i32 %88, i32 %91, i32 %92)
  %94 = load %struct.ipmac_telem*, %struct.ipmac_telem** %12, align 8
  %95 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %94, i32 0, i32 0
  store i32 129, i32* %95, align 4
  br label %99

96:                                               ; preds = %80
  %97 = load %struct.ipmac_telem*, %struct.ipmac_telem** %12, align 8
  %98 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %97, i32 0, i32 0
  store i32 128, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %85
  %100 = load %struct.ipmac*, %struct.ipmac** %11, align 8
  %101 = getelementptr inbounds %struct.ipmac, %struct.ipmac* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @ip_set_timeout_set(i32 %105)
  br label %109

107:                                              ; preds = %99
  %108 = load i32, i32* %8, align 4
  br label %109

109:                                              ; preds = %107, %104
  %110 = phi i32 [ %106, %104 ], [ %108, %107 ]
  %111 = load %struct.ipmac_telem*, %struct.ipmac_telem** %12, align 8
  %112 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %4, %109, %61
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %113, %76, %38
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.ipmac_telem* @bitmap_ipmac_elem(%struct.bitmap_ipmac*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ip_set_timeout_set(i32) #1

declare dso_local i32 @bitmap_expired(%struct.bitmap_ipmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
