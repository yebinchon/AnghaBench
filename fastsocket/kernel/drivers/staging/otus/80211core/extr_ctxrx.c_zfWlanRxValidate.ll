; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfWlanRxValidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfWlanRxValidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ZM_ERR_MIN_RX_ENCRYPT_FRAME_LENGTH = common dso_local global i32 0, align 4
@ZM_ERR_MIN_RX_FRAME_LENGTH = common dso_local global i32 0, align 4
@ZM_WLAN_MAX_RX_SIZE = common dso_local global i32 0, align 4
@ZM_ERR_MAX_RX_FRAME_LENGTH = common dso_local global i32 0, align 4
@ZM_WLAN_FRAME_TYPE_BAR = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_ERR_RX_BAR_FRAME = common dso_local global i32 0, align 4
@ZM_ERR_RX_FRAME_TYPE = common dso_local global i32 0, align 4
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_MODE_PSEUDO = common dso_local global i64 0, align 8
@ZM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfWlanRxValidate(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @zmw_get_wlan_dev(i32* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @zmw_rx_buf_readh(i32* %13, i32* %14, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 12
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 240
  %20 = ashr i32 %19, 4
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @zfwBufGetSize(i32* %21, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 8
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %26, %2
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 16384
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 32
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @ZM_ERR_MIN_RX_ENCRYPT_FRAME_LENGTH, align 4
  store i32 %37, i32* %3, align 4
  br label %115

38:                                               ; preds = %33
  br label %58

39:                                               ; preds = %29
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 5
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %45, label %51

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 36
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @ZM_ERR_MIN_RX_FRAME_LENGTH, align 4
  store i32 %49, i32* %3, align 4
  br label %115

50:                                               ; preds = %45
  br label %57

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 24
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @ZM_ERR_MIN_RX_FRAME_LENGTH, align 4
  store i32 %55, i32* %3, align 4
  br label %115

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %50
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @ZM_WLAN_MAX_RX_SIZE, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @ZM_ERR_MAX_RX_FRAME_LENGTH, align 4
  store i32 %63, i32* %3, align 4
  br label %115

64:                                               ; preds = %58
  br label %90

65:                                               ; preds = %26
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 255
  %68 = icmp eq i32 %67, 164
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %89

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 255
  %73 = load i32, i32* @ZM_WLAN_FRAME_TYPE_BAR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32*, i32** %4, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @zfAggRecvBAR(i32* %82, i32* %83)
  br label %85

85:                                               ; preds = %81, %75
  %86 = load i32, i32* @ZM_ERR_RX_BAR_FRAME, align 4
  store i32 %86, i32* %3, align 4
  br label %115

87:                                               ; preds = %70
  %88 = load i32, i32* @ZM_ERR_RX_FRAME_TYPE, align 4
  store i32 %88, i32* %3, align 4
  br label %115

89:                                               ; preds = %69
  br label %90

90:                                               ; preds = %89, %64
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ZM_MODE_AP, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %113

97:                                               ; preds = %90
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ZM_MODE_PSEUDO, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load i32*, i32** %4, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @zfStaRxValidateFrame(i32* %104, i32* %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* @ZM_SUCCESS, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %115

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %97
  br label %113

113:                                              ; preds = %112, %96
  %114 = load i32, i32* @ZM_SUCCESS, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %109, %87, %85, %62, %54, %48, %36
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_rx_buf_readh(i32*, i32*, i32) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zfAggRecvBAR(i32*, i32*) #1

declare dso_local i32 @zfStaRxValidateFrame(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
