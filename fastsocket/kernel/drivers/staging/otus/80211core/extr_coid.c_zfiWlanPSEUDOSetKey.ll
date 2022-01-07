; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiWlanPSEUDOSetKey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiWlanPSEUDOSetKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i8* }
%struct.zsKeyInfo = type { i32, i32, i32*, i64 }

@ZM_WEP64 = common dso_local global i8* null, align 8
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_WEP128 = common dso_local global i8* null, align 8
@ZM_WEP256 = common dso_local global i8* null, align 8
@ZM_AES = common dso_local global i8* null, align 8
@ZM_TKIP = common dso_local global i8* null, align 8
@ZM_NO_WEP = common dso_local global i8* null, align 8
@ZM_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ZM_CENC = common dso_local global i8* null, align 8
@ZM_KEY_FLAG_CENC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfiWlanPSEUDOSetKey(i32* %0, %struct.zsKeyInfo* byval(%struct.zsKeyInfo) align 8 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca [16 x i32], align 16
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @zmw_get_wlan_dev(i32* %5)
  %7 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %90 [
    i32 5, label %9
    i32 13, label %22
    i32 29, label %35
    i32 16, label %57
    i32 32, label %70
  ]

9:                                                ; preds = %2
  %10 = load i8*, i8** @ZM_WEP64, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i8* %10, i8** %13, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i8*, i8** @ZM_WEP64, align 8
  %16 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @zfCoreSetKey(i32* %14, i32 64, i32 0, i8* %15, i32* %18, i32* %20)
  br label %95

22:                                               ; preds = %2
  %23 = load i8*, i8** @ZM_WEP128, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i8*, i8** @ZM_WEP128, align 8
  %29 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @zfCoreSetKey(i32* %27, i32 64, i32 0, i8* %28, i32* %31, i32* %33)
  br label %95

35:                                               ; preds = %2
  %36 = load i8*, i8** @ZM_WEP256, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i8*, i8** @ZM_WEP256, align 8
  %42 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 16
  %48 = call i32 @zfCoreSetKey(i32* %40, i32 64, i32 1, i8* %41, i32* %44, i32* %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i8*, i8** @ZM_WEP256, align 8
  %51 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @zfCoreSetKey(i32* %49, i32 64, i32 0, i8* %50, i32* %53, i32* %55)
  br label %95

57:                                               ; preds = %2
  %58 = load i8*, i8** @ZM_AES, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = load i8*, i8** @ZM_AES, align 8
  %64 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @zfCoreSetKey(i32* %62, i32 64, i32 0, i8* %63, i32* %66, i32* %68)
  br label %95

70:                                               ; preds = %2
  %71 = load i8*, i8** @ZM_TKIP, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i8* %71, i8** %74, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = load i8*, i8** @ZM_TKIP, align 8
  %77 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i32*
  %80 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %81 = call i32 @zfCoreSetKey(i32* %75, i32 64, i32 1, i8* %76, i32* %79, i32* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = load i8*, i8** @ZM_TKIP, align 8
  %84 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = getelementptr inbounds %struct.zsKeyInfo, %struct.zsKeyInfo* %1, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @zfCoreSetKey(i32* %82, i32 64, i32 0, i8* %83, i32* %86, i32* %88)
  br label %95

90:                                               ; preds = %2
  %91 = load i8*, i8** @ZM_NO_WEP, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i8* %91, i8** %94, align 8
  br label %95

95:                                               ; preds = %90, %70, %57, %35, %22, %9
  %96 = load i32, i32* @ZM_STATUS_SUCCESS, align 4
  ret i32 %96
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfCoreSetKey(i32*, i32, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
