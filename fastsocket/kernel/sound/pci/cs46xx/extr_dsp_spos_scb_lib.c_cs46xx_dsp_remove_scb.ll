; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_remove_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_remove_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { i32, i64, i64, %struct.dsp_scb_descriptor* }
%struct.dsp_scb_descriptor = type { i32, i64, i64, i32, i32, i32 }

@i = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cs46xx_dsp_remove_scb(%struct.snd_cs46xx* %0, %struct.dsp_scb_descriptor* %1) #0 {
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca %struct.dsp_scb_descriptor*, align 8
  %5 = alloca %struct.dsp_spos_instance*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  store %struct.dsp_scb_descriptor* %1, %struct.dsp_scb_descriptor** %4, align 8
  %7 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %8 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %7, i32 0, i32 0
  %9 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  store %struct.dsp_spos_instance* %9, %struct.dsp_spos_instance** %5, align 8
  %10 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %4, align 8
  %11 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %2
  %15 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %4, align 8
  %16 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %19 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %14
  %23 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %24 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %23, i32 0, i32 3
  %25 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %24, align 8
  %26 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %4, align 8
  %27 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %25, i64 %29
  %31 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %4, align 8
  %32 = icmp ne %struct.dsp_scb_descriptor* %30, %31
  br label %33

33:                                               ; preds = %22, %14, %2
  %34 = phi i1 [ true, %14 ], [ true, %2 ], [ %32, %22 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @snd_BUG_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %122

39:                                               ; preds = %33
  %40 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %4, align 8
  %41 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %40, i32 0, i32 5
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %45 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %4, align 8
  %46 = call i32 @_dsp_unlink_scb(%struct.snd_cs46xx* %44, %struct.dsp_scb_descriptor* %45)
  %47 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %4, align 8
  %48 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %47, i32 0, i32 5
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %4, align 8
  %52 = call i32 @cs46xx_dsp_proc_free_scb_desc(%struct.dsp_scb_descriptor* %51)
  %53 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %4, align 8
  %54 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @snd_BUG_ON(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %39
  br label %122

62:                                               ; preds = %39
  %63 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %64 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %4, align 8
  %65 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @remove_symbol(%struct.snd_cs46xx* %63, i32 %66)
  %68 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %69 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %68, i32 0, i32 3
  %70 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %69, align 8
  %71 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %4, align 8
  %72 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %70, i64 %74
  %76 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %75, i32 0, i32 3
  store i32 1, i32* %76, align 8
  %77 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %4, align 8
  %78 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %82 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ult i64 %80, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %62
  %86 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %4, align 8
  %87 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %91 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %85, %62
  %93 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %4, align 8
  %94 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %97 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = icmp eq i32 %95, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %92
  %102 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %103 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %101, %92
  %107 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %108 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %111 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = icmp ugt i64 %109, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %106
  %116 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %117 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %5, align 8
  %121 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %38, %61, %115, %106
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_dsp_unlink_scb(%struct.snd_cs46xx*, %struct.dsp_scb_descriptor*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cs46xx_dsp_proc_free_scb_desc(%struct.dsp_scb_descriptor*) #1

declare dso_local i32 @remove_symbol(%struct.snd_cs46xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
