; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_amd7930.c___amd7930_update_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_amd7930.c___amd7930_update_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_amd7930 = type { i64, i64, i32, %struct.amd7930_map }
%struct.amd7930_map = type { i8*, i8*, i8*, i8* }

@gx_coeff = common dso_local global i8** null, align 8
@ger_coeff = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_amd7930*)* @__amd7930_update_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__amd7930_update_map(%struct.snd_amd7930* %0) #0 {
  %2 = alloca %struct.snd_amd7930*, align 8
  %3 = alloca %struct.amd7930_map*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_amd7930* %0, %struct.snd_amd7930** %2, align 8
  %5 = load %struct.snd_amd7930*, %struct.snd_amd7930** %2, align 8
  %6 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %5, i32 0, i32 3
  store %struct.amd7930_map* %6, %struct.amd7930_map** %3, align 8
  %7 = load i8**, i8*** @gx_coeff, align 8
  %8 = load %struct.snd_amd7930*, %struct.snd_amd7930** %2, align 8
  %9 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8*, i8** %7, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.amd7930_map*, %struct.amd7930_map** %3, align 8
  %14 = getelementptr inbounds %struct.amd7930_map, %struct.amd7930_map* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load i8**, i8*** @gx_coeff, align 8
  %16 = load %struct.snd_amd7930*, %struct.snd_amd7930** %2, align 8
  %17 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8*, i8** %15, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.amd7930_map*, %struct.amd7930_map** %3, align 8
  %22 = getelementptr inbounds %struct.amd7930_map, %struct.amd7930_map* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.snd_amd7930*, %struct.snd_amd7930** %2, align 8
  %24 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i8**, i8*** @ger_coeff, align 8
  %27 = call i32 @ARRAY_SIZE(i8** %26)
  %28 = add nsw i32 256, %27
  %29 = mul nsw i32 %25, %28
  %30 = ashr i32 %29, 8
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %31, 256
  br i1 %32, label %33, label %47

33:                                               ; preds = %1
  %34 = load i8**, i8*** @ger_coeff, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %35, 256
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %34, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.amd7930_map*, %struct.amd7930_map** %3, align 8
  %41 = getelementptr inbounds %struct.amd7930_map, %struct.amd7930_map* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i8**, i8*** @gx_coeff, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 255
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.amd7930_map*, %struct.amd7930_map** %3, align 8
  %46 = getelementptr inbounds %struct.amd7930_map, %struct.amd7930_map* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %60

47:                                               ; preds = %1
  %48 = load i8**, i8*** @ger_coeff, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.amd7930_map*, %struct.amd7930_map** %3, align 8
  %52 = getelementptr inbounds %struct.amd7930_map, %struct.amd7930_map* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i8**, i8*** @gx_coeff, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.amd7930_map*, %struct.amd7930_map** %3, align 8
  %59 = getelementptr inbounds %struct.amd7930_map, %struct.amd7930_map* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %47, %33
  %61 = load %struct.snd_amd7930*, %struct.snd_amd7930** %2, align 8
  %62 = call i32 @__amd7930_write_map(%struct.snd_amd7930* %61)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @__amd7930_write_map(%struct.snd_amd7930*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
