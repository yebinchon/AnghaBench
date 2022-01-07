; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_ShadowWrite4Byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_ShadowWrite4Byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i8*** }

@EFUSE_MODIFY_MAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64, i32)* @efuse_ShadowWrite4Byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efuse_ShadowWrite4Byte(%struct.net_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %8)
  store %struct.r8192_priv* %9, %struct.r8192_priv** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 255
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 0
  %16 = load i8***, i8**** %15, align 8
  %17 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %18 = getelementptr inbounds i8**, i8*** %16, i64 %17
  %19 = load i8**, i8*** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  store i8* %13, i8** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %28 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %27, i32 0, i32 0
  %29 = load i8***, i8**** %28, align 8
  %30 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %31 = getelementptr inbounds i8**, i8*** %29, i64 %30
  %32 = load i8**, i8*** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  store i8* %26, i8** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %42 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %41, i32 0, i32 0
  %43 = load i8***, i8**** %42, align 8
  %44 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %45 = getelementptr inbounds i8**, i8*** %43, i64 %44
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 2
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %40, i8** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 24
  %52 = and i32 %51, 255
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %56 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %55, i32 0, i32 0
  %57 = load i8***, i8**** %56, align 8
  %58 = load i64, i64* @EFUSE_MODIFY_MAP, align 8
  %59 = getelementptr inbounds i8**, i8*** %57, i64 %58
  %60 = load i8**, i8*** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, 3
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %54, i8** %63, align 8
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
