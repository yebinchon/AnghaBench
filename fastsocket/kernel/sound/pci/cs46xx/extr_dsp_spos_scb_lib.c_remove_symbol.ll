; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_remove_symbol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_remove_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.dsp_symbol_entry* }
%struct.dsp_symbol_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cs46xx*, %struct.dsp_symbol_entry*)* @remove_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_symbol(%struct.snd_cs46xx* %0, %struct.dsp_symbol_entry* %1) #0 {
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca %struct.dsp_symbol_entry*, align 8
  %5 = alloca %struct.dsp_spos_instance*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  store %struct.dsp_symbol_entry* %1, %struct.dsp_symbol_entry** %4, align 8
  %7 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %8 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %7, i32 0, i32 0
  %9 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  store %struct.dsp_spos_instance* %9, %struct.dsp_spos_instance** %5, align 8
  %10 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %4, align 8
  %11 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %12 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %13, align 8
  %15 = ptrtoint %struct.dsp_symbol_entry* %10 to i64
  %16 = ptrtoint %struct.dsp_symbol_entry* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %21 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @snd_BUG_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %97

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %35 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %33, %37
  br label %39

39:                                               ; preds = %32, %29
  %40 = phi i1 [ true, %29 ], [ %38, %32 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @snd_BUG_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %97

45:                                               ; preds = %39
  %46 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %47 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %49, i64 %51
  %53 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %56 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %63 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %45
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %68 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = icmp eq i32 %66, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %75 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %65
  %80 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %81 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %85 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %83, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %79
  %90 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %91 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %95 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  br label %97

97:                                               ; preds = %28, %44, %89, %79
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
