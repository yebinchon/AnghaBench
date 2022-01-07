; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_connect_codecplay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_connect_codecplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @vortex_connect_codecplay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_connect_codecplay(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = call i32 @ADB_EQIN(i32 0)
  %13 = call i32 @vortex_connection_mix_adb(i32* %7, i32 %8, i32 17, i8 zeroext %11, i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = call i32 @ADB_EQIN(i32 1)
  %20 = call i32 @vortex_connection_mix_adb(i32* %14, i32 %15, i32 17, i8 zeroext %18, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = call i32 @vortex_mix_setvolumebyte(i32* %21, i8 zeroext %24, i32 0)
  %26 = load i32*, i32** %4, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @vortex_mix_setvolumebyte(i32* %26, i8 zeroext %29, i32 0)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ADB_EQOUT(i32 0)
  %34 = call i32 @ADB_CODECOUT(i32 0)
  %35 = call i32 @vortex_route(i32* %31, i32 %32, i32 17, i32 %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ADB_EQOUT(i32 1)
  %39 = call i32 @ADB_CODECOUT(i32 1)
  %40 = call i32 @vortex_route(i32* %36, i32 %37, i32 17, i32 %38, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @VORTEX_IS_QUAD(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %3
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @ADB_CODECOUT(i32 4)
  %51 = call i32 @vortex_connection_mix_adb(i32* %45, i32 %46, i32 17, i8 zeroext %49, i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 3
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @ADB_CODECOUT(i32 5)
  %58 = call i32 @vortex_connection_mix_adb(i32* %52, i32 %53, i32 17, i8 zeroext %56, i32 %57)
  br label %59

59:                                               ; preds = %44, %3
  ret void
}

declare dso_local i32 @vortex_connection_mix_adb(i32*, i32, i32, i8 zeroext, i32) #1

declare dso_local i32 @ADB_EQIN(i32) #1

declare dso_local i32 @vortex_mix_setvolumebyte(i32*, i8 zeroext, i32) #1

declare dso_local i32 @vortex_route(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ADB_EQOUT(i32) #1

declare dso_local i32 @ADB_CODECOUT(i32) #1

declare dso_local i64 @VORTEX_IS_QUAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
