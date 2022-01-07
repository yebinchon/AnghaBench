; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfTkipGetseeds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfTkipGetseeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zsTkipSeed = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfTkipGetseeds(i32 %0, i32* %1, %struct.zsTkipSeed* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.zsTkipSeed*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.zsTkipSeed* %2, %struct.zsTkipSeed** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ZM_HI8(i32 %7)
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ZM_HI8(i32 %11)
  %13 = or i32 %12, 32
  %14 = and i32 %13, 127
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ZM_LO8(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %6, align 8
  %22 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %6, align 8
  %27 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %6, align 8
  %32 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ZM_BYTE_TO_WORD(i32 %30, i32 %35)
  %37 = xor i32 %25, %36
  %38 = ashr i32 %37, 1
  %39 = and i32 %38, 255
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %6, align 8
  %43 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 255
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %6, align 8
  %51 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 8
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %6, align 8
  %59 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 255
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 6
  store i32 %63, i32* %65, align 4
  %66 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %6, align 8
  %67 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 8
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 7
  store i32 %71, i32* %73, align 4
  %74 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %6, align 8
  %75 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 255
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  store i32 %79, i32* %81, align 4
  %82 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %6, align 8
  %83 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 8
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 9
  store i32 %87, i32* %89, align 4
  %90 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %6, align 8
  %91 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 255
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 10
  store i32 %95, i32* %97, align 4
  %98 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %6, align 8
  %99 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 8
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 11
  store i32 %103, i32* %105, align 4
  %106 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %6, align 8
  %107 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 255
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 12
  store i32 %111, i32* %113, align 4
  %114 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %6, align 8
  %115 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 8
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 13
  store i32 %119, i32* %121, align 4
  %122 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %6, align 8
  %123 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 5
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 255
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 14
  store i32 %127, i32* %129, align 4
  %130 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %6, align 8
  %131 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 5
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %134, 8
  %136 = load i32*, i32** %5, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 15
  store i32 %135, i32* %137, align 4
  ret void
}

declare dso_local i32 @ZM_HI8(i32) #1

declare dso_local i32 @ZM_LO8(i32) #1

declare dso_local i32 @ZM_BYTE_TO_WORD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
