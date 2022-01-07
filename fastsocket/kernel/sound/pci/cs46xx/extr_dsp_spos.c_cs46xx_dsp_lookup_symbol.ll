; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_lookup_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_lookup_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp_symbol_entry = type { i32, i32, i64 }
%struct.snd_cs46xx = type { %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dsp_symbol_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dsp_symbol_entry* @cs46xx_dsp_lookup_symbol(%struct.snd_cs46xx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dsp_symbol_entry*, align 8
  %5 = alloca %struct.snd_cs46xx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dsp_spos_instance*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %11 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %10, i32 0, i32 0
  %12 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %11, align 8
  store %struct.dsp_spos_instance* %12, %struct.dsp_spos_instance** %9, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %66, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %9, align 8
  %16 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %13
  %21 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %9, align 8
  %22 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %24, i64 %26
  %28 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %66

32:                                               ; preds = %20
  %33 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %9, align 8
  %34 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %36, i64 %38
  %40 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strcmp(i32 %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %32
  %46 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %9, align 8
  %47 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %49, i64 %51
  %53 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %45
  %58 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %9, align 8
  %59 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %61, i64 %63
  store %struct.dsp_symbol_entry* %64, %struct.dsp_symbol_entry** %4, align 8
  br label %70

65:                                               ; preds = %45, %32
  br label %66

66:                                               ; preds = %65, %31
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %13

69:                                               ; preds = %13
  store %struct.dsp_symbol_entry* null, %struct.dsp_symbol_entry** %4, align 8
  br label %70

70:                                               ; preds = %69, %57
  %71 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %4, align 8
  ret %struct.dsp_symbol_entry* %71
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
