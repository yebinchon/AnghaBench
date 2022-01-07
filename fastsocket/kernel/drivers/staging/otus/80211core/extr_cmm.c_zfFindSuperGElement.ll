; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfFindSuperGElement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfFindSuperGElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.zfFindSuperGElement.ouiSuperG = private unnamed_addr constant [6 x i32] [i32 0, i32 3, i32 127, i32 1, i32 1, i32 0], align 16
@zgElementOffsetTable = common dso_local global i32* null, align 8
@ZM_WLAN_EID_VENDOR_PRIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfFindSuperGElement(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [6 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = bitcast [6 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([6 x i32]* @__const.zfFindSuperGElement.ouiSuperG to i8*), i64 24, i1 false)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @zmw_get_wlan_dev(i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @zmw_rx_buf_readb(i32* %18, i32* %19, i32 0)
  %21 = ashr i32 %20, 4
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** @zgElementOffsetTable, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = icmp eq i32 %26, 255
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = call i32 @zm_assert(i32 0)
  br label %30

30:                                               ; preds = %28, %3
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 24
  store i32 %32, i32* %9, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @zfwBufGetSize(i32* %33, i32* %34)
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %99, %30
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 2
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %109

41:                                               ; preds = %36
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @zmw_rx_buf_readb(i32* %42, i32* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* @ZM_WLAN_EID_VENDOR_PRIVATE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %99

48:                                               ; preds = %41
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @zmw_rx_buf_readb(i32* %49, i32* %50, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %54, %55
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 65535, i32* %4, align 4
  br label %110

59:                                               ; preds = %48
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 65535, i32* %4, align 4
  br label %110

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 2
  %69 = call i64 @zfRxBufferEqualToStr(i32* %64, i32* %65, i32* %66, i32 %68, i32 6)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %63
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @zmw_rx_buf_readb(i32* %72, i32* %73, i32 %75)
  %77 = icmp sge i32 %76, 6
  br i1 %77, label %78, label %98

78:                                               ; preds = %71
  %79 = load i32*, i32** %5, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 8
  %83 = call i32 @zmw_rx_buf_readb(i32* %79, i32* %80, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %13, align 4
  %89 = and i32 %88, 2
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  %93 = and i32 %92, 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91, %87, %78
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %4, align 4
  br label %110

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97, %71, %63
  br label %99

99:                                               ; preds = %98, %41
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  %104 = call i32 @zmw_rx_buf_readb(i32* %100, i32* %101, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 2
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %36

109:                                              ; preds = %36
  store i32 65535, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %95, %62, %58
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zmw_get_wlan_dev(i32*) #2

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #2

declare dso_local i32 @zm_assert(i32) #2

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #2

declare dso_local i64 @zfRxBufferEqualToStr(i32*, i32*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
