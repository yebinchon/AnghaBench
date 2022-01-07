; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfMicAppendByte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfMicAppendByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zsMicVar = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfMicAppendByte(i32 %0, %struct.zsMicVar* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zsMicVar*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.zsMicVar* %1, %struct.zsMicVar** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %7 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = mul nsw i32 8, %8
  %10 = shl i32 %5, %9
  %11 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %12 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %16 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %20 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 4
  br i1 %22, label %23, label %102

23:                                               ; preds = %2
  %24 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %25 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %28 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %32 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ZM_ROL32(i32 %33, i32 17)
  %35 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %36 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %40 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %43 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %47 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, -16711936
  %50 = lshr i32 %49, 8
  %51 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %52 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 16711935
  %55 = shl i32 %54, 8
  %56 = or i32 %50, %55
  %57 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %58 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %62 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %65 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %69 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ZM_ROL32(i32 %70, i32 3)
  %72 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %73 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = xor i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %77 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %80 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %84 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ZM_ROR32(i32 %85, i32 2)
  %87 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %88 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = xor i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %92 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %95 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %99 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %98, i32 0, i32 0
  store i32 0, i32* %99, align 4
  %100 = load %struct.zsMicVar*, %struct.zsMicVar** %4, align 8
  %101 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %23, %2
  ret void
}

declare dso_local i32 @ZM_ROL32(i32, i32) #1

declare dso_local i32 @ZM_ROR32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
