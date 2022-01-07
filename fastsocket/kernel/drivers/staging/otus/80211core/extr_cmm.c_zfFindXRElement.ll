; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfFindXRElement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfFindXRElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.zfFindXRElement.ouixr = private unnamed_addr constant [6 x i32] [i32 0, i32 3, i32 127, i32 3, i32 1, i32 0], align 16
@zgElementOffsetTable = common dso_local global i32* null, align 8
@ZM_WLAN_EID_VENDOR_PRIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfFindXRElement(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [6 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = bitcast [6 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([6 x i32]* @__const.zfFindXRElement.ouixr to i8*), i64 24, i1 false)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @zmw_get_wlan_dev(i32* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @zmw_rx_buf_readb(i32* %17, i32* %18, i32 0)
  %20 = ashr i32 %19, 4
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** @zgElementOffsetTable, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = icmp eq i32 %25, 255
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = call i32 @zm_assert(i32 0)
  br label %29

29:                                               ; preds = %27, %3
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 24
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @zfwBufGetSize(i32* %32, i32* %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %80, %29
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 2
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %90

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @zmw_rx_buf_readb(i32* %41, i32* %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* @ZM_WLAN_EID_VENDOR_PRIVATE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %80

47:                                               ; preds = %40
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @zmw_rx_buf_readb(i32* %48, i32* %49, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %53, %54
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 65535, i32* %4, align 4
  br label %91

58:                                               ; preds = %47
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 65535, i32* %4, align 4
  br label %91

62:                                               ; preds = %58
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 2
  %68 = call i64 @zfRxBufferEqualToStr(i32* %63, i32* %64, i32* %65, i32 %67, i32 6)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i32 @zmw_rx_buf_readb(i32* %71, i32* %72, i32 %74)
  %76 = icmp sge i32 %75, 6
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %91

79:                                               ; preds = %70, %62
  br label %80

80:                                               ; preds = %79, %40
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @zmw_rx_buf_readb(i32* %81, i32* %82, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 2
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %35

90:                                               ; preds = %35
  store i32 65535, i32* %4, align 4
  br label %91

91:                                               ; preds = %90, %77, %61, %57
  %92 = load i32, i32* %4, align 4
  ret i32 %92
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
