; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c__dsp_create_generic_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c__dsp_create_generic_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32, %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { %struct.dsp_scb_descriptor* }
%struct.dsp_symbol_entry = type { i32 }
%struct.dsp_scb_descriptor = type { i32, %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor*, i32, %struct.dsp_symbol_entry* }

@SCBsubListPtr = common dso_local global i64 0, align 8
@SCBfuncEntryPtr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"dsp_spos: creating SCB <%s>\0A\00", align 1
@SCB_ON_PARENT_NEXT_SCB = common dso_local global i32 0, align 4
@SCB_ON_PARENT_SUBLIST_SCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dsp_scb_descriptor* (%struct.snd_cs46xx*, i8*, i32*, i32, %struct.dsp_symbol_entry*, %struct.dsp_scb_descriptor*, i32)* @_dsp_create_generic_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dsp_scb_descriptor* @_dsp_create_generic_scb(%struct.snd_cs46xx* %0, i8* %1, i32* %2, i32 %3, %struct.dsp_symbol_entry* %4, %struct.dsp_scb_descriptor* %5, i32 %6) #0 {
  %8 = alloca %struct.dsp_scb_descriptor*, align 8
  %9 = alloca %struct.snd_cs46xx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dsp_symbol_entry*, align 8
  %14 = alloca %struct.dsp_scb_descriptor*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dsp_spos_instance*, align 8
  %17 = alloca %struct.dsp_scb_descriptor*, align 8
  %18 = alloca i64, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.dsp_symbol_entry* %4, %struct.dsp_symbol_entry** %13, align 8
  store %struct.dsp_scb_descriptor* %5, %struct.dsp_scb_descriptor** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %20 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %19, i32 0, i32 1
  %21 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %20, align 8
  store %struct.dsp_spos_instance* %21, %struct.dsp_spos_instance** %16, align 8
  %22 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %16, align 8
  %23 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %22, i32 0, i32 0
  %24 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %23, align 8
  %25 = icmp ne %struct.dsp_scb_descriptor* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @snd_BUG_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %8, align 8
  br label %157

31:                                               ; preds = %7
  %32 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %16, align 8
  %33 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %32, i32 0, i32 0
  %34 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %33, align 8
  %35 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, 16
  %38 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %16, align 8
  %39 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %38, i32 0, i32 0
  %40 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %39, align 8
  %41 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %37, %42
  %44 = load i32*, i32** %11, align 8
  %45 = load i64, i64* @SCBsubListPtr, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* @SCBfuncEntryPtr, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, -65536
  store i32 %51, i32* %49, align 4
  %52 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %13, align 8
  %53 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i64, i64* @SCBfuncEntryPtr, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @snd_printdd(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %60)
  %62 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_scb(%struct.snd_cs46xx* %62, i8* %63, i32* %64, i32 %65)
  store %struct.dsp_scb_descriptor* %66, %struct.dsp_scb_descriptor** %17, align 8
  %67 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %16, align 8
  %68 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %67, i32 0, i32 0
  %69 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %68, align 8
  %70 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %71 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %70, i32 0, i32 2
  store %struct.dsp_scb_descriptor* %69, %struct.dsp_scb_descriptor** %71, align 8
  %72 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %16, align 8
  %73 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %72, i32 0, i32 0
  %74 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %73, align 8
  %75 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %76 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %75, i32 0, i32 3
  store %struct.dsp_scb_descriptor* %74, %struct.dsp_scb_descriptor** %76, align 8
  %77 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %14, align 8
  %78 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %79 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %78, i32 0, i32 1
  store %struct.dsp_scb_descriptor* %77, %struct.dsp_scb_descriptor** %79, align 8
  %80 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %13, align 8
  %81 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %82 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %81, i32 0, i32 5
  store %struct.dsp_symbol_entry* %80, %struct.dsp_symbol_entry** %82, align 8
  %83 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %84 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %83, i32 0, i32 1
  %85 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %84, align 8
  %86 = icmp ne %struct.dsp_scb_descriptor* %85, null
  br i1 %86, label %87, label %152

87:                                               ; preds = %31
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @SCB_ON_PARENT_NEXT_SCB, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %87
  %92 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %93 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %92, i32 0, i32 1
  %94 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %93, align 8
  %95 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %94, i32 0, i32 3
  %96 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %95, align 8
  %97 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %16, align 8
  %98 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %97, i32 0, i32 0
  %99 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %98, align 8
  %100 = icmp ne %struct.dsp_scb_descriptor* %96, %99
  %101 = zext i1 %100 to i32
  %102 = call i64 @snd_BUG_ON(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %8, align 8
  br label %157

105:                                              ; preds = %91
  %106 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %107 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %108 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %107, i32 0, i32 1
  %109 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %108, align 8
  %110 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %109, i32 0, i32 3
  store %struct.dsp_scb_descriptor* %106, %struct.dsp_scb_descriptor** %110, align 8
  br label %138

111:                                              ; preds = %87
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @SCB_ON_PARENT_SUBLIST_SCB, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %111
  %116 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %117 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %116, i32 0, i32 1
  %118 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %117, align 8
  %119 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %118, i32 0, i32 2
  %120 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %119, align 8
  %121 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %16, align 8
  %122 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %121, i32 0, i32 0
  %123 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %122, align 8
  %124 = icmp ne %struct.dsp_scb_descriptor* %120, %123
  %125 = zext i1 %124 to i32
  %126 = call i64 @snd_BUG_ON(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %8, align 8
  br label %157

129:                                              ; preds = %115
  %130 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %131 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %132 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %131, i32 0, i32 1
  %133 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %132, align 8
  %134 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %133, i32 0, i32 2
  store %struct.dsp_scb_descriptor* %130, %struct.dsp_scb_descriptor** %134, align 8
  br label %137

135:                                              ; preds = %111
  %136 = call i32 (...) @snd_BUG()
  br label %137

137:                                              ; preds = %135, %129
  br label %138

138:                                              ; preds = %137, %105
  %139 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %140 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %139, i32 0, i32 0
  %141 = load i64, i64* %18, align 8
  %142 = call i32 @spin_lock_irqsave(i32* %140, i64 %141)
  %143 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %144 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %145 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %144, i32 0, i32 1
  %146 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %145, align 8
  %147 = call i32 @cs46xx_dsp_spos_update_scb(%struct.snd_cs46xx* %143, %struct.dsp_scb_descriptor* %146)
  %148 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %149 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %148, i32 0, i32 0
  %150 = load i64, i64* %18, align 8
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i64 %150)
  br label %152

152:                                              ; preds = %138, %31
  %153 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %154 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %155 = call i32 @cs46xx_dsp_proc_register_scb_desc(%struct.snd_cs46xx* %153, %struct.dsp_scb_descriptor* %154)
  %156 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  store %struct.dsp_scb_descriptor* %156, %struct.dsp_scb_descriptor** %8, align 8
  br label %157

157:                                              ; preds = %152, %128, %104, %30
  %158 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  ret %struct.dsp_scb_descriptor* %158
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_printdd(i8*, i8*) #1

declare dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_scb(%struct.snd_cs46xx*, i8*, i32*, i32) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cs46xx_dsp_spos_update_scb(%struct.snd_cs46xx*, %struct.dsp_scb_descriptor*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cs46xx_dsp_proc_register_scb_desc(%struct.snd_cs46xx*, %struct.dsp_scb_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
